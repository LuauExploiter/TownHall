local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local function merge(t1, t2)
    for k, v in pairs(t2) do
        if type(v) == "table" then
            if type(t1[k] or false) == "table" then
                merge(t1[k] or {}, t2[k] or {})
            else
                t1[k] = v
            end
        else
            t1[k] = v
        end
    end
    return t1
end

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
function Utility:getMotorMap(char, opts)
    local map = {}
    local ignoreList = opts.IgnoreList or {}
    local ignoreInList = opts.IgnoreInList or {}
    local function isIgnored(inst)
        for _, v in ipairs(ignoreList) do if v == inst then return true end end
        for _, v in ipairs(ignoreInList) do if v == inst then return true end end
        return false
    end
    local function recurse(parent)
        for _, child in ipairs(parent:GetChildren()) do
            if child:IsA("Motor6D") and not isIgnored(child) then
                local p0 = child.Part0
                if p0 then
                    local key = p0.Name
                    if not map[key] then map[key] = {} end
                    if not map[key][child.Name] then map[key][child.Name] = {} end
                    table.insert(map[key][child.Name], child)
                end
            end
            recurse(child)
        end
    end
    recurse(char)
    return map
end
function Utility:getBoneMap(char, opts)
    local map = {}
    local function recurse(parent)
        for _, child in ipairs(parent:GetChildren()) do
            if child:IsA("Bone") then
                local parentName = child.Parent.Name
                if not map[parentName] then map[parentName] = {} end
                if not map[parentName][child.Name] then map[parentName][child.Name] = {} end
                table.insert(map[parentName][child.Name], child)
            end
            recurse(child)
        end
    end
    recurse(char)
    return map
end

local Animator = {}
local tinsert = table.insert
local format = string.format
local spawn = task.spawn
local wait = task.wait
local clock = os.clock
Animator.__index = Animator
Animator.ClassName = "Animator"

function Animator.new(Character, AnimationResolvable)
    if typeof(Character) ~= "Instance" then
        error(format("invalid argument 1 to 'new' (Instance expected, got %s)", typeof(Character)))
    end
    local self = setmetatable({
        AnimationData = {},
        BoneIgnoreInList = {},
        MotorIgnoreInList = {},
        BoneIgnoreList = {},
        MotorIgnoreList = {},
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
    local type = typeof(AnimationResolvable)
    local IsInstance = type == "Instance"
    local IsAnimation = IsInstance and AnimationResolvable.ClassName == "Animation"
    if IsAnimation or type == "string" or type == "number" then
        local id = tostring(IsAnimation and AnimationResolvable.AnimationId or AnimationResolvable):gsub("rbxassetid://", "")
        local keyframeSequence = game:GetObjects("rbxassetid://" .. id)[1]
        if not keyframeSequence or keyframeSequence.ClassName ~= "KeyframeSequence" then
            error("Invalid animation asset")
        end
        self.AnimationData = Parser:parseAnimationData(keyframeSequence)
    elseif type == "table" then
        self.AnimationData = AnimationResolvable
    elseif IsInstance and AnimationResolvable.ClassName == "KeyframeSequence" then
        self.AnimationData = Parser:parseAnimationData(AnimationResolvable)
    else
        error(format("invalid argument 2 to 'new' (number,string,table,Instance expected, got %s)", type))
    end
    self.Character = Character
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

function Animator:IgnoreMotor(inst)
    if typeof(inst) == "Instance" and inst.ClassName == "Motor6D" then
        tinsert(self.MotorIgnoreList, inst)
    end
end
function Animator:IgnoreBone(inst)
    if typeof(inst) == "Instance" and inst.ClassName == "Bone" then
        tinsert(self.BoneIgnoreList, inst)
    end
end
function Animator:IgnoreMotorIn(inst)
    if typeof(inst) == "Instance" then tinsert(self.MotorIgnoreInList, inst) end
end
function Animator:IgnoreBoneIn(inst)
    if typeof(inst) == "Instance" then tinsert(self.BoneIgnoreInList, inst) end
end

function Animator:_playPose(pose, parent, fade)
    if pose.Subpose then
        for count = 1, #pose.Subpose do
            self:_playPose(pose.Subpose[count], pose, fade)
        end
    end
    if not parent then return end
    local MotorMap = Utility:getMotorMap(self.Character, {IgnoreIn = self.MotorIgnoreInList, IgnoreList = self.MotorIgnoreList})
    local BoneMap = Utility:getBoneMap(self.Character, {IgnoreIn = self.BoneIgnoreInList, IgnoreList = self.BoneIgnoreList})
    local TI = TweenInfo.new(fade, pose.EasingStyle, pose.EasingDirection)
    local Target = {Transform = pose.CFrame}
    local M = MotorMap[parent.Name]
    local B = BoneMap[parent.Name]
    local C = {}
    if M then
        local MM = M[pose.Name] or {}
        C = merge(C, MM)
    end
    if B then
        local BB = B[pose.Name] or {}
        C = merge(C, BB)
    end
    for count = 1, #C do
        local obj = C[count]
        if self == nil or self._stopped then break end
        if fade > 0 then
            TweenService:Create(obj, TI, Target):Play()
        else
            obj.Transform = pose.CFrame
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
                    self:_playPose(p, nil, ft)
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
function PlayAnimation.Play(AnimationId, Speed)
    local id = tostring(AnimationId or ""):gsub("rbxassetid://", "")
    if id == "" then return end
    local player = Players.LocalPlayer
    if not player then return end
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end
    local ok, animInst = pcall(function()
        return Animator.new(character, tonumber(id))
    end)
    if not ok or not animInst then return warn("Failed to create Animator: " .. tostring(animInst)) end
    if Speed then animInst:AdjustSpeed(Speed) end
    animInst:Play(0.1)
    return animInst
end

return PlayAnimation
