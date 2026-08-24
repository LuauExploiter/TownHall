local TweenService = game:GetService("TweenService")

local Signal = {}
Signal.__index = Signal
function Signal.new()
    return setmetatable({_bindableEvent = Instance.new("BindableEvent")}, Signal)
end
function Signal:Fire(...)
    self._argData = {...}
    self._argCount = select("#", ...)
    self._bindableEvent:Fire()
end
function Signal:Connect(callback)
    return self._bindableEvent.Event:Connect(function()
        callback(unpack(self._argData, 1, self._argCount))
    end)
end
function Signal:Wait()
    self._bindableEvent:Wait()
    if self._argData then
        return unpack(self._argData, 1, self._argCount)
    end
end
function Signal:Disconnect()
    if self._bindableEvent then
        self._bindableEvent:Destroy()
        self._bindableEvent = nil
    end
end
Signal.Destroy = Signal.Disconnect

local Maid = {}
Maid.__index = Maid
function Maid.new()
    return setmetatable({_tasks = {}}, Maid)
end
function Maid:GiveTask(task)
    table.insert(self._tasks, task)
    return task
end
function Maid:DoCleaning()
    for _, task in ipairs(self._tasks) do
        pcall(function()
            if typeof(task) == "RBXScriptConnection" then
                task:Disconnect()
            elseif typeof(task) == "Instance" then
                task:Destroy()
            elseif type(task) == "function" then
                task()
            elseif type(task) == "table" and task.Destroy then
                task:Destroy()
            end
        end)
    end
    self._tasks = {}
end
Maid.Give = Maid.GiveTask

local Parser = {}
function Parser:parsePose(pose)
    local p = {
        Name = pose.Name,
        CFrame = pose.CFrame,
        EasingStyle = pose.EasingStyle,
        EasingDirection = pose.EasingDirection,
        Subpose = {}
    }
    for _, sub in ipairs(pose:GetSubPoses()) do
        table.insert(p.Subpose, self:parsePose(sub))
    end
    return p
end
function Parser:parseAnimationData(kfs)
    local data = {Loop = kfs.Loop, Frames = {}}
    for _, kf in ipairs(kfs:GetChildren()) do
        if kf:IsA("Keyframe") then
            local frameData = {Time = kf.Time, Name = kf.Name, Pose = {}, Marker = {}}
            for _, pose in ipairs(kf:GetPoses()) do
                table.insert(frameData.Pose, self:parsePose(pose))
            end
            for _, marker in ipairs(kf:GetMarkers()) do
                if not frameData.Marker[marker.Name] then frameData.Marker[marker.Name] = {} end
                table.insert(frameData.Marker[marker.Name], marker.Value)
            end
            table.insert(data.Frames, frameData)
        end
    end
    table.sort(data.Frames, function(a, b) return a.Time < b.Time end)
    return data
end

local Utility = {}
function Utility:GetJointMap(char)
    local map = {}
    for _, obj in ipairs(char:GetDescendants()) do
        if obj:IsA("Motor6D") then
            local p1 = obj.Part1
            if p1 then
                local key = p1.Name
                if not map[key] then map[key] = {} end
                table.insert(map[key], obj)
            end
        elseif obj:IsA("Bone") then
            local key = obj.Name
            if not map[key] then map[key] = {} end
            table.insert(map[key], obj)
        end
    end
    return map
end

local function GetEasingStyle(style)
    if typeof(style) == "EnumItem" then
        local name = style.Name
        if name == "Constant" then return Enum.EasingStyle.Linear end
        if name == "Quadratic" then return Enum.EasingStyle.Quad end
        local enum = Enum.EasingStyle[name]
        if enum then return enum end
    end
    return Enum.EasingStyle.Linear
end

local function GetEasingDirection(dir)
    if typeof(dir) == "EnumItem" then
        local enum = Enum.EasingDirection[dir.Name]
        if enum then return enum end
    end
    return Enum.EasingDirection.In
end

local Animator = {}
local tinsert = table.insert
local format = string.format
local spawn = task.spawn
local wait = task.wait
local clock = os.clock
Animator.__index = Animator
Animator.ClassName = "Animator"

function Animator.new(Character, KeyframeSequence)
    if typeof(Character) ~= "Instance" then
        error(format("invalid argument 1 to 'new' (Instance expected, got %s)", typeof(Character)))
    end
    if typeof(KeyframeSequence) ~= "Instance" or KeyframeSequence.ClassName ~= "KeyframeSequence" then
        error(format("invalid argument 2 to 'new' (KeyframeSequence expected, got %s)", typeof(KeyframeSequence)))
    end
    local self = setmetatable({
        AnimationData = {},
        handleVanillaAnimator = true,
        Character = nil,
        Looped = false,
        Length = 0,
        Speed = 1,
        IsPlaying = false,
        _stopFadeTime = 0.1,
        _playing = false,
        _stopped = false,
        _isLooping = false,
        _markerSignal = {},
    }, Animator)
    
    self.AnimationData = Parser:parseAnimationData(KeyframeSequence)
    self.Character = Character
    self.JointMap = Utility:GetJointMap(Character)
    self.Looped = self.AnimationData.Loop
    self.Length = self.AnimationData.Frames[#self.AnimationData.Frames].Time
    self._maid = Maid.new()
    self.DidLoop = Signal.new()
    self.Stopped = Signal.new()
    self.KeyframeReached = Signal.new()
    self._maid.DidLoop = self.DidLoop
    self._maid.Stopped = self.Stopped
    self._maid.KeyframeReached = self.KeyframeReached
    return self
end

function Animator:_playPose(pose, fade)
    if not pose then return end
    local joints = self.JointMap[pose.Name]
    if joints then
        local style = GetEasingStyle(pose.EasingStyle)
        local dir = GetEasingDirection(pose.EasingDirection)
        local TI = TweenInfo.new(fade, style, dir)
        local Target = {Transform = pose.CFrame}
        for _, joint in ipairs(joints) do
            if fade > 0 then
                TweenService:Create(joint, TI, Target):Play()
            else
                joint.Transform = pose.CFrame
            end
        end
    end
    if pose.Subpose then
        for _, subpose in ipairs(pose.Subpose) do
            self:_playPose(subpose, fade)
        end
    end
end

function Animator:Play(fadeTime, weight, speed)
    fadeTime = fadeTime or 0.1
    if not self.Character or self.Character.Parent == nil or (self._playing and not self._isLooping) then return end
    self._playing = true
    self._isLooping = false
    self.IsPlaying = true
    local deathConnection
    local noParentConnection
    do
        local Humanoid = self.Character:FindFirstChild("Humanoid")
        if Humanoid then
            deathConnection = Humanoid.Died:Connect(function()
                self:Destroy()
                deathConnection:Disconnect()
            end)
        end
        if self.handleVanillaAnimator then
            local AnimateScript = self.Character:FindFirstChild("Animate")
            if AnimateScript then AnimateScript.Disabled = true end
            if Humanoid then
                local characterAnimator = Humanoid:FindFirstChild("Animator")
                if characterAnimator then
                    for _, track in ipairs(characterAnimator:GetPlayingAnimationTracks()) do
                        track:Stop()
                    end
                    characterAnimator:Destroy()
                end
            end
        end
        noParentConnection = self.Character:GetPropertyChangedSignal("Parent"):Connect(function()
            if self ~= nil and self.Character.Parent ~= nil then return end
            self:Destroy()
            noParentConnection:Disconnect()
        end)
    end
    local start = clock()
    spawn(function()
        for i = 1, #self.AnimationData.Frames do
            if self._stopped then break end
            local f = self.AnimationData.Frames[i]
            local t = f.Time / (speed or self.Speed)
            if f.Name ~= "Keyframe" then
                self.KeyframeReached:Fire(f.Name)
            end
            if f["Marker"] then
                for k, v in next, f.Marker do
                    if not self._markerSignal[k] then continue end
                    for _, v2 in next, v do
                        self._markerSignal[k]:Fire(v2)
                    end
                end
            end
            if f.Pose then
                local Pose = f.Pose
                for count = 1, #Pose do
                    local p = Pose[count]
                    local ft = fadeTime
                    if i ~= 1 then
                        ft = (t * (speed or self.Speed) - self.AnimationData.Frames[i - 1].Time) / (speed or self.Speed)
                    end
                    self:_playPose(p, ft)
                end
            end
            if t > clock() - start then
                repeat
                    wait()
                until self._stopped or clock() - start >= t
            end
        end
        if deathConnection then deathConnection:Disconnect() deathConnection = nil end
        if noParentConnection then noParentConnection:Disconnect() noParentConnection = nil end
        if self.Looped and not self._stopped then
            self.DidLoop:Fire()
            self._isLooping = true
            return self:Play(fadeTime, weight, speed)
        end
        wait()
        if self.Character and self.handleVanillaAnimator then
            local Humanoid = self.Character:FindFirstChild("Humanoid")
            if Humanoid and not Humanoid:FindFirstChildOfClass("Animator") then
                Instance.new("Animator").Parent = Humanoid
            end
            local AnimateScript = self.Character:FindFirstChild("Animate")
            if AnimateScript and AnimateScript.Disabled then AnimateScript.Disabled = false end
        end
        self._stopped = false
        self._playing = false
        self.IsPlaying = false
        self.Stopped:Fire()
    end)
end

function Animator:GetTimeOfKeyframe(keyframeName)
    for count = 1, #self.AnimationData.Frames do
        if self.AnimationData.Frames[count].Name == keyframeName then
            return self.AnimationData.Frames[count].Time
        end
    end
    return 0
end

function Animator:GetMarkerReachedSignal(name)
    local signal = self._markerSignal[name]
    if not signal then
        signal = Signal.new()
        self._markerSignal[name] = signal
        self._maid["M_" .. name] = signal
    end
    return signal
end

function Animator:AdjustSpeed(speed) self.Speed = speed end
function Animator:Stop(fadeTime) self._stopFadeTime = fadeTime or 0.1 self._stopped = true end
function Animator:Destroy()
    if not self._stopped then
        self:Stop(0)
        self.Stopped:Wait()
    end
    self._maid:DoCleaning()
    setmetatable(self, nil)
end

local PlayAnimation = {}

function PlayAnimation.Play(Character, KeyframeSequence, Speed)
    if typeof(Character) ~= "Instance" or typeof(KeyframeSequence) ~= "Instance" then return nil end
    local ok, animInst = pcall(function()
        return Animator.new(Character, KeyframeSequence)
    end)
    if not ok or not animInst then return nil end
    if Speed then animInst:AdjustSpeed(Speed) end
    animInst:Play(0.1)
    return animInst
end

return PlayAnimation
