-- Script Path: game:GetService("ReplicatedStorage").Emotes.VFX
-- Took 1.48s to decompile.
-- Executor: Delta (1.0.729.838)

-- https://lua.expert/
local RealAssets = script.RealAssets
local TweenService = game:GetService("TweenService")
local v1 = game:GetService("RunService"):IsClient()
local v2 = RaycastParams.new()

v2.FilterType = Enum.RaycastFilterType.Include
v2.FilterDescendantsInstances = { workspace.Map, workspace.Built }

local t = {}
local t2 = {
    Cam = { 112471633691073, 92872400083350 },
    CamEntire = { 81703661217800 },
    CamEzee = { 103566103210307 },
    CamRig = { 137845184446346 },
    CamRigNy = { 123321332402974 },
    CamRigWithLetterBox = { 103941810523228 },
    CamRigWithLetterBox3 = { 126468024889342 },
    CamRigWithLetterBox4 = { 105254849512612 },
    CamRigWithLetterBoxNewYer = { 125516476904316 },
    CamRigWithLetterBoxMech = { 85186887257470 },
    CameraFunny = { 124958014257711 },
    CameraRigBeast = { 96912364616540 },
    CameraRigVegetable = { 100366125413969 },
    CameraRigK = { 123782653232583 },
    EmergeCamera = { 97448479871185 },
    camOhio = { 99684244248954 },
    cambreath = { 84807030759844 },
    CamRigDook = { 77272264662660 },
    fx_CAM = { 71237135972087 },
    kakashicamrig = { 89179955166459 }
}

for k, v in pairs(script.VfxMods:GetChildren()) do
    if v:IsA("ModuleScript") then
        t[tostring(v)] = require(v)
    end
end

task.delay(10, function() --[[ Line: 123 | Upvalues: v1 (copy), t2 (copy) ]]
    if not v1 then
        return
    end

    warn("g")

    local t = {}

    for k, v in pairs(t2) do
        local v12 = script.Assets:FindFirstChild(k)
        local v2 = if v12 then v12:FindFirstChildOfClass("AnimationController") else v12

        if v2 then
            for i, v3 in ipairs(v) do
                local Animation = Instance.new("Animation")

                Animation.AnimationId = "rbxassetid://" .. v3
                game.Debris:AddItem(Animation, 8)

                local v32 = v2:LoadAnimation(Animation)

                v32:Play(0, 1, 1)
                v32.TimePosition = 0.01
                t[#t + 1] = v32
                task.wait(0.5)
            end
        end
    end

    task.delay(0.25, function() --[[ Line: 147 | Upvalues: t (copy) ]]
        for i, v in ipairs(t) do
            if v and v.IsPlaying then
                v:Stop(0.001)
            end
        end
    end)
end)
function shared.NerfVfx(p1) --[[ Line: 159 ]]
    local isCharacter = p1.Char == game.Players.LocalPlayer.Character
    local v1 = p1.RateNerf or 1.5
    local v2 = p1.EmitCountNerf or 1.5
    local v3 = true
    local Script = p1.Script

    if Script:GetAttribute("RateNerf") then
        v1 = Script:GetAttribute("RateNerf")
    end

    if Script:GetAttribute("EmitCountNerf") then
        v2 = Script:GetAttribute("EmitCountNerf")
    end

    if Script:GetAttribute("DidNerf") then
        Script:SetAttribute("DidNerf", false)
        v3 = false
    else
        if isCharacter then
            return
        end

        Script:SetAttribute("DidNerf", true)
    end

    for k, v in pairs(Script:GetDescendants()) do
        if v:IsA("ParticleEmitter") then
            if v3 then
                v.Rate = v.Rate / v1

                if v:GetAttribute("EmitCount") and (typeof(v:GetAttribute("EmitCount")) == "number" and v:GetAttribute("EmitCount") / v2 > 0) then
                    v:SetAttribute("EmitCount", v:GetAttribute("EmitCount") / v2)
                end

                continue
            end

            v.Rate = v.Rate * v1

            if v:GetAttribute("EmitCount") and typeof(v:GetAttribute("EmitCount")) == "number" then
                v:SetAttribute("EmitCount", v:GetAttribute("EmitCount") * v2)
            end
        end
    end
end

if v1 then
    for k, v in pairs({
        Boundless = {
            RateNerf = 2.5,
            EmitCountNerf = 2.5
        },
        FS = {
            RateNerf = 2.15,
            EmitCountNerf = 2.5
        },
        Evolved = {
            RateNerf = 1.75,
            EmitCountNerf = 1.75
        },
        Flasher = {
            RateNerf = 2,
            EmitCountNerf = 2
        },
        Emerge = {
            RateNerf = 2,
            EmitCountNerf = 2
        },
        Electric = {
            RateNerf = 3,
            EmitCountNerf = 3
        },
        LifeformVfx = {
            RateNerf = 2,
            EmitCountNerf = 2
        },
        TrueRage = {
            RateNerf = 4,
            EmitCountNerf = 4
        }
    }) do
        local v3 = script.VfxMods[tostring(k)]

        v3:SetAttribute("RateNerf", v.RateNerf)
        v3:SetAttribute("EmitCountNerf", v.EmitCountNerf)
    end
end

local function f4(p1, p2) --[[ Line: 249 ]]
    for k, v in pairs(p1:GetChildren()) do
        if tostring(v) == tostring(p2) then
            return v
        end
    end
end

local function f5(p1, p2, p3) --[[ Line: 257 ]]
    for k, v in pairs(p1) do
        if v == game.Players.LocalPlayer.Character then
            shared.repfire({
                Effect = "Camshake",
                Intensity = p2,
                Last = p3 or nil
            })

            return
        end
    end
end

function shared.smoothout(p1) --[[ Line: 284 | Upvalues: TweenService (copy) ]]
    local CurrentCamera = workspace.CurrentCamera

    if not p1 then
        p1 = CurrentCamera.CFrame
    end

    local t = {
        Timeduration = 1,
        EasingStyle = Enum.EasingStyle.Exponential,
        EasingDirection = Enum.EasingDirection.Out
    }

    tick()

    local v1 = os.clock()

    game:GetService("RunService"):BindToRenderStep("CutsceneCameraSmoothOut" .. v1, Enum.RenderPriority.Camera.Value, function() --[[ Line: 302 | Upvalues: CurrentCamera (copy), v1 (copy), p1 (ref), TweenService (ref), t (copy) ]]
        local v12 = CurrentCamera.CFrame
        local v2 = (os.clock() - v1) / 0.55

        if v2 >= 1.1 then
            game:GetService("RunService"):UnbindFromRenderStep("CutsceneCameraSmoothOut" .. v1)
        else
            CurrentCamera.CFrame = p1:Lerp(v12, TweenService:GetValue(v2, t.EasingStyle, t.EasingDirection))
        end
    end)

    local Custom = Enum.CameraType.Custom

    if shared.isconsole or shared.ismobile then
        Custom = Enum.CameraType.Track
    end

    local Humanoid = game.Players.LocalPlayer.Character.Humanoid

    CurrentCamera.CameraType = Custom
    CurrentCamera.CameraSubject = Humanoid
    print(CurrentCamera.CameraType)
    shared.SetCore(true, nil, true)
end

local function f6(p1, p2) --[[ Line: 329 | Upvalues: TweenService (copy) ]]
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local RunService = game:GetService("RunService")

    if p1.Char == LocalPlayer.Character then
        p1.ForOthers = nil
    else
        local v1 = nil

        for k, v in pairs(p1) do
            if v == LocalPlayer.Character then
                v1 = true

                break
            end
        end

        if v1 then
            p1.ForOthers = nil
        end
    end

    if not p1.Char or p1.Force then
        p1.Char = LocalPlayer.Character
    end

    if p1.EmoteCall and LocalPlayer.Character ~= p1.Char then
        return
    end

    local FindPart = p1.FindPart
    local v2 = nil
    local v3

    if FindPart then
        local v4 = nil

        local function f5() --[[ Line: 360 | Upvalues: p1 (copy), FindPart (ref), v2 (ref), v4 (ref) ]]
            for k, v in pairs(p1.Char.PrimaryPart:GetChildren()) do
                if v:IsA("Part") and (tostring(v) == FindPart and not v:GetAttribute("Done")) then
                    v:SetAttribute("Done", true)
                    v:SetAttribute("Custom2V1CAM", true)
                    v2 = v
                    v4 = v

                    return
                end
            end
        end

        local v6 = tick()

        repeat
            task.wait()
            f5()
        until tick() - v6 >= 0.15 or v4 ~= nil

        if not v4 then
            return
        end

        local v7 = v4

        table.insert(p2, v7)
        FindPart = v4
        v3 = v4
        v2 = v4
    else
        v3 = nil
    end

    local Bind = p1.Bind
    local v8 = Bind ~= nil

    if p1.StopOthers then
        local StopOthers = Instance.new("Accessory")

        StopOthers.Name = "StopOthers"
        StopOthers:SetAttribute("customstop", p1.customstop or nil)
        StopOthers.Parent = LocalPlayer.Character
        game.Debris:AddItem(StopOthers, 1)
    end

    local UserChar = p1.UserChar
    local Character = LocalPlayer.Character

    Character:SetAttribute("Ticker", (math.random(1, 100000)))

    local ForceAco = p1.ForceAco

    if not FindPart and p1.SpecificRig then
        v3 = p1.SpecificRig:Clone()

        if p1.ActualPart and v3:IsA("Model") then
            v2 = v3[p1.ActualPart]
        end
    elseif not FindPart then
        v3 = script.Assets.CamRigWithLetterBox:Clone()
        v2 = v3.camera
    end

    local CurrentCamera = workspace.CurrentCamera

    if not FindPart then
        v3.Parent = p1.Char

        if v3:IsA("Model") then
            v3:SetAttribute("CameraModel", true)

            if p1.From then
                v3:SetPrimaryPartCFrame(p1.From.CFrame * p1.Offset)
            else
                v3:SetPrimaryPartCFrame(p1.SpoofedCFrame * p1.Offset)
            end
        end
    end

    if p2 then
        table.insert(p2, v3)
    end

    local v9 = p1.Fov or p1.FOV
    local v10 = nil

    if v9 then
        for k, v in pairs(CurrentCamera:GetChildren()) do
            if tostring(v) == "FieldOfView" then
                v:Destroy()
            end
        end

        if v9:IsA("ModuleScript") then
            v10 = require(v9)
        else
            local FieldOfView = v9:Clone()

            FieldOfView.Name = "FieldOfView"
            FieldOfView.Parent = v3
        end
    end

    local v11 = if p1.deletiontime then p1.deletiontime else 32

    game:GetService("CollectionService"):AddTag(v3, (p1.Id or "camwork_") .. p1.Char.Name)
    game.Debris:AddItem(v3, v11)

    local v12 = nil
    local v13 = nil
    local v14 = nil
    local v15 = false

    (function() --[[ Line: 479 | Upvalues: p1 (copy), v12 (ref) ]]
        for k, v in pairs(script.prels:GetChildren()) do
            if v.AnimationId == p1.Anim then
                v12 = v

                return
            end
        end
    end)()

    if not FindPart then
        if not v12 and p1.Anim then
            v12 = Instance.new("Animation")
            game.Debris:AddItem(v12, v11)
            v12.AnimationId = "rbxassetid://" .. p1.Anim
        end

        if v3:IsA("Model") then
            if p1.SpoofedCFrame then
                v3.PrimaryPart.Anchored = true
                v3:PivotTo(p1.SpoofedCFrame * p1.Offset)
                task.delay(1, function() --[[ Line: 503 | Upvalues: v3 (ref), v15 (ref) ]]
                    if not (v3 and v3.Parent) then
                        return
                    end

                    v15 = v3:GetPivot()
                end)
            else
                v14 = Instance.new("Weld")
                v14.Parent = v3
                v14.Part0 = p1.From
                v14.Part1 = v3.PrimaryPart
                v14.C0 = p1.Offset
            end

            local AnimationController = v3:FindFirstChildOfClass("AnimationController")
            local Humanoid = v3:FindFirstChildOfClass("Humanoid")

            if not AnimationController and Humanoid then
                AnimationController = Humanoid
            end

            v13 = AnimationController:LoadAnimation(v12)
            v13.Looped = false

            for k, v in pairs(AnimationController:GetPlayingAnimationTracks()) do
                v:Stop(0)
            end
        elseif v12 and v12.Parent then
            v12:Destroy()
        end
    end

    local v16 = nil

    if p1.UseCFrameEventually then
        task.delay(p1.CFrameUsageTime or 5, function() --[[ Line: 532 | Upvalues: p1 (copy), v14 (ref), v3 (ref) ]]
            p1.SpoofedCFrame = p1.From.CFrame
            p1.From = nil

            if not (v14 and v14.Parent) then
                v3.PrimaryPart.Anchored = true
                v3:PivotTo(p1.SpoofedCFrame * p1.Offset)

                return
            end

            v14:Destroy()
            v3.PrimaryPart.Anchored = true
            v3:PivotTo(p1.SpoofedCFrame * p1.Offset)
        end)
    end

    local v17 = Instance.new("NumberValue")

    game.Debris:AddItem(v17, v11)
    v17.Value = 0.1
    TweenService:Create(v17, TweenInfo.new(p1.LerpTime or 3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
        Value = 0.5
    }):Play()

    if p1.preload then
        if not game.Players.LocalPlayer.Character:WaitForChild("cutscenefire", 15) then
            return
        end

        if p1.customdata == "portal" then
            local guide = p1.guide

            if guide and guide.Parent then
                task.delay(1.5, function() --[[ Line: 565 | Upvalues: guide (copy), p1 (copy) ]]
                    task.spawn(function() --[[ Line: 566 | Upvalues: guide (ref), p1 (ref) ]]
                        for i = 1, 35 do
                            guide:PivotTo(p1.From.CFrame * CFrame.new(0, -3, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1))
                            task.wait()
                        end
                    end)
                end)
            end
        end
    end

    shared.SetCore(false, 3)

    local NoRotate = Instance.new("Accessory")

    NoRotate.Name = "NoRotate"
    NoRotate.Parent = p1.Char
    game.Debris:AddItem(NoRotate, 35)

    if p2 then
        table.insert(p2, NoRotate)
    end

    local v18 = false
    local CameraSubject = CurrentCamera.CameraSubject
    local v19 = Character:GetAttribute("CloneOwner")
    local v20 = CurrentCamera.CFrame

    local function v21(p12, p2) --[[ Line: 594 | Upvalues: v18 (ref), v20 (ref), CurrentCamera (copy), p1 (copy), LocalPlayer (copy), v16 (ref), Character (copy), NoRotate (copy), v17 (copy), v3 (ref), v21 (ref), CameraSubject (ref), v19 (copy), RunService (copy), TweenService (ref) ]]
        if v18 then
            return
        end

        v20 = CurrentCamera.CFrame

        if p1.ForOthers then
            return
        end

        local CameraSmoothTransition = LocalPlayer.Character:FindFirstChild("CameraSmoothTransition")

        if v16 then
            v16:Disconnect()
        end

        v18 = true

        local v1 = not (p2 and p2.specialcall)
        local StopOthers = Character:FindFirstChild("StopOthers")

        if StopOthers and not (StopOthers:GetAttribute("customstop") or StopOthers:GetAttribute("ultimateforce")) then
            v1 = false
        end

        if p1.dontfix and v1 or StopOthers and StopOthers:GetAttribute("ultimateforce") then
            workspace.CurrentCamera.FieldOfView = game.Players.LocalPlayer:GetAttribute("S_FOV") or 70

            if NoRotate then
                NoRotate:Destroy()
            end

            for k, v in pairs({ v17, v3 }) do
                if v and v.Parent then
                    v:Destroy()
                end
            end

            if StopOthers and StopOthers:GetAttribute("ultimateforce") then
                StopOthers:Destroy()
                v18 = true
                CurrentCamera.CameraType = Enum.CameraType.Custom
                CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                CurrentCamera.FieldOfView = game.Players.LocalPlayer:GetAttribute("S_FOV") or 70
                shared.SetCore(true, 3)
            else
                task.delay(0.2, function() --[[ Line: 645 | Upvalues: LocalPlayer (ref), v18 (ref), p1 (ref), v21 (ref) ]]
                    local v1 = workspace.CurrentCamera.CFrame

                    task.wait(0.75)

                    if workspace.CurrentCamera.CFrame ~= v1 or (workspace.CurrentCamera.CameraType ~= Enum.CameraType.Scriptable or (LocalPlayer.Character:FindFirstChild("RootAnchor") or LocalPlayer.Character:FindFirstChild("Freeze"))) then
                        return
                    end

                    v18 = false
                    p1.dontfix = false
                    p1.smooth = false
                    p1.smoothin = false
                    v21()
                end)
            end
        elseif p1.pauseothers then
            Character:SetAttribute("PausedCutscene", nil)

            if NoRotate then
                NoRotate:Destroy()
            end

            for k, v in pairs({ v17, v3 }) do
                if v and v.Parent then
                    v:Destroy()
                end
            end
        else
            if not LocalPlayer:FindFirstChild("SkippedEmote") then
                task.spawn(function() --[[ Line: 679 | Upvalues: Character (ref), CurrentCamera (ref) ]]
                    local StopCutsceneFire = Character:FindFirstChild("StopCutsceneFire")
                    local v1 = if StopCutsceneFire then tonumber(StopCutsceneFire:GetAttribute("CoreDelay")) else 0

                    CurrentCamera.FieldOfView = game.Players.LocalPlayer:GetAttribute("S_FOV") or 70
                    task.delay(v1, function() --[[ Line: 688 ]]
                        shared.SetCore(true, 3)
                    end)

                    local function f3() --[[ Line: 692 | Upvalues: Character (ref) ]]
                        if Character:FindFirstChild("Freeze") then
                            return
                        end

                        return true
                    end

                    if not f3 then
                        return
                    end

                    local v4 = tick()

                    repeat
                        task.wait()

                        if f3 then
                            workspace.CurrentCamera.FieldOfView = game.Players.LocalPlayer:GetAttribute("S_FOV") or 70
                        end

                        if workspace.CurrentCamera.FieldOfView == 70 then
                            break
                        end

                        local v5 = if Character:FindFirstChild("Freeze") then nil else true
                    until not v5 or tick() - v4 >= 0.1
                end)

                local Anim = p1.Anim

                if tostring(Anim) == "112471633691073" and p1.Char == LocalPlayer.Character then
                    for k, v in pairs(p1.Char.Humanoid:GetPlayingAnimationTracks()) do
                        if v.Animation.AnimationId == "rbxassetid://107649573628906" then
                            v:Play(0)
                            v:Stop(0)
                        end
                    end
                end

                NoRotate:Destroy()

                local Custom = Enum.CameraType.Custom

                if shared.isconsole or shared.ismobile then
                    Custom = Enum.CameraType.Track
                end

                local NoSmoothTransition = Character:FindFirstChild("NoSmoothTransition")

                if (p1.smooth or CameraSmoothTransition) and (not NoSmoothTransition and p1.Char == LocalPlayer.Character) then
                    if CameraSmoothTransition then
                        CameraSmoothTransition:Destroy("")
                    end

                    if Character:GetAttribute("CloneOwner") then
                        local v2 = nil

                        for k, v in pairs(workspace.Live:GetChildren()) do
                            if v.Name == Character:GetAttribute("CloneOwner") then
                                v2 = v
                                CameraSubject = v.Torso

                                break
                            end
                        end

                        if v2 and v2:GetAttribute("TooSlow") then
                            return
                        end
                    end

                    if v19 and Character:GetAttribute("Old") == v19 then
                        return
                    end

                    if not (p1.CutsceneBind or p1.DontDestroy) then
                        for k, v in pairs({ v17, v3 }) do
                            if v and v.Parent then
                                v:Destroy()
                            end
                        end
                    end

                    local t = {
                        Timeduration = 1,
                        EasingStyle = Enum.EasingStyle.Exponential,
                        EasingDirection = Enum.EasingDirection.Out
                    }
                    local v32 = os.clock()
                    local v4 = false
                    local v5 = CurrentCamera.CFrame
                    local v6 = false

                    RunService:BindToRenderStep("CutsceneCameraSmoothOut" .. v32, Enum.RenderPriority.Camera.Value, function() --[[ Line: 791 | Upvalues: CurrentCamera (ref), v32 (copy), p1 (ref), v5 (copy), v4 (ref), v6 (ref), RunService (ref), v20 (ref), TweenService (ref), t (copy) ]]
                        local v1 = CurrentCamera.CFrame
                        local v2 = (os.clock() - v32) / (p1.smoothtime or 0.6)

                        if math.abs((math.deg((math.acos((math.clamp(v1.LookVector:Dot(v5.LookVector), -1, 1))))))) > 1.75 then
                            v4 = true
                        end

                        if v4 or v6 and CurrentCamera.CameraType == Enum.CameraType.Scriptable then
                            RunService:UnbindFromRenderStep("CutsceneCameraSmoothOut" .. v32)

                            return
                        end

                        if v2 >= 1 then
                            RunService:UnbindFromRenderStep("CutsceneCameraSmoothOut" .. v32)
                        else
                            CurrentCamera.CFrame = v20:Lerp(v1, TweenService:GetValue(v2, t.EasingStyle, t.EasingDirection))
                        end
                    end)
                    CurrentCamera.CameraType = Custom
                    CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                    v6 = true

                    local StopCutsceneFire = p1.Char:FindFirstChild("StopCutsceneFire")
                    local v7 = if StopCutsceneFire then tonumber(StopCutsceneFire:GetAttribute("CoreDelay")) else nil

                    if not v7 then
                        shared.SetCore(true, nil, true)

                        return
                    end

                    task.wait(v7)
                    shared.SetCore(true, nil, true)

                    return
                end

                if Character:GetAttribute("CloneOwner") then
                    local v9 = nil

                    for k, v in pairs(workspace.Live:GetChildren()) do
                        if v.Name == Character:GetAttribute("CloneOwner") then
                            v9 = v
                            CameraSubject = v.Torso

                            break
                        end
                    end

                    if v9 and v9:GetAttribute("TooSlow") then
                        return
                    end
                end

                if v19 and Character:GetAttribute("Old") == v19 then
                    return
                end

                CurrentCamera.CameraType = Custom
                CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
            end

            if not (p1.CutsceneBind or p1.DontDestroy) then
                for k, v in pairs({ v17, v3 }) do
                    if v and v.Parent then
                        v:Destroy()
                    end
                end
            end

            shared.SetCore(true, nil, true)
        end
    end

    local v22 = tick()
    local v23 = 0

    if v13 and p1.notinstant then
        v13:Play()
    elseif v13 then
        v13:Play(0)
    end

    if p1.synchronise then
        task.delay(0.5, function() --[[ Line: 882 | Upvalues: p1 (copy), v13 (ref) ]]
            if p1.TimePosition then
                v13.TimePosition = p1.TimePosition + 0.5
            else
                v13.TimePosition = 0.5
            end
        end)
    end

    if p1.TimePosition then
        v13.TimePosition = p1.TimePosition
    end

    local v24 = if p1.portal then script.Fovs.CoscFOV else nil

    if p1.CustomSpeed then
        v13:AdjustSpeed(p1.CustomSpeed)
    end

    local v25 = false

    if p1.SpecificStart then
        v23 = p1.SpecificStart
        ForceAco = true
    end

    local v26 = tick()
    local v27 = false
    local v28 = nil

    if not v3:GetAttribute("AnimSpeedAdjustment") then
        v3:SetAttribute("AnimSpeedAdjustment", 1)
    end

    if p1.CustomSpeed then
        v3:SetAttribute("AnimSpeedAdjustment", p1.CustomSpeed)
    end

    if p1.EmberDelay then
        task.delay(3, function() --[[ Line: 928 | Upvalues: v13 (ref) ]]
            v13:AdjustSpeed(0.8)
        end)
    end

    local v29 = v3:GetAttribute("AnimSpeedAdjustment")

    for k, v in pairs(v3:GetDescendants()) do
        if v:IsA("BasePart") then
            v.Transparency = 1
        end
    end

    if not p1.ForOthers then
        workspace.Camera:SetAttribute("paused", false)
    end

    local v30 = if UserChar then UserChar:FindFirstChild("DoingEmote") else nil
    local v31 = nil
    local v32 = false
    local v33 = p1.Name

    if v33 and not LocalPlayer.Character:FindFirstChild("DelayRespawn") then
        v33 = nil

        for k, v in pairs(LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
            if v.Animation.AnimationId == "rbxassetid://113450724032380" then
                v31 = v
                v32 = true

                break
            end
        end
    end

    if p1.NoLerpFast then
        task.delay(p1.NoLerpFast, function() --[[ Line: 966 | Upvalues: p1 (copy) ]]
            p1.NoLerp = true

            if not p1.Relerp then
                return
            end

            task.delay(0.5, function() --[[ Line: 969 | Upvalues: p1 (ref) ]]
                p1.NoLerp = false
            end)
        end)
    end

    local Subject = p1.Subject
    local v34 = nil

    if Subject then
        if typeof(Subject) == "string" then
            local v35 = v3:FindFirstChild(Subject)

            if v35 then
                v34 = v35
            end
        end

        if not v34 then
            v34 = v2
        end

        CurrentCamera.CameraSubject = v34
    end

    local v36 = os.clock()
    local v37 = CurrentCamera.CFrame
    local v38 = CFrame.new()

    if p1.ManualOffset and v3:FindFirstChild("ManualFrames") then
        local SpecificStart = p1.SpecificStart
        local ManualFrames = v3.ManualFrames
        local v39

        if ManualFrames:IsA("ModuleScript") then
            v39 = require(ManualFrames)[math.ceil(SpecificStart)]
        else
            local v41 = ManualFrames:FindFirstChild((tostring((math.ceil(SpecificStart)))))

            v39 = v41 and v41.Value
        end

        if v39 then
            v38 = v39:Inverse()
        end
    end

    local v43 = if p1.FirstCFrame then p1.Char.PrimaryPart.CFrame else nil
    local pauseothers = p1.pauseothers

    if pauseothers then
        Character:SetAttribute("PausedCutscene", true)
    end

    local v44 = false

    if p1.stoptime then
        task.delay(p1.stoptime, function() --[[ Line: 1023 | Upvalues: v21 (ref) ]]
            return v21()
        end)
    end

    local ManualFrames = v3:FindFirstChild("ManualFrames")
    local v45

    if ManualFrames and ManualFrames:IsA("ModuleScript") then
        v45 = require(ManualFrames)
        ManualFrames = nil
    else
        v45 = nil
    end

    local v46 = v3:FindFirstChild("FieldOfView") or v3:FindFirstChild("FOV")

    if v46 and v46:IsA("ModuleScript") then
        v10 = v10 or require(v46)
        v46 = nil
    end

    v16 = RunService.RenderStepped:Connect(function(p12) --[[ Line: 1040 | Upvalues: Character (copy), pauseothers (copy), v44 (ref), p1 (copy), v13 (ref), v29 (ref), v18 (ref), v16 (ref), LocalPlayer (copy), v21 (ref), v32 (ref), v31 (ref), v33 (ref), v30 (ref), UserChar (copy), v8 (ref), Bind (copy), v2 (ref), ForceAco (ref), CurrentCamera (copy), v34 (ref), v3 (ref), v23 (ref), v15 (ref), v10 (ref), v46 (ref), v24 (ref), v22 (copy), v27 (ref), v28 (ref), v17 (copy), ManualFrames (ref), v45 (ref), v25 (ref), v43 (ref), v38 (ref), v26 (copy), v36 (copy), v37 (copy), TweenService (ref) ]]
        if Character:GetAttribute("PausedCutscene") and not pauseothers then
            if v44 then
                return
            end

            if not p1.keepcutscenemoving then
                v13:AdjustSpeed(0)
            end

            v44 = true
        else
            if v44 then
                v13:AdjustSpeed(v29 or 1)
                v44 = false
            end

            if v18 then
                return v16:Disconnect()
            end

            if p1.ForOthers then
                return v16:Disconnect()
            end

            local Character2 = LocalPlayer.Character
            local v1 = if Character2 then Character2:FindFirstChild("StopOthers") else Character2

            if v1 and v1:GetAttribute("customstop") then
                v1 = nil
            end

            if v1 and v1:GetAttribute("ultimateforce") then
                return v21(nil, {
                    specialcall = true
                })
            end

            if Character2 and Character2:FindFirstChild("Ragdoll") then
                return v21(nil, {
                    specialcall = true
                })
            end

            if v1 and not p1.StopOthers then
                return v21(nil, {
                    specialcall = true
                })
            end

            if not Character or (not Character.Parent or Character:FindFirstChild("CancelEmote")) then
                v21()

                return v16:Disconnect()
            end

            if v32 and not (v31 and v31.IsPlaying) then
                v21(nil, {
                    specialcall = true
                })

                return v16:Disconnect()
            end

            if v33 and (v33 == "Last Will" and (Character2 and not Character2:FindFirstChild("DelayRespawn"))) then
                v21()

                return v16:Disconnect()
            end

            if not (Character2 and Character2.Parent) then
                v21(nil, {
                    specialcall = true
                })

                return v16:Disconnect()
            end

            if workspace:FindFirstChild("CancelCutscene") then
                v21()

                return v16:Disconnect()
            end

            if v30 and (UserChar and (UserChar:FindFirstChild("CancelEmote2") or UserChar:FindFirstChild("CancelEmote"))) then
                v21()

                return v16:Disconnect()
            end

            local v210 = workspace.Camera:GetAttribute("Paused")

            if v210 and workspace:FindFirstChild("ForceStopCutscenes") then
                v21()

                return
            end

            if v8 and (not Bind or (not Bind.Parent or Bind.Parent and Bind:GetAttribute("ForceDestroy"))) then
                v16:Disconnect()

                return v21()
            end

            if v210 or (v18 or Character:FindFirstChild("Distorting")) then
                return
            end

            if not (v2 and (v2.Parent or ForceAco) or ForceAco) then
                v16:Disconnect()

                return v21()
            end

            if p1.Subject and CurrentCamera.CameraSubject ~= v34 then
                CurrentCamera.CameraSubject = v34
            end

            local v35 = v3:GetAttribute("AnimSpeedAdjustment")

            if v35 ~= v29 then
                v29 = v35
                v13:AdjustSpeed(v35)
            end

            v23 = v23 + p12 * 60

            local v4 = if p1.Time then math.ceil(v13.TimePosition * 60) else math.ceil(v23)
            local v9 = Vector3.new(0, 0, 0)

            if v3:IsA("Model") and (not v3.Parent or (v3:GetAttribute("ForceDestroy") or p1.AnimSent and not p1.AnimSent.IsPlaying)) then
                v16:Disconnect()

                return v21()
            end

            if p1.CFrameRetain and v2.CFrame ~= v15 and typeof(v15) == "CFrame" then
                v3:PivotTo(v15)
            end

            if shared.currenttopbar and shared.currenttopbar.b ~= false then
                shared.SetCore(false, 3)
            end

            local v11 = v10 or (if v46 and v46.Parent then v46 or nil else nil)

            if not v11 and v24 then
                v11 = if typeof(v24) == "Instance" and v24:IsA("ModuleScript") then require(v24) else v24
            end

            if p1.NoFov then
                v11 = false
            end

            if p1.StopFOVAfter and tick() - v22 > p1.StopFOVAfter then
                v11 = nil
            end

            if p1.SlowAfter and (tick() - v22 > p1.SlowAfter and not v27) then
                v27 = true
                v13:AdjustSpeed(0.1)
                v28 = true
            end

            if p1.EnableShakeAfter and tick() - v22 > p1.EnableShakeAfter then
                local v14 = shared.shakes or { 0, 0, 0 }
                local v182 = Vector3.new(v14[1], v14[2], v14[3])

                v17.Value = 1 - 2.5e-7 ^ p12
                v9 = v182
            end

            if ManualFrames and ManualFrames.Parent or v45 then
                local v19, v20

                if v45 then
                    v19 = v45[math.ceil(v23)]
                    v20 = if v19 == nil then nil else 1
                else
                    local v242 = ManualFrames:FindFirstChild((math.ceil(v23))) and v242.Value

                    v20 = v242
                    v19 = v242
                end

                if v20 then
                    v25 = true

                    if p1.ManualOffset then
                        local v252 = p1.Char.PrimaryPart.CFrame

                        if p1.UseCFrame then
                            v252 = p1.UseCFrame
                        end

                        if p1.FirstCFrame and v43 then
                            v252 = v43
                        end

                        CurrentCamera.CFrame = v252 * (p1.ManualOffset or CFrame.new()) * v38 * v19
                    else
                        CurrentCamera.CFrame = p1.Char.PrimaryPart.CFrame * v19
                    end

                    if CurrentCamera.CameraType ~= Enum.CameraType.Scriptable then
                        CurrentCamera.CameraType = Enum.CameraType.Scriptable
                    end
                end

                if not v20 and v25 or Character2 and Character2:FindFirstChild("stoprncam") then
                    v21()
                end
            else
                if CurrentCamera.CameraType ~= Enum.CameraType.Scriptable then
                    CurrentCamera.CameraType = Enum.CameraType.Scriptable
                end

                if p1.basic then
                    if tick() - v26 >= 0.25 then
                        CurrentCamera.CFrame = v2.CFrame + v9
                    else
                        CurrentCamera.CFrame = CurrentCamera.CFrame:Lerp(v2.CFrame, 1 - 0.00001 ^ p12)
                    end
                else
                    local v282

                    if p1.NoLerp then
                        v282 = not v28
                    else
                        v282 = p1.NoLerpAfter

                        if v282 then
                            v282 = if v17.Value == 0.5 then not v28 else false
                        end
                    end

                    if p1.LerpAfter and v17.Value == 0.5 then
                        v282 = false
                    end

                    if v282 then
                        CurrentCamera.CFrame = v2.CFrame + v9
                    else
                        local v302 = v2.CFrame + v9

                        if v28 then
                            if v28 == true then
                                v28 = CFrame.lookAlong(v302.Position, v302.LookVector * Vector3.new(1, 0, 1))
                            end

                            if v28 ~= true then
                                v302 = v302 - v28.lookVector * 35 + Vector3.new(0, 7, 0)
                            end
                        end

                        CurrentCamera.CFrame = CurrentCamera.CFrame:Lerp(v302, 1 - 0.00001 ^ p12)
                    end
                end
            end

            if p1.smoothin then
                local v322 = (os.clock() - v36) / (p1.smoothinTime or 0.75)

                if v322 < 0.75 then
                    CurrentCamera.CFrame = v37:Lerp(CurrentCamera.CFrame, TweenService:GetValue(v322, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out))
                end
            end

            if not v11 or v18 then
                return
            end

            if type(v11) == "table" then
                local v332 = v11[v4]

                if v332 == nil then
                    return
                end

                if (not p1.NoLerp or p1.fovlerp) and (not p1.NoLerpAfter or v17.Value ~= 0.5) then
                    local FieldOfView = CurrentCamera.FieldOfView

                    CurrentCamera.FieldOfView = FieldOfView + (tonumber(v332) - FieldOfView) * 0.25

                    return
                end

                CurrentCamera.FieldOfView = tonumber(v332)

                return
            end

            local start = v11:FindFirstChild("start")
            local v352 = v11:FindFirstChild((tostring(v4)))
            local v362

            if start and not v352 then
                v352 = start.Values
                v362 = true
            else
                v362 = false
            end

            if not v352 then
                return
            end

            local v372 = if v352:IsA("NumberValue") then v352 elseif v362 then v352:FindFirstChild((tostring(v4))) else v352.Values:FindFirstChildOfClass("NumberValue")

            if not (v372 and v372:IsA("NumberValue")) then
                return
            end

            if p1.NoLerp and not p1.fovlerp or p1.NoLerpAfter and v17.Value == 0.5 then
                CurrentCamera.FieldOfView = tonumber(v372.Value)

                return
            end

            local FieldOfView = CurrentCamera.FieldOfView

            CurrentCamera.FieldOfView = FieldOfView + (tonumber(v372.Value) - FieldOfView) * 0.25
        end
    end)

    local v48 = if v13 then v13.Stopped:Connect(function() --[[ Line: 1330 | Upvalues: v21 (ref) ]]
    v21()
end) else nil

    v3:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 1335 | Upvalues: v3 (ref), v18 (ref), v21 (ref) ]]
        if v3.Parent or v18 then
            return
        end

        wait(1)

        if not v18 then
            v21(nil, {
                specialcall = true
            })
        end
    end)
    p1.Char:GetPropertyChangedSignal("Parent"):Once(function() --[[ Line: 1348 | Upvalues: p1 (copy), v21 (ref) ]]
        if p1.Char.Parent then
            return
        end

        v21(nil, {
            specialcall = true
        })
    end)
    task.delay(v11, function() --[[ Line: 1354 | Upvalues: v48 (ref), v16 (ref), v21 (ref) ]]
        if v48 then
            v48:Disconnect()
        end

        if not v16 then
            return
        end

        v21(nil, {
            specialcall = true
        })
    end)

    return v21, v3, v14, v13
end

local _ = {
    [191] = {
        fov = 50,
        style = Enum.EasingStyle.Linear
    },
    [235] = {
        fov = 50,
        style = Enum.EasingStyle.Quad,
        dir = Enum.EasingDirection.InOut
    },
    [279] = {
        fov = 65
    },
    [421] = {
        fov = 45,
        style = Enum.EasingStyle.Linear
    },
    [513] = {
        fov = 45,
        style = Enum.EasingStyle.Quad,
        dir = Enum.EasingDirection.In
    },
    [530] = {
        fov = 20,
        style = Enum.EasingStyle.Linear
    },
    [576] = {
        fov = 20,
        style = Enum.EasingStyle.Circular,
        dir = Enum.EasingDirection.In
    },
    [600] = {
        fov = 54,
        style = Enum.EasingStyle.Linear
    },
    [749] = {
        fov = 54,
        style = Enum.EasingStyle.Quart,
        dir = Enum.EasingDirection.InOut
    },
    [790] = {
        fov = 40,
        style = Enum.EasingStyle.Quart,
        dir = Enum.EasingDirection.In
    },
    [801] = {
        fov = 70,
        style = Enum.EasingStyle.Linear
    }
}

function shared.CutsceneEvent(p1) --[[ Line: 1383 | Upvalues: f6 (copy) ]]
    return f6(p1)
end

local function f7(p1, p2) --[[ Line: 1387 ]]
    for k, v in pairs(p1:GetPlayingAnimationTracks()) do
        if v.Animation.AnimationId == "rbxassetid://" .. tostring(p2) then
            return v
        end
    end
end

local function f8(p1, p2, p3) --[[ Line: 1397 ]]
    if not p3 then
        p3 = {}
    end

    local PrimaryPart = p1.PrimaryPart
    local v1 = p2:Clone()

    game.Debris:AddItem(v1, 10)
    v1.Parent = workspace.Thrown

    local function f2(p12) --[[ Line: 1409 | Upvalues: PrimaryPart (copy), p1 (copy) ]]
        local v1 = PrimaryPart.CFrame

        if p1:GetAttribute("ForcedCFrame") and typeof(p1:GetAttribute("ForcedCFrame")) == "CFrame" then
            v1 = p1:GetAttribute("ForcedCFrame")
        end

        p12.CFrame = v1 * p12:GetAttribute("Offset")
    end

    if not p3.all then
        f2(v1)

        return v1
    end

    for k, v in pairs(v1:GetDescendants()) do
        if v:IsA("BasePart") then
            f2(v)
        end
    end

    return v1
end

local function f9(p1, p2) --[[ Line: 1433 ]]
    if workspace.Thrown:FindFirstChild(p1) then
        local v1 = workspace.Thrown:FindFirstChild(p1)

        if v1:GetAttribute("Ownership") == tostring(p2) then
            return v1
        end
    end

    for k, v in pairs(workspace.Thrown:GetChildren()) do
        if tostring(v) == p1 and v:GetAttribute("Ownership") == tostring(p2) then
            return v
        end
    end
end

local function f10(p1, p2) --[[ Line: 1449 ]]
    for k, v in pairs(p1:GetDescendants()) do
        if v:IsA("ParticleEmitter") then
            v.Enabled = p2
        end
    end
end

local function f11(p1, p2, p3) --[[ Line: 1457 | Upvalues: v2 (copy) ]]
    if not (p1 and p1.Parent) then
        return
    end

    game.Debris:AddItem(p1, 30)

    for k, v in pairs(p1:GetDescendants()) do
        if v:IsA("ParticleEmitter") and (if p3 and (p3.Exclude and v.Parent == p3.Exclude) then false else true) then
            if string.lower(v.Name) == "smoke" and p2 then
                local v22 = workspace:Raycast(p2.PrimaryPart.Position, p2.PrimaryPart.Position, v2)

                if v22 then
                    v.Color = ColorSequence.new(v22.Instance.Color)
                end
            end

            v:Emit(v:GetAttribute("EmitCount"))
        end
    end
end

local function f12(p1, p2, p3) --[[ Line: 1488 ]]
    local v1 = nil
    local v2 = nil

    for k, v in pairs(p2.Part:GetChildren()) do
        if v:IsA("Attachment") then
            local v3 = v:Clone()

            v3.Parent = p1
            game.Debris:AddItem(v3, 10)

            if tostring(v3) == "Attachment1" then
                v2 = v3

                continue
            end

            v1 = v3
        end
    end

    for k, v in pairs(p2.Part:GetChildren()) do
        if v:IsA("Beam") then
            local v4 = v:Clone()

            game.Debris:AddItem(v4, 10)
            v4.Parent = p1
            v4.Attachment0 = v1
            v4.Attachment1 = v2
            v4.Enabled = true
            task.delay(p3, function() --[[ Line: 1516 | Upvalues: v4 (copy) ]]
                if not (v4 and v4.Parent) then
                    return
                end

                v4.Enabled = false
            end)
        end
    end
end

local function f13(p1) --[[ Line: 1525 | Upvalues: f11 (copy) ]]
    local v1 = p1.Part:Clone()

    table.insert(p1.cleanup, v1)
    v1.Parent = workspace.Thrown
    v1.CFrame = p1.CFrame
    f11(v1, p1.Char)
    game.Debris:AddItem(v1, 5)

    if not p1.TempWc then
        return
    end

    v1.Anchored = false
    v1.Massless = true
    v1.CanCollide = false
    v1.CanTouch = false

    local WeldConstraint = Instance.new("WeldConstraint")

    WeldConstraint.Part0 = p1.WeldData.Part0
    WeldConstraint.Part1 = v1
    game.Debris:AddItem(WeldConstraint, p1.WeldData.DeletionTime)
end

local function f14(p1) --[[ Line: 1551 ]]
    local anim = p1.anim
    local Stop = p1.Stop

    for k, v in pairs(p1.markers) do
        local v1 = nil

        v1 = anim:GetMarkerReachedSignal(k):Connect(function() --[[ Line: 1558 | Upvalues: anim (copy), p1 (copy), v1 (ref), v (copy) ]]
            if not anim.IsPlaying then
                return
            end

            if p1.DontDisconnectMarkers then
                return v(p1.sendingdata)
            end

            v1:Disconnect()

            return v(p1.sendingdata)
        end)

        local v2 = v1

        table.insert(p1.cleanup, v2)
        task.delay(20, function() --[[ Line: 1571 | Upvalues: v1 (ref) ]]
            if not v1 then
                return
            end

            v1:Disconnect()
        end)
    end
end

local meshes = require(script.VfxMods.meshes)
local t3 = {
    Lifeform = {
        StartupFunction = function(p1) --[[ StartupFunction | Line: 1585 ]]
            local cleanup = p1.cleanup
            local Char = p1.Char
            local isCharacter = Char == game.Players.LocalPlayer.Character
            local v1 = isCharacter and game.Players.LocalPlayer.PlayerGui or Char.PrimaryPart

            local function f2(p1) --[[ Line: 1592 | Upvalues: v1 (copy) ]]
                for k, v in pairs(v1:GetChildren()) do
                    if v:IsA("Sound") and v.SoundId == p1 then
                        return v
                    end
                end
            end

            for k, v in pairs({ "rbxassetid://78904320114772", "rbxassetid://104373031451162" }) do
                local v3 = f2(v)

                if v3 then
                    game:GetService("TweenService"):Create(v3, TweenInfo.new(0.45), {
                        Volume = 0
                    }):Play()
                    game.Debris:AddItem(v3, 0.5)
                end

                local v4 = if isCharacter then 1.35 else 2.25

                if not v:find("78904320114772") then
                    v4 = v4 * 1.4
                end

                local v5 = shared.sfx({
                    SoundId = v,
                    Parent = v1,
                    Volume = v4
                })

                v5:Play()
                table.insert(cleanup, v5)
                task.delay(0.5, function() --[[ Line: 1630 | Upvalues: v5 (copy) ]]
                    v5.TimePosition = 0.5
                    wait(0.5)
                    v5.TimePosition = 1
                end)
                task.delay(14, function() --[[ Line: 1635 | Upvalues: v5 (copy) ]]
                    if not (v5 and v5.Parent) then
                        return
                    end

                    task.delay(math.random(3, 6), function() --[[ Line: 1639 | Upvalues: v5 (ref) ]]
                        if not (v5 and v5.Parent) then
                            return
                        end

                        game:GetService("TweenService"):Create(v5, TweenInfo.new(1), {
                            Volume = v5.Volume / 5
                        }):Play()
                    end)
                end)
            end

            if Char == game.Players.LocalPlayer.Character then
                local v6 = task.delay(3.1, function() --[[ Line: 1653 | Upvalues: p1 (copy), Char (copy) ]]
                    if not (p1.Bind and p1.Bind.Parent) then
                        return
                    end

                    if Char == game.Players.LocalPlayer.Character then
                        local _, _2 = shared.CutsceneEvent({
                            Anim = 123782653232583,
                            ActualPart = "Camera",
                            NoLerpAfter = true,
                            smooth = true,
                            SpecificStart = 190,
                            Offset = CFrame.new(0, -3, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                            From = game.Players.LocalPlayer.Character.PrimaryPart,
                            SpecificRig = script.Assets.CameraRigK,
                            Bind = p1.Bind
                        })
                    end
                end)

                table.insert(p1.cleanup, v6)
            end
        end,
        RealModule = script.VfxMods.LifeformVfx
    },
    ["Boss Raid"] = {
        CanRotate = true,
        StartupFunction = function(p1) --[[ StartupFunction | Line: 1684 | Upvalues: TweenService (copy), f5 (copy), TweenService (copy) ]]
            local Char = p1.Char
            local PrimaryPart = p1.Char.PrimaryPart
            local cleanup = p1.cleanup
            local Bossraid = script.RealAssets.Bossraid
            local v1 = Char["Right Arm"]
            local v2 = nil
            local EmoteBind = p1.EmoteBind
            local v3 = nil
            local InfBall = Instance.new("Part")

            game:GetService("Debris"):AddItem(InfBall, 60)
            InfBall.CanCollide = false
            InfBall.CanQuery = false
            InfBall.Transparency = 1
            InfBall:SetAttribute("Name", p1.Char.Name)
            InfBall:SetAttribute("DeletionImmunity", true)
            InfBall.Color = Color3.new(255/255, 255/255, 255/255)
            InfBall.Name = "InfBall"
            InfBall.Material = Enum.Material.Neon
            InfBall.Shape = "Ball"
            InfBall.Massless = true
            InfBall.Size = Vector3.new(20, 20, 20)

            local Weld = Instance.new("Weld")

            Weld.Part0 = PrimaryPart
            Weld.Part1 = InfBall
            Weld.Parent = InfBall
            InfBall.Parent = Char
            InfBall:AddTag("InfinityBall")
            v1.Transparency = 1
            v2 = task.delay(1.5, function() --[[ Line: 1720 | Upvalues: Bossraid (copy), v3 (ref), p1 (copy), Char (copy), v1 (copy) ]]
                local v12 = Bossraid.ArmRegen:Clone()

                v3 = v12
                table.insert(p1.cleanup, v12)
                game.Debris:AddItem(v12, 5)
                v12.Parent = Char

                local Motor6D = v12:FindFirstChildOfClass("Motor6D")

                table.insert(p1.cleanup, Motor6D)
                Motor6D.Part0 = v1
                Motor6D.Part1 = v12.PrimaryPart
                Motor6D.Parent = v1

                local Animation = Instance.new("Animation")

                Animation.AnimationId = "rbxassetid://106040706115347"
                Char.Humanoid:LoadAnimation(Animation):Play()
                shared.sfx({
                    SoundId = "rbxassetid://71793661471749",
                    Volume = 1.35,
                    Parent = v1,
                    PlaybackSpeed = Random.new():NextNumber(1, 1.075)
                }):Play()
            end)

            local v4 = v2

            table.insert(p1.cleanup, v4)

            if EmoteBind then
                EmoteBind:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 1762 | Upvalues: EmoteBind (copy), v1 (copy), v2 (ref) ]]
                    if EmoteBind.Parent then
                        return
                    end

                    v1.Transparency = 0

                    if not v2 then
                        return
                    end

                    task.cancel(v2)
                end)

                if not EmoteBind.Parent then
                    v1.Transparency = 0

                    if v2 then
                        task.cancel(v2)
                    end
                end
            end

            local t = {
                Texts = CFrame.new(1.39596558, -0.870697021, -0.397636414, 0.923880339, 3.17196898e-13, -0.382681459, -2.46100503e-13, 1, 2.3473698e-13, 0.382681459, -1.22690798e-13, 0.923880339),
                Blue = CFrame.new(-0.128771782, -0.946416378, -1.34786582, 0.109281771, -0.460234433, -0.881046772, -0.148396462, 0.868868649, -0.472279489, 0.982872725, 0.182355583, 0.0266542491),
                Activate = CFrame.new(-0.468925238, -2.06283092, 0.227512807, 1.00000036, -2.04890966e-8, -2.98023224e-8, -2.04890966e-8, 1.00000036, -5.21540642e-8, -2.98023224e-8, -5.21540642e-8, 1.0000006),
                Slam = CFrame.new(-0.440316439, -3.11318493, -0.973331332, 1.00000036, -2.04890966e-8, -2.98023224e-8, -2.04890966e-8, 1.00000036, -5.21540642e-8, -2.98023224e-8, -5.21540642e-8, 1.0000006),
                FloorEnable = CFrame.new(-0.940292835, -3.11318469, -0.895578265, 1.00000036, -2.04890966e-8, -2.98023224e-8, -2.04890966e-8, 1.00000036, -5.21540642e-8, -2.98023224e-8, -5.21540642e-8, 1.0000006),
                Phase2 = CFrame.new(-0.77883029, -2.97686553, -0.781239569, 0.49037835, -0.687594295, -0.535485148, 0.206855595, 0.688705623, -0.694907486, 0.846605718, 0.229999408, 0.479958862),
                FloorPart = CFrame.new(-1.01313972, -2.90322304, -1.35118687, 1.00000036, -2.04890966e-8, -2.98023224e-8, -2.04890966e-8, 1.00000036, -5.21540642e-8, -2.98023224e-8, -5.21540642e-8, 1.0000006),
                Land = CFrame.new(-0.285525084, -2.90988469, 0.227512926, 1.00000036, -2.04890966e-8, -2.98023224e-8, -2.04890966e-8, 1.00000036, -5.21540642e-8, -2.98023224e-8, -5.21540642e-8, 1.0000006)
            }

            local function f52(p1) --[[ Line: 1783 | Upvalues: t (copy), PrimaryPart (copy), Char (copy) ]]
                if p1:IsA("Model") and p1.PrimaryPart then
                    p1 = p1.PrimaryPart
                end

                if p1:IsA("Part") or p1:IsA("MeshPart") and t[tostring(p1)] then
                    p1.CFrame = PrimaryPart.CFrame * t[tostring(p1)]
                end

                if tostring(p1) ~= "Blue" then
                    return
                end

                p1.Anchored = false
                p1.Massless = true
                p1.CanTouch = false
                p1.CanQuery = false

                if tostring(p1) == "Blue" then
                    p1.Parent.Parent = Char
                else
                    p1.Parent = Char
                end

                local Motor6D = p1.Parent:FindFirstChildOfClass("Motor6D")

                if not Motor6D then
                    Motor6D = p1:FindFirstChildOfClass("Motor6D")
                end

                Motor6D.Part0 = Char.PrimaryPart
                Motor6D.Part1 = p1
                Motor6D.Parent = Char.PrimaryPart
            end

            local v6 = nil

            local function f7(p12) --[[ Line: 1815 | Upvalues: v6 (ref), cleanup (copy), f52 (copy), p1 (copy), Char (copy) ]]
                local v1 = p12:Clone()

                if not v6 then
                    v6 = v1
                end

                v1.Parent = workspace.Thrown
                table.insert(cleanup, v1)

                if tostring(p12) ~= "SteamArm" then
                    f52(v1)
                    table.insert(p1.cleanup, v1)

                    if p12.Name ~= "Texts" then
                        game.Debris:AddItem(v1, 10)

                        return v1
                    end

                    v1.Parent = Char
                end

                return v1
            end

            local function f8() --[[ Line: 1848 | Upvalues: f7 (copy), Bossraid (copy), p1 (copy) ]]
                local v1 = f7(Bossraid.Texts)
                local EmoteBind = p1.EmoteBind

                if EmoteBind then
                    EmoteBind:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 1852 | Upvalues: EmoteBind (copy), v1 (copy) ]]
                        if EmoteBind.Parent then
                            return
                        end

                        game:GetService("Debris"):AddItem(v1, 0)
                    end)

                    if not EmoteBind.Parent then
                        game:GetService("Debris"):AddItem(v1, 0)
                    end
                else
                    game:GetService("Debris"):AddItem(v1, 0)
                end

                for k, v in pairs(v1:GetDescendants()) do
                    if (v:IsA("ParticleEmitter") or (v:IsA("Trail") or v:IsA("Beam"))) and v:GetAttribute("EmitDelay") then
                        task.delay(v:GetAttribute("EmitDelay"), function() --[[ Line: 1867 | Upvalues: v (copy) ]]
                            v:Emit(v:GetAttribute("EmitCount"))
                            task.delay(5, function() --[[ Line: 1869 | Upvalues: v (ref) ]]
                                v.TimeScale = 0
                            end)
                        end)
                    end
                end
            end

            task.delay(2.15, function() --[[ Line: 1841 | Upvalues: f8 (copy) ]]
                f8()
            end)

            local v9 = nil
            local v10 = nil
            local v11 = nil
            local v12 = nil
            local tbl = {
                [0.07] = function() --[[ Line: 1887 | Upvalues: f7 (copy), Bossraid (copy), v9 (ref), TweenService (ref) ]]
                    local v1 = f7(Bossraid.Blue)

                    v9 = v1
                    v1:ScaleTo(1)

                    local PrimaryPart = v1.PrimaryPart

                    for k, v in pairs(f7(Bossraid.Activate):GetDescendants()) do
                        if v:IsA("ParticleEmitter") then
                            v:Emit(v:GetAttribute("EmitCount"))
                        end
                    end

                    for k, v in pairs(PrimaryPart:GetDescendants()) do
                        if v:IsA("ParticleEmitter") or v:IsA("Trail") then
                            v.Enabled = true
                        end
                    end

                    PrimaryPart.PointLight.Brightness = 7
                    TweenService:Create(PrimaryPart.PointLight, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                        Brightness = 1
                    }):Play()
                end,
                [0.647] = function() --[[ Line: 1915 | Upvalues: f5 (ref), Char (copy), v9 (ref), f7 (copy), Bossraid (copy), v10 (ref) ]]
                    spawn(function() --[[ Line: 1916 | Upvalues: f5 (ref), Char (ref) ]]
                        for i = 1, 5 do
                            f5({ Char }, 2)
                            task.wait(0.02)
                        end
                    end)
                    v9:ScaleTo(1.8)

                    for k, v in pairs(f7(Bossraid.Slam):GetDescendants()) do
                        if v:IsA("ParticleEmitter") then
                            v:Emit(v:GetAttribute("EmitCount"))
                        end
                    end

                    local v2 = f7(Bossraid.FloorEnable)

                    v10 = v2

                    for k, v in pairs(v2:GetDescendants()) do
                        if v:IsA("ParticleEmitter") then
                            v:Emit(v:GetAttribute("EmitCount"))
                            v.Enabled = true
                        end
                    end
                end,
                [1.25] = function() --[[ Line: 1942 | Upvalues: v9 (ref), f7 (copy), Bossraid (copy), v11 (ref), TweenService (ref), v10 (ref), v12 (ref), PrimaryPart (copy), cleanup (copy) ]]
                    local v1 = v9
                    local v2 = 1
                    local v3 = f7(Bossraid.Phase2)

                    v11 = v3
                    v3.PointLight.Brightness = 0
                    TweenService:Create(v3.PointLight, TweenInfo.new(0.65, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                        Brightness = 2
                    }):Play()

                    for k, v in pairs(v3:GetDescendants()) do
                        if v:IsA("ParticleEmitter") or v:IsA("Trail") then
                            v.Enabled = true
                        end
                    end

                    for k, v in pairs(v10:GetDescendants()) do
                        if v:IsA("ParticleEmitter") then
                            v:Emit(v:GetAttribute("EmitCount"))
                            v.Enabled = false
                        end
                    end

                    local v5 = f7(Bossraid.FloorPart)

                    v12 = v5

                    for k, v in pairs(v5:GetDescendants()) do
                        if v:IsA("ParticleEmitter") or v:IsA("Trail") then
                            v:Emit(v:GetAttribute("EmitCount"))
                            v.Enabled = true
                        end
                    end

                    local v6 = task.delay(0.2, function() --[[ Line: 1974 | Upvalues: PrimaryPart (ref), v9 (ref), v5 (copy), cleanup (ref) ]]
                        local _, v1 = workspace:FindFirstChildOfClass("Camera"):WorldToScreenPoint(PrimaryPart.Position)

                        if not v1 then
                            return
                        end

                        local v2 = game:GetService("RunService").Heartbeat:Connect(function() --[[ Line: 1981 | Upvalues: v9 (ref), v5 (ref) ]]
                            if not (v9 and (v9.Parent and (v5 and v5.Parent))) then
                                return
                            end

                            local v2 = CFrame.new

                            v5.CFrame = v2(v5.Position:Lerp(Vector3.new(v9.PrimaryPart.Position.X, v5.Position.Y, v9.PrimaryPart.Position.Z), 0.25)) * CFrame.Angles(0, 1.5707963267948966, 0)
                        end)

                        task.delay(1, function() --[[ Line: 1987 | Upvalues: v2 (ref) ]]
                            if v2 then
                                return v2:Disconnect()
                            end
                        end)

                        local v4 = v2

                        table.insert(cleanup, v4)
                    end)
                    local v7 = cleanup

                    table.insert(v7, v6)
                    task.spawn(function() --[[ Line: 1998 | Upvalues: v1 (copy), v2 (ref) ]]
                        for i = 1, 7 do
                            if not (v1 and v1.Parent) then
                                break
                            end

                            v1:ScaleTo(v2)
                            v2 = v2 + 0.4
                            wait(0.02)
                        end
                    end)
                end,
                [1.4] = function() --[[ Line: 2012 | Upvalues: v9 (ref), v12 (ref), v11 (ref), TweenService (ref) ]]
                    for k, v in pairs(v9:GetDescendants()) do
                        if v:IsA("ParticleEmitter") or v:IsA("Trail") then
                            v.Enabled = false
                        end
                    end

                    task.delay(0.325, function() --[[ Line: 2019 | Upvalues: v12 (ref) ]]
                        for k, v in pairs(v12:GetDescendants()) do
                            if v:IsA("ParticleEmitter") or v:IsA("Trail") then
                                v.Enabled = false
                            end
                        end
                    end)

                    for k, v in pairs(v11:GetDescendants()) do
                        if v:IsA("ParticleEmitter") or v:IsA("Trail") then
                            v.Enabled = false
                        end
                    end

                    TweenService:Create(v9.Blue.PointLight, TweenInfo.new(0.65, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                        Brightness = 0
                    }):Play()
                    TweenService:Create(v11.PointLight, TweenInfo.new(0.76, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                        Brightness = 0
                    }):Play()
                end,
                [2.09] = function() --[[ Line: 2037 | Upvalues: f7 (copy), Bossraid (copy) ]]
                    for k, v in pairs(f7(Bossraid.Land):GetDescendants()) do
                        if v:IsA("ParticleEmitter") then
                            v:Emit(v:GetAttribute("EmitCount"))
                        end
                    end
                end,
                [2.29] = function() --[[ Line: 2046 | Upvalues: v9 (ref), TweenService (ref), v1 (copy), v3 (ref), PrimaryPart (copy), Bossraid (copy), Char (copy), p1 (copy) ]]
                    if v9 and v9.Parent then
                        TweenService:Create(v1, TweenInfo.new(0.65, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            Transparency = 0
                        }):Play()
                    end

                    if v3 and shared.OnScreen(PrimaryPart.Position) then
                        for k, v in pairs(v3:GetDescendants()) do
                            if v:IsA("Part") or v:IsA("MeshPart") then
                                TweenService:Create(v, TweenInfo.new(0.65, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    Transparency = 1
                                }):Play()
                            end
                        end

                        game.Debris:AddItem(v3, 1)
                    elseif v3 then
                        v3:Destroy()
                    end

                    local v12 = Bossraid.SteamArm.ParticleEmitter:Clone()

                    v12.Parent = Char["Right Arm"]

                    local EmoteBind = p1.EmoteBind

                    if EmoteBind then
                        EmoteBind:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 2075 | Upvalues: EmoteBind (copy), v12 (copy) ]]
                            if EmoteBind.Parent then
                                return
                            end

                            game:GetService("Debris"):AddItem(v12, 0)
                        end)

                        if not EmoteBind.Parent then
                            game:GetService("Debris"):AddItem(v12, 0)
                        end
                    else
                        game:GetService("Debris"):AddItem(v12, 0)
                    end

                    task.delay(0.12, function() --[[ Line: 2087 | Upvalues: v12 (copy) ]]
                        if not (v12 and v12.Parent) then
                            return
                        end

                        v12.Enabled = true
                    end)
                end
            }
            local t2 = {}

            for k, v in pairs(tbl) do
                local v13 = task.delay(k + 0.15, function() --[[ Line: 1841 | Upvalues: v (copy) ]]
                    v()
                end)

                table.insert(t2, v13)
                table.insert(cleanup, v13)
            end
        end
    },
    HugeSlash = {
        StartupFunction = function(p1) --[[ StartupFunction | Line: 2107 | Upvalues: f5 (copy), f8 (copy), f11 (copy), f14 (copy) ]]
            local Char = p1.Char
            local PrimaryPart = p1.Char.PrimaryPart
            local cleanup = p1.cleanup
            local HugeSlash = script.RealAssets.HugeSlash
            local v1 = nil
            local v2 = nil

            for k, v in pairs(HugeSlash.Final:GetChildren()) do
                local v3 = v:Clone()

                game.Debris:AddItem(v3, 10)
                table.insert(cleanup, v3)

                if tostring(v3) == "+" then
                    v2 = v3
                else
                    v1 = v3
                end

                v3.Parent = Char["Right Arm"]
            end

            local t = {}
            local t2 = {}
            local meshemit = require(script.VfxMods.meshemit)

            tick()
            f14({
                DontDisconnectMarkers = false,
                anim = p1.RealAnim,
                markers = {
                    first = function() --[[ Line: 2145 | Upvalues: f5 (ref), Char (copy), f8 (ref), HugeSlash (copy), cleanup (copy), meshemit (copy), v1 (ref), v2 (ref), t (copy), t2 (copy), f11 (ref) ]]
                        f5({ Char }, 2)

                        local v12 = f8(Char, HugeSlash.meshes.p1, {
                            all = true
                        })

                        game.Debris:AddItem(v12, 7)
                        table.insert(cleanup, v12)

                        for k, v in pairs(v12:GetChildren()) do
                            meshemit(v)
                        end

                        local v3 = HugeSlash.ArmTrails.p1.Trail:Clone()

                        game.Debris:AddItem(v3, 7)
                        table.insert(cleanup, v3)
                        v3.Parent = Char["Right Arm"]
                        v3.Enabled = true
                        v3.Attachment0 = v1
                        v3.Attachment1 = v2
                        table.insert(t, v3)

                        local v6 = f8(Char, HugeSlash.S1)

                        game.Debris:AddItem(v6, 7)
                        table.insert(cleanup, v6)
                        table.insert(cleanup, v6)
                        t2.s1 = v6
                        f11(v6.s1)
                    end,
                    sec = function() --[[ Line: 2176 | Upvalues: f5 (ref), Char (copy), f8 (ref), HugeSlash (copy), cleanup (copy), meshemit (copy), t2 (copy), v1 (ref), v2 (ref), t (copy) ]]
                        f5({ Char }, 2)

                        local v12 = f8(Char, HugeSlash.meshes.p2, {
                            all = true
                        })

                        game.Debris:AddItem(v12, 7)
                        table.insert(cleanup, v12)

                        for k, v in pairs(v12:GetChildren()) do
                            meshemit(v)
                        end

                        for v3, v4 in t2.s1.s2.ROTATE:GetDescendants() do
                            if v4:IsA("Trail") then
                                v4.Enabled = true
                            end
                        end

                        local TweenService = game:GetService("TweenService")

                        t2.s1.s2.ROTATE.Position = Vector3.new(-5.005, -2.692, -0.089)
                        t2.s1.s2.ROTATE.Orientation = Vector3.new(0, 0, 0)
                        TweenService:Create(t2.s1.s2.ROTATE, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            Position = Vector3.new(-5.005, 1.345, -0.089)
                        }):Play()
                        TweenService:Create(t2.s1.s2.ROTATE, TweenInfo.new(0.41, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                            Orientation = Vector3.new(0, -207.535, 0)
                        }):Play()
                        task.delay(1.4, function() --[[ Line: 2200 | Upvalues: t2 (ref) ]]
                            if not (t2 and (t2.s1 and t2.s1.Parent)) then
                                return
                            end

                            for v1, v2 in t2.s1.s2.ROTATE:GetDescendants() do
                                if v2:IsA("Trail") then
                                    v2.Enabled = false
                                end
                            end
                        end)
                        t2.s1.s2.Attachment.PointLight.Brightness = 3
                        TweenService:Create(t2.s1.s2.Attachment.PointLight, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            Brightness = 0
                        }):Play()

                        local v5 = HugeSlash.ArmTrails.p2.Trail:Clone()

                        game.Debris:AddItem(v5, 7)
                        table.insert(cleanup, v5)
                        v5.Parent = Char["Right Arm"]
                        v5.Enabled = true
                        v5.Attachment0 = v1
                        v5.Attachment1 = v2
                        table.insert(t, v5)

                        for v8, v9 in t2.s1.s2:GetDescendants() do
                            if v9:IsA("ParticleEmitter") then
                                v9:Emit(v9:GetAttribute("EmitCount"))
                            end
                        end
                    end,
                    third = function() --[[ Line: 2235 | Upvalues: f8 (ref), Char (copy), HugeSlash (copy), cleanup (copy), meshemit (copy), f5 (ref), t2 (copy), v1 (ref), v2 (ref), t (copy) ]]
                        local v12 = f8(Char, HugeSlash.meshes.p3, {
                            all = true
                        })

                        game.Debris:AddItem(v12, 7)
                        table.insert(cleanup, v12)

                        for k, v in pairs(v12:GetChildren()) do
                            meshemit(v)
                        end

                        local TweenService = game:GetService("TweenService")

                        f5({ Char }, 2)
                        t2.s1.s3.Attachment.PointLight.Brightness = 4
                        TweenService:Create(t2.s1.s3.Attachment.PointLight, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            Brightness = 0
                        }):Play()

                        local v3 = f8(Char, HugeSlash.ArmAura)

                        game.Debris:AddItem(v3, 7)
                        table.insert(cleanup, v3)
                        t2.armaura = v3
                        v3.Anchored = false
                        v3.CanCollide = false
                        v3.Massless = true

                        local Motor6D = Instance.new("Motor6D")

                        game.Debris:AddItem(Motor6D, 7)
                        table.insert(cleanup, Motor6D)
                        Motor6D.Part0 = Char["Right Arm"]
                        Motor6D.Part1 = v3
                        Motor6D.Parent = v3
                        t2.armaura = v3

                        local v6 = HugeSlash.WindBeams:Clone()

                        game.Debris:AddItem(v6, 7)
                        table.insert(cleanup, v6)
                        t2.windbeams = v6
                        v6.Parent = workspace

                        local tbl = {}

                        for k, v in pairs(v6:GetDescendants()) do
                            if v:IsA("Beam") then
                                tbl[v] = {
                                    Attachment0 = v.Attachment0.CFrame,
                                    Attachment1 = v.Attachment1.CFrame
                                }
                            end
                        end

                        for k, v in pairs(tbl) do
                            local Attachment0 = v.Attachment0
                            local Attachment1 = v.Attachment1

                            for k2, v8 in pairs(v3:GetDescendants()) do
                                if v8:IsA("Attachment") then
                                    local v82 = v8.CFrame

                                    if v82 == Attachment0 then
                                        k.Attachment0 = v8

                                        continue
                                    end

                                    if v82 == Attachment1 then
                                        k.Attachment1 = v8
                                    end
                                end
                            end
                        end

                        for v9, v10 in v6:GetDescendants() do
                            if v10:IsA("Beam") then
                                v10.Brightness = 0.3
                                v10.TextureSpeed = 2
                            end
                        end

                        local v11 = HugeSlash.ArmTrails.p3.Trail:Clone()

                        game.Debris:AddItem(v11, 7)
                        table.insert(cleanup, v11)
                        v11.Parent = Char["Right Arm"]
                        v11.Enabled = true
                        v11.Attachment0 = v1
                        v11.Attachment1 = v2
                        table.insert(t, v11)

                        for v14, v15 in t2.s1.s3:GetDescendants() do
                            if v15:IsA("ParticleEmitter") then
                                v15:Emit(v15:GetAttribute("EmitCount"))
                            end
                        end

                        v3.D.ROT.Orientation = Vector3.new(0, 0, 0)
                        TweenService:Create(v3.D.ROT, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                            Orientation = Vector3.new(0, -450, 0)
                        }):Play()

                        for v16, v17 in v3:GetDescendants() do
                            if v17:IsA("ParticleEmitter") then
                                v17:Emit(v17:GetAttribute("EmitCount"))
                                v17.Enabled = true
                            end
                        end
                    end,
                    fourth = function() --[[ Line: 2336 | Upvalues: f5 (ref), Char (copy), f8 (ref), HugeSlash (copy), cleanup (copy), meshemit (copy) ]]
                        f5({ Char }, 1, 0.25)

                        local v1 = f8(Char, HugeSlash.Invertt, {
                            all = true
                        })

                        game.Debris:AddItem(v1, 7)
                        table.insert(cleanup, v1)

                        for k, v in pairs(v1:GetChildren()) do
                            meshemit(v)
                        end
                    end,
                    fifth = function() --[[ Line: 2348 | Upvalues: f5 (ref), Char (copy), f8 (ref), HugeSlash (copy), meshemit (copy), t2 (copy) ]]
                        spawn(function() --[[ Line: 2349 | Upvalues: f5 (ref), Char (ref) ]]
                            for i = 1, 3 do
                                f5({ Char }, 15)
                                task.wait(0.01)
                            end
                        end)

                        local v1 = tick()

                        repeat
                            task.wait()
                        until Char:GetAttribute("ForcedCFrame") or tick() - v1 >= 0.25

                        local v2 = f8(Char, HugeSlash.meshes.s, {
                            all = true
                        })

                        for k, v in pairs(v2:GetChildren()) do
                            meshemit(v)
                        end

                        local TweenService = game:GetService("TweenService")
                        local Debris = game:GetService("Debris")
                        local v3 = f8(Char, HugeSlash.INVERT)
                        local v4 = f8(Char, HugeSlash.ENDSPHERE)

                        Debris:AddItem(v3, 1)
                        v3.Parent = workspace.Camera
                        TweenService:Create(v3, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            Position = v4.Position
                        }):Play()
                        TweenService:Create(v3, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                            Size = v4.Size
                        }):Play()
                        task.delay(0.135, function() --[[ Line: 2383 | Upvalues: v3 (copy) ]]
                            v3:Destroy()
                        end)

                        local v5 = f8(Char, HugeSlash.WorldSlash)
                        local Highlight = Instance.new("Highlight")

                        Highlight.DepthMode = Enum.HighlightDepthMode.Occluded
                        Highlight.FillColor = Color3.fromRGB(0, 0, 0)
                        Highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                        Highlight.OutlineTransparency = 0
                        Highlight.Parent = v5
                        Highlight.OutlineTransparency = 0

                        local v6 = f8(Char, HugeSlash.ENDDD)

                        Debris:AddItem(v5, 1)
                        v5.Parent = workspace.Camera
                        TweenService:Create(v5, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                            Size = v6.Size
                        }):Play()
                        TweenService:Create(v5, TweenInfo.new(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                            Position = v6.Position
                        }):Play()
                        task.delay(1, function() --[[ Line: 2407 | Upvalues: v5 (copy) ]]
                            v5:Destroy()
                        end)

                        local v7 = f8(Char, HugeSlash.SLASH)
                        local v8 = HugeSlash.Wind2:Clone()

                        Debris:AddItem(v8, 5)
                        t2.windbeams = v8
                        v8.Parent = workspace.Thrown

                        local tbl = {}

                        for k, v in pairs(v8:GetDescendants()) do
                            if v:IsA("Beam") then
                                tbl[v] = {
                                    Attachment0 = v.Attachment0.CFrame,
                                    Attachment1 = v.Attachment1.CFrame
                                }
                            end
                        end

                        for k, v in pairs(tbl) do
                            local Attachment0 = v.Attachment0
                            local Attachment1 = v.Attachment1

                            for k2, v9 in pairs(v7:GetDescendants()) do
                                if v9:IsA("Attachment") then
                                    local v92 = v9.CFrame

                                    if v92 == Attachment0 then
                                        k.Attachment0 = v9

                                        continue
                                    end

                                    if v92 == Attachment1 then
                                        k.Attachment1 = v9
                                    end
                                end
                            end
                        end

                        for v10, v11 in v8:GetDescendants() do
                            if v11:IsA("Beam") then
                                v11.Brightness = 0.45
                                v11.TextureSpeed = 1.7
                                TweenService:Create(v11, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                                    TextureSpeed = 0.4
                                }):Play()
                                TweenService:Create(v11, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    Brightness = 0
                                }):Play()
                            end
                        end

                        for v12, v13 in v7:GetDescendants() do
                            if v13:IsA("ParticleEmitter") then
                                v13:Emit(v13:GetAttribute("EmitCount"))
                            end

                            if v13:GetAttribute("EmitDuration") then
                                v13.Enabled = true
                                task.delay(v13:GetAttribute("EmitDuration"), function() --[[ Line: 2461 | Upvalues: v13 (copy) ]]
                                    v13.Enabled = false
                                end)
                            end
                        end

                        for v14, v15 in t2.armaura:GetDescendants() do
                            if v15:IsA("ParticleEmitter") then
                                v15.Enabled = false
                            end
                        end

                        for v16, v17 in t2.windbeams:GetDescendants() do
                            if v17:IsA("Beam") then
                                TweenService:Create(v17, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    Brightness = 0
                                }):Play()
                                TweenService:Create(v17, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                                    TextureSpeed = 0.6
                                }):Play()
                            end
                        end
                    end
                },
                sendingdata = p1,
                cleanup = cleanup
            })
        end
    },
    ["Lifetime Barrage"] = {
        CutsceneData = {
            Anim = 113675038459828,
            From = "HumanoidRootPart",
            ActualPart = "CamPart",
            smoothin = true,
            smooth = true,
            Offset = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
            SpecificRig = script.Assets.CameraRig25,
            shake = {
                intensity = 15,
                amount = 0.15
            }
        },
        StartupFunction = function(p1) --[[ StartupFunction | Line: 2509 ]]
            local Character = game.Players.LocalPlayer.Character
            local PrimaryPart = Character.PrimaryPart
            local v1

            if Character == p1.Char or Character == p1.targChar then
                PrimaryPart = game.Players.LocalPlayer.PlayerGui
                v1 = 1.35
            else
                v1 = 2
            end

            if p1.Char ~= game.Players.LocalPlayer.Character and p1.targChar ~= game.Players.LocalPlayer then
                PrimaryPart = p1.Char.PrimaryPart
            end

            local v2 = shared.sfx({
                SoundId = "rbxassetid://138037259932921",
                Parent = PrimaryPart,
                Volume = v1 - 0.2
            })

            v2:Play()
            table.insert(p1.cleanup, v2)

            local v3 = shared.sfx({
                SoundId = "rbxassetid://122891228249030",
                RollOffMaxDistance = 120,
                Parent = PrimaryPart,
                Volume = v1
            })

            v3:Play()
            table.insert(p1.cleanup, v3)
        end,
        RealModule = script.VfxMods["7 Page"]
    },
    Vegetable = {
        CutsceneData = {
            Anim = 100366125413969,
            From = "HumanoidRootPart",
            ActualPart = "CamPart",
            smoothin = true,
            smooth = true,
            Offset = CFrame.new(0, 0, 0),
            SpecificRig = script.Assets.CameraRigVegetable
        },
        RealModule = script.VfxMods.Vegetable
    },
    Speedster = {
        CutsceneData = {
            Anim = 92523816230897,
            From = "HumanoidRootPart",
            ActualPart = "Camera",
            smoothin = true,
            smooth = true,
            Offset = CFrame.new(0, -3, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
            SpecificRig = script.Assets.CameraRigbasic
        },
        StartupFunction = function(p1) --[[ StartupFunction | Line: 2577 ]]
            local Character = game.Players.LocalPlayer.Character
            local PrimaryPart = Character.PrimaryPart

            if Character == p1.Char or Character == p1.targChar then
                PrimaryPart = game.Players.LocalPlayer.PlayerGui
            end

            if p1.Char ~= game.Players.LocalPlayer.Character and p1.targChar ~= game.Players.LocalPlayer then
                PrimaryPart = p1.Char.PrimaryPart
            end

            local v2 = shared.sfx({
                SoundId = "rbxassetid://127599988870711",
                RollOffMaxDistance = 120,
                Parent = PrimaryPart,
                Volume = 2
            })

            v2:Play()
            table.insert(p1.cleanup, v2)
        end,
        RealModule = script.VfxMods.Speedster
    },
    ["STILL FUNNY?"] = {
        CutsceneData = {
            Anim = 124958014257711,
            From = "HumanoidRootPart",
            ActualPart = "CamPart",
            Offset = CFrame.new(),
            SpecificRig = script.Assets.CameraFunny
        },
        StartupFunction = function(p1) --[[ StartupFunction | Line: 2619 | Upvalues: f8 (copy), f5 (copy), f14 (copy) ]]
            local Char = p1.Char
            local PrimaryPart = p1.Char.PrimaryPart
            local targChar = p1.targChar
            local cleanup = p1.cleanup
            local v1 = script.RealAssets["Still Funny?"]
            local v2 = 0
            local v3 = nil
            local v4 = nil
            local Character = game.Players.LocalPlayer.Character
            local v5 = if Char == Character then true elseif p1.CutsceneBind == Character then true else false

            for k, v in pairs({ "rbxassetid://118296832032427", "rbxassetid://118821266175755", "rbxassetid://98012468694360" }) do
                local v6 = 6
                local v7 = v == "rbxassetid://98012468694360" and targChar.PrimaryPart or (if v == "rbxassetid://118821266175755" then Char.PrimaryPart else false)

                if v5 then
                    v7 = game.Players.LocalPlayer.PlayerGui
                    v6 = v6 / 2
                end

                if not v7 then
                    v7 = Char.Torso
                end

                local sfx = shared.sfx
                local t = {
                    SoundId = v,
                    Volume = v6
                }

                t.Parent = v5 and game.Players.LocalPlayer.PlayerGui or v7

                local v9 = sfx(t)

                v9:Play()
                table.insert(cleanup, v9)
            end

            local v10 = 0

            f14({
                DontDisconnectMarkers = true,
                anim = p1.RealAnim,
                markers = {
                    punch = function() --[[ Line: 2670 | Upvalues: f8 (ref), targChar (copy), v1 (copy), cleanup (copy) ]]
                        local v12 = f8(targChar, v1.Start)

                        table.insert(cleanup, v12)
                        game.Debris:AddItem(v12, 10)

                        for v3, v4 in v12:GetDescendants() do
                            if v4:IsA("ParticleEmitter") then
                                task.spawn(function() --[[ Line: 2678 | Upvalues: v4 (copy) ]]
                                    if v4:GetAttribute("EmitDelay") then
                                        task.wait(v4:GetAttribute("EmitDelay"))
                                    end

                                    v4:Emit(v4:GetAttribute("EmitCount"))
                                end)
                            end
                        end
                    end,
                    emit = function() --[[ Line: 2688 | Upvalues: v2 (ref), v4 (ref), f8 (ref), targChar (copy), v1 (copy), cleanup (copy), Char (copy) ]]
                        v2 = v2 + 1

                        if not v4 then
                            v4 = f8(targChar, v1.BasicHit)
                            table.insert(cleanup, v4)
                            game.Debris:AddItem(v4, 10)
                        end

                        for v3, v42 in v4:GetDescendants() do
                            if v42:IsA("ParticleEmitter") then
                                v42:Emit(v42:GetAttribute("EmitCount"))
                            end
                        end

                        if v2 ~= 3 then
                            return
                        end

                        local TweenService = game:GetService("TweenService")
                        local v5 = f8(targChar, v1.SphereBlocked)

                        v5.Transparency = 0.125
                        table.insert(cleanup, v5)
                        game.Debris:AddItem(v5, 10)

                        local v7 = f8(targChar, v1.AP)

                        table.insert(cleanup, v7)
                        game.Debris:AddItem(v7, 10)

                        local Motor6D = Instance.new("Motor6D")

                        table.insert(cleanup, Motor6D)
                        Motor6D.C1 = CFrame.new(0, -0.217, 0)
                        Motor6D.Part0 = Char["Left Arm"]
                        Motor6D.Part1 = v7
                        Motor6D.Parent = Char["Left Arm"]

                        for v10, v11 in v7:GetDescendants() do
                            if v11:IsA("ParticleEmitter") then
                                task.spawn(function() --[[ Line: 2723 | Upvalues: v11 (copy) ]]
                                    v11:Emit(v11:GetAttribute("EmitCount") * 2)
                                    v11.Enabled = true
                                    task.wait(v11:GetAttribute("EmitDuration"))
                                    v11.Enabled = false
                                end)
                            end
                        end

                        local v12 = f8(targChar, v1.Blocked)

                        table.insert(cleanup, v12)
                        game.Debris:AddItem(v12, 10)

                        for v14, v15 in v12:GetDescendants() do
                            if v15:IsA("ParticleEmitter") then
                                task.spawn(function() --[[ Line: 2737 | Upvalues: v15 (copy) ]]
                                    if not v15:GetAttribute("EmitDelay") then
                                        v15:Emit(v15:GetAttribute("EmitCount") * 2)

                                        return
                                    end

                                    task.wait(v15:GetAttribute("EmitDelay"))
                                    v15:Emit(v15:GetAttribute("EmitCount") * 2)
                                end)
                            end
                        end

                        local v16 = TweenInfo.new(1.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)

                        task.wait(0.25)

                        if not (v12 and v12.Parent) then
                            return
                        end

                        TweenService:Create(v5, v16, {
                            Transparency = 1
                        }):Play()
                    end,
                    headbutt = function() --[[ Line: 2757 | Upvalues: v3 (ref), f8 (ref), targChar (copy), v1 (copy), cleanup (copy), v10 (ref), f5 (ref), Char (copy) ]]
                        if not v3 then
                            v3 = f8(targChar, v1.HeadHit)
                            table.insert(cleanup, v3)
                            game.Debris:AddItem(v3, 10)
                        end

                        for v32, v4 in v3:GetDescendants() do
                            if v4:IsA("ParticleEmitter") then
                                v4:Emit(v4:GetAttribute("EmitCount"))
                            end
                        end

                        v10 = v10 + 1

                        if v10 ~= 6 then
                            return
                        end

                        local CancelCutscene = Instance.new("Accessory")

                        CancelCutscene.Name = "CancelCutscene"
                        CancelCutscene.Parent = workspace
                        game.Debris:AddItem(CancelCutscene, 0.25)
                        f5({ Char }, 3, 0.25)
                    end,
                    last = function() --[[ Line: 2784 | Upvalues: v1 (copy), Char (copy), cleanup (copy) ]]
                        local v12 = v1.Part.Attachment:Clone()

                        v12.Parent = Char.Head
                        table.insert(cleanup, v12)
                        game.Debris:AddItem(v12, 10)

                        for v3, v4 in v12:GetChildren() do
                            if v4:IsA("ParticleEmitter") then
                                task.spawn(function() --[[ Line: 2792 | Upvalues: v4 (copy) ]]
                                    v4:Emit(v4:GetAttribute("EmitCount"))
                                    v4.Enabled = true
                                    task.wait(v4:GetAttribute("EmitDuration"))
                                    v4.Enabled = false
                                end)
                            end
                        end
                    end
                },
                sendingdata = p1,
                cleanup = cleanup
            })
        end
    },
    ["Flower Bomb"] = {
        StartupFunction = function(p1) --[[ StartupFunction | Line: 2816 | Upvalues: f8 (copy), f5 (copy), f14 (copy) ]]
            local Char = p1.Char
            local PrimaryPart = p1.Char.PrimaryPart
            local targChar = p1.targChar
            local cleanup = p1.cleanup
            local FlowerBomb = script.RealAssets.FlowerBomb
            local v1

            if targChar:FindFirstChild("Rose") then
                v1 = nil
            else
                local v2 = FlowerBomb.Rose:Clone()

                game.Debris:AddItem(v2, 6)
                v2.Parent = targChar
                v2.Sappling.Anchored = false

                local Sappling = v2.SapplingE

                Sappling.Parent = targChar.PrimaryPart
                Sappling.Part0 = targChar.PrimaryPart
                Sappling.Part1 = v2.Sappling
                Sappling.Name = "Sappling"
                v1 = v2
            end

            f14({
                DontDisconnectMarkers = false,
                anim = p1.RealAnim,
                markers = {
                    a = function() --[[ Line: 2846 | Upvalues: f8 (ref), Char (copy), FlowerBomb (copy), cleanup (copy) ]]
                        local v1 = f8(Char, FlowerBomb.GroundSmoke1)

                        table.insert(cleanup, v1)
                        game.Debris:AddItem(v1, 5)

                        for k, v in pairs(v1:GetDescendants()) do
                            if v:IsA("ParticleEmitter") then
                                task.spawn(function() --[[ Line: 2853 | Upvalues: v (copy) ]]
                                    v:Emit(v:GetAttribute("EmitCount"))
                                end)
                            end
                        end
                    end,
                    b = function() --[[ Line: 2859 | Upvalues: f8 (ref), Char (copy), FlowerBomb (copy), cleanup (copy) ]]
                        local v1 = f8(Char, FlowerBomb.Brush)

                        table.insert(cleanup, v1)
                        game.Debris:AddItem(v1, 5)

                        for k, v in pairs(v1:GetDescendants()) do
                            if v:IsA("ParticleEmitter") then
                                task.spawn(function() --[[ Line: 2866 | Upvalues: v (copy) ]]
                                    v:Emit(v:GetAttribute("EmitCount"))
                                end)
                            end
                        end
                    end,
                    c = function() --[[ Line: 2873 | Upvalues: f8 (ref), Char (copy), FlowerBomb (copy), cleanup (copy) ]]
                        local v1 = f8(Char, FlowerBomb.Smell)

                        table.insert(cleanup, v1)
                        game.Debris:AddItem(v1, 5)

                        for k, v in pairs(v1:GetDescendants()) do
                            if v:IsA("ParticleEmitter") then
                                task.spawn(function() --[[ Line: 2880 | Upvalues: v (copy) ]]
                                    v:Emit(v:GetAttribute("EmitCount"))
                                end)
                            end
                        end
                    end,
                    d = function() --[[ Line: 2886 | Upvalues: f5 (ref), Char (copy), p1 (copy), f8 (ref), FlowerBomb (copy), cleanup (copy) ]]
                        f5({ Char, p1.CutsceneBind }, 3)

                        local v1 = f8(Char, FlowerBomb.Slam)

                        table.insert(cleanup, v1)
                        game.Debris:AddItem(v1, 5)

                        for k, v in pairs(v1:GetDescendants()) do
                            if v:IsA("ParticleEmitter") then
                                task.spawn(function() --[[ Line: 2894 | Upvalues: v (copy) ]]
                                    v:Emit(v:GetAttribute("EmitCount"))
                                end)
                            end
                        end
                    end,
                    e = function() --[[ Line: 2900 | Upvalues: f5 (ref), Char (copy), p1 (copy), FlowerBomb (copy), v1 (ref), f8 (ref), cleanup (copy) ]]
                        f5({ Char, p1.CutsceneBind }, 2)

                        for k, v in pairs({ FlowerBomb.Slam, v1 }) do
                            local v12

                            if v == v1 then
                                v12 = v1
                            else
                                local v2 = f8(Char, v)

                                table.insert(cleanup, v2)
                                game.Debris:AddItem(v2, 5)
                                v12 = v2
                            end

                            for k2, v2 in pairs(v12:GetDescendants()) do
                                if v2:IsA("ParticleEmitter") then
                                    task.spawn(function() --[[ Line: 2916 | Upvalues: v2 (copy) ]]
                                        v2:Emit(v2:GetAttribute("EmitCount"))
                                    end)
                                end
                            end
                        end
                    end,
                    f = function() --[[ Line: 2926 | Upvalues: f5 (ref), Char (copy), p1 (copy), FlowerBomb (copy), f8 (ref), cleanup (copy), v1 (ref) ]]
                        f5({ Char, p1.CutsceneBind }, 5)

                        for k, v in pairs({ FlowerBomb.Snap, FlowerBomb.HeadExplode }) do
                            local v12 = f8(Char, v)

                            table.insert(cleanup, v12)
                            game.Debris:AddItem(v12, 5)

                            for k2, v3 in pairs(v12:GetDescendants()) do
                                if v3:IsA("ParticleEmitter") then
                                    task.spawn(function() --[[ Line: 2936 | Upvalues: v3 (copy) ]]
                                        v3:Emit(v3:GetAttribute("EmitCount"))
                                    end)
                                end
                            end
                        end

                        if not v1 then
                            return
                        end

                        v1:Destroy("")
                    end
                },
                sendingdata = p1,
                cleanup = cleanup
            })
        end
    },
    ["Iron Combo"] = {
        StartupFunction = function(p1) --[[ StartupFunction | Line: 2958 | Upvalues: f8 (copy), f11 (copy), f5 (copy), f10 (copy), f14 (copy) ]]
            local Char = p1.Char
            local PrimaryPart = p1.Char.PrimaryPart
            local targChar = p1.targChar
            local cleanup = p1.cleanup
            local v1 = script.RealAssets["Iron Combo"]
            local t = {}
            local v2 = nil

            f14({
                DontDisconnectMarkers = false,
                anim = p1.RealAnim,
                markers = {
                    Stomp = function() --[[ Line: 2971 | Upvalues: f8 (ref), Char (copy), v1 (copy), cleanup (copy), f11 (ref), f5 (ref), p1 (copy) ]]
                        local v12 = f8(Char, v1.Stomp)

                        table.insert(cleanup, v12)
                        v12.Anchored = true
                        game.Debris:AddItem(v12, 6)
                        f11(v12)
                        f5({ Char, p1.CutsceneBind }, 2)
                    end,
                    Hit1 = function() --[[ Line: 2982 | Upvalues: f8 (ref), Char (copy), v1 (copy), cleanup (copy), v2 (ref), targChar (copy), f11 (ref), f5 (ref), p1 (copy) ]]
                        local v12 = f8(Char, v1.VictimEffect)

                        table.insert(cleanup, v12)
                        game.Debris:AddItem(v12, 6)
                        v12.Transparency = 1
                        v2 = v12

                        local Weld = Instance.new("Weld")

                        table.insert(cleanup, Weld)
                        Weld.Part0 = targChar.Torso
                        Weld.Part1 = v12
                        Weld.Parent = v12
                        f11(v12)
                        f5({ Char, p1.CutsceneBind }, 2)
                    end,
                    Hit2 = function() --[[ Line: 3000 | Upvalues: f5 (ref), Char (copy), p1 (copy), f11 (ref), v2 (ref) ]]
                        f5({ Char, p1.CutsceneBind }, 2)
                        f11(v2)
                    end,
                    Rotation = function() --[[ Line: 3005 | Upvalues: v1 (copy), cleanup (copy), Char (copy), f11 (ref), f10 (ref), t (copy) ]]
                        local v12 = v1.SpinKick:Clone()

                        table.insert(cleanup, v12)
                        game.Debris:AddItem(v12, 6)
                        v12.Parent = workspace.Thrown

                        local v3 = v1.BodyRotation:Clone()

                        table.insert(cleanup, v3)
                        game.Debris:AddItem(v3, 6)
                        v3.Parent = workspace.Thrown

                        local Weld = Instance.new("Weld")

                        Weld.Part0 = Char["Left Leg"]
                        Weld.Part1 = v12
                        Weld.Parent = v12
                        Weld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(0, math.pi, 0)

                        local Weld2 = Instance.new("Weld")

                        Weld2.Part0 = Char.Torso
                        Weld2.Part1 = v3
                        Weld2.Parent = v3
                        table.insert(cleanup, Weld)
                        table.insert(cleanup, Weld2)
                        f11(v12)
                        f10(v12, true)
                        f10(v3, true)

                        for k, v in pairs({ v3, v12 }) do
                            table.insert(t, v)
                        end
                    end,
                    Hit3 = function() --[[ Line: 3040 | Upvalues: f5 (ref), Char (copy), p1 (copy), t (copy), f10 (ref), f11 (ref), v2 (ref) ]]
                        f5({ Char, p1.CutsceneBind }, 2)

                        for k, v in pairs(t) do
                            f10(v, false)
                        end

                        f11(v2)
                    end,
                    Hit4 = function() --[[ Line: 3050 | Upvalues: f5 (ref), Char (copy), p1 (copy), f11 (ref), v2 (ref) ]]
                        f5({ Char, p1.CutsceneBind }, 2)
                        f11(v2)
                    end,
                    Hit5 = function() --[[ Line: 3056 | Upvalues: f5 (ref), Char (copy), p1 (copy), f11 (ref), v2 (ref), v1 (copy), f8 (ref), cleanup (copy) ]]
                        f5({ Char, p1.CutsceneBind }, 4, 0.5)
                        f11(v2)

                        for k, v in pairs({ v1.Knockback, v1.KnockbackDust }) do
                            local v12 = f8(Char, v)

                            v12.Anchored = true
                            game.Debris:AddItem(v12, 5)
                            table.insert(cleanup, v12)
                            f11(v12)
                        end
                    end
                },
                sendingdata = p1,
                cleanup = cleanup
            })
        end
    },
    ["Time Shift"] = {
        StartupFunction = function(p1) --[[ StartupFunction | Line: 3083 | Upvalues: TweenService (copy), t (copy), f8 (copy), f5 (copy), f14 (copy) ]]
            local Char = p1.Char
            local PrimaryPart = p1.Char.PrimaryPart
            local targChar = p1.targChar
            local cleanup = p1.cleanup
            local RealAnim = p1.RealAnim
            local v1 = script.RealAssets["Time Shift"]
            local v2 = TweenService
            local t2 = {}

            for k, v in pairs(Char:GetChildren()) do
                if v:IsA("BasePart") then
                    t2[v.Name] = v.CFrame
                end
            end

            local v3 = game.ReplicatedStorage.Resources.Clone_Rig:Clone()

            table.insert(cleanup, v3)
            game.Debris:AddItem(v3, 9)
            v3.Parent = workspace.Thrown
            v3.PrimaryPart.Anchored = true
            v3.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
            v3.Humanoid:ApplyDescription(Char.Humanoid:GetAppliedDescription())
            table.insert(t, v3)

            for k, v in pairs(v3:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CollisionGroup = "untouchable"
                    v.Massless = true
                    v.CanCollide = false
                    v.CanTouch = false
                    v.CanQuery = false
                    v.Anchored = false
                end
            end

            v3.PrimaryPart.Anchored = true
            v3:SetPrimaryPartCFrame(PrimaryPart.CFrame * CFrame.new(0, 1000, 0))
            task.delay(0.65, function() --[[ Line: 3127 | Upvalues: v3 (copy), PrimaryPart (copy) ]]
                if not (v3 and v3.Parent) then
                    return
                end

                v3:SetPrimaryPartCFrame(PrimaryPart.CFrame)
            end)

            local Animation = Instance.new("Animation")

            game.Debris:AddItem(Animation, 6)
            table.insert(cleanup, Animation)
            Animation.AnimationId = "rbxassetid://125313562401655"

            local v5 = v3.Humanoid:LoadAnimation(Animation)

            v5:Play()
            v5.TimePosition = RealAnim.TimePosition

            local function ye(p1, p2) --[[ ye | Line: 3143 | Upvalues: cleanup (copy) ]]
                table.insert(cleanup, p1)
                game.Debris:AddItem(p1, p2)
            end

            f14({
                DontDisconnectMarkers = false,
                anim = RealAnim,
                markers = {
                    MirageFade = function() --[[ Line: 3152 | Upvalues: v3 (copy), v1 (copy), f8 (ref), Char (copy), v2 (copy) ]]
                        local v12 = v3
                        local v22 = v1.RigClone:Clone()

                        v22.Parent = workspace.Thrown

                        for v32, v4 in v22:GetChildren() do
                            if v4:IsA("BasePart") and v12:FindFirstChild((tostring(v4))) then
                                v4.CFrame = v12[v4.Name].CFrame
                                v4.Color = Color3.fromRGB(0, 0, 0)
                                v4.Material = Enum.Material.Neon
                            end
                        end

                        f8(Char, v1.Shine).Shine:Emit(7)

                        local v5 = v1.SparkleDestroy.Stars:Clone()

                        v5.Parent = v22.Head
                        v5.Enabled = true

                        local t = {
                            Size = Vector3.new(1.2, 0, 1.2),
                            CFrame = v22.Head.CFrame * CFrame.new(0, -0.6, 0)
                        }

                        v2:Create(v22.Head, TweenInfo.new(0.25, Enum.EasingStyle.Linear), t):Play()

                        local v7 = f8(Char, v1.InkPool)

                        v7.Splash.Enabled = true
                        game.Debris:AddItem(v7, 7)
                        task.wait(0.25)
                        v5.Enabled = false
                        v22.Head.Transparency = 1

                        for v8, v9 in v22:GetChildren() do
                            if v9.Name == "Torso" or (v9.Name == "Right Arm" or v9.Name == "Left Arm") then
                                local t2 = {}

                                t2.Size = Vector3.new(v9.Size.X, 0, v9.Size.Z)
                                t2.CFrame = v9.CFrame * CFrame.new(0, -1, 0)
                                v2:Create(v9, TweenInfo.new(0.5, Enum.EasingStyle.Linear), t2):Play()

                                local v10 = v1.SparkleDestroy.Stars:Clone()

                                v10.Parent = v9
                                v10.Enabled = true
                                task.spawn(function() --[[ Line: 3201 | Upvalues: v10 (copy), v9 (copy) ]]
                                    task.wait(0.5)
                                    v10.Enabled = false
                                    v9.Transparency = 1
                                    task.wait(0.5)
                                    v9:Destroy()
                                end)
                            end
                        end

                        task.wait(0.5)
                        v22.Head:Destroy()

                        for v11, v122 in v22:GetChildren() do
                            if v122.Name == "Right Leg" or v122.Name == "Left Leg" then
                                local t2 = {}

                                t2.Size = Vector3.new(v122.Size.X, 0, v122.Size.Z)
                                t2.CFrame = v122.CFrame * CFrame.new(0, -1, 0)
                                v2:Create(v122, TweenInfo.new(0.5, Enum.EasingStyle.Linear), t2):Play()

                                local v13 = v1.SparkleDestroy.Stars:Clone()

                                v13.Parent = v122
                                v13.Enabled = true
                                task.spawn(function() --[[ Line: 3226 | Upvalues: v13 (copy), v122 (copy) ]]
                                    task.wait(0.5)
                                    v13.Enabled = false
                                    v122.Transparency = 1
                                    task.wait(0.5)
                                    v122:Destroy()
                                end)
                            end
                        end

                        v7.Splash.Enabled = false
                    end,
                    DelayedBarrage = function() --[[ Line: 3240 | Upvalues: f8 (ref), Char (copy), v1 (copy), cleanup (copy), f5 (ref), targChar (copy) ]]
                        local v12 = f8(Char, v1.DelayedBarrageCenter)

                        game.Debris:AddItem(v12, 10)
                        table.insert(cleanup, v12)
                        game.Debris:AddItem(v12, 7)

                        for i = 1, 5 do
                            f5({ Char, targChar }, math.random(1, 5))

                            if not (v12 and v12.Parent) then
                                return
                            end

                            local v3 = v1.Punches:GetChildren()[math.random(1, 3)]:Clone()

                            table.insert(cleanup, v3)
                            game.Debris:AddItem(v3, 4)
                            v3.Parent = workspace.Thrown
                            game.Debris:AddItem(v3, 2)
                            v3.CFrame = CFrame.lookAt(v12.Position + Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-10, 10) / 10), v12.Attachment.WorldCFrame.Position)

                            for v8, v9 in v3:GetDescendants() do
                                if v9:IsA("ParticleEmitter") then
                                    v9:Emit(v9:GetAttribute("EmitCount"))
                                end
                            end

                            task.wait(0.06)
                        end

                        f5({ Char, targChar }, 5, 0.35)
                    end,
                    DelayedHit = function() --[[ Line: 3268 | Upvalues: targChar (copy), cleanup (copy), f8 (ref), Char (copy), v1 (copy), f5 (ref), v2 (copy) ]]
                        local TimeBubble = targChar.Torso.TimeBubble

                        TimeBubble.Constant:Destroy()
                        table.insert(cleanup, TimeBubble)
                        game.Debris:AddItem(TimeBubble, 5)

                        local v22 = f8(Char, v1.BubbleBreak)

                        f5({ Char, targChar }, 2)
                        table.insert(cleanup, v22)
                        game.Debris:AddItem(v22, 4)

                        for v4, v5 in v22:GetDescendants() do
                            if v5:IsA("ParticleEmitter") then
                                v5:Emit(v5:GetAttribute("EmitCount"))
                                v2:Create(v5, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {
                                    TimeScale = 1
                                }):Play()
                            end
                        end
                    end,
                    CreateClone = function() --[[ Line: 3289 | Upvalues: f8 (ref), Char (copy), v1 (copy), cleanup (copy), f5 (ref), targChar (copy) ]]
                        local v12 = f8(Char, v1.CreateClone)

                        table.insert(cleanup, v12)
                        game.Debris:AddItem(v12, 7)

                        for v3, v4 in v12:GetDescendants() do
                            if v4:IsA("ParticleEmitter") then
                                v4:Emit(v4:GetAttribute("EmitCount"))
                            end
                        end

                        local v5 = f8(Char, v1.BarrageCenter)
                        local Position = v5.Attachment.WorldCFrame.Position

                        table.insert(cleanup, v5)
                        game.Debris:AddItem(v5, 5)

                        local v7 = f8(Char, v1.PunchStreaks)

                        table.insert(cleanup, v7)
                        game.Debris:AddItem(v7, 5)
                        v7.Attachment.Flare.Enabled = true
                        v7.LineThing.Enabled = true

                        local v9 = f8(Char, v1.BloodSplats)

                        game.Debris:AddItem(v9, 6)
                        table.insert(cleanup, v9)
                        game.Debris:AddItem(v9, 5)

                        for i = 1, 23 do
                            if not (v12 and v12.Parent) then
                                break
                            end

                            local v11 = i % 6 + 1

                            v7:FindFirstChild(v11).Swipe:Emit(1)
                            v7:FindFirstChild(v11).Swipe2:Emit(1)
                            v7.Shine:Emit(1)
                            f5({ Char, targChar }, Random.new():NextNumber(0.9, 1.35))

                            local v122 = v1.BarrageFirst:Clone()

                            v122.Parent = workspace.Thrown
                            table.insert(cleanup, v122)
                            game.Debris:AddItem(v122, 2)
                            v122.CFrame = CFrame.lookAt(v5.Position + Vector3.new(math.random(-20, 20) / 10, math.random(-20, 20) / 10, math.random(-10, 10) / 10), Position)

                            for v17, v18 in v122:GetDescendants() do
                                if v18:IsA("ParticleEmitter") then
                                    v18:Emit(v18:GetAttribute("EmitCount"))
                                end
                            end

                            if i % 2 == 0 then
                                v9.Blood:Emit(1)
                            end

                            if i > 6 then
                                if i > 14 then
                                    task.wait(0.02)

                                    continue
                                end

                                task.wait(0.06)

                                continue
                            end

                            task.wait(0.08)
                        end

                        if v7 and v7.Parent then
                            v7.Attachment.Flare.Enabled = false
                            v7.LineThing.Enabled = false
                        end
                    end,
                    Land = function() --[[ Line: 3359 | Upvalues: f8 (ref), Char (copy), v1 (copy), cleanup (copy) ]]
                        local v12 = f8(Char, v1.Land)

                        table.insert(cleanup, v12)
                        game.Debris:AddItem(v12, 5)

                        for v3, v4 in v12:GetDescendants() do
                            if v4:IsA("ParticleEmitter") then
                                v4:Emit(v4:GetAttribute("EmitCount"))
                            end
                        end

                        local v5 = v1.ArmTrails.ArmTrail:Clone()

                        v5.Parent = Char["Left Arm"]
                        game.Debris:AddItem(v5, 2)
                        v5.Circle.Circle:Emit(1)

                        local v6 = v1.ArmTrails.ArmTrail:Clone()

                        v6.Parent = Char["Right Arm"]
                        game.Debris:AddItem(v6, 2)
                        v6.Circle.Circle:Emit(1)

                        for k, v in pairs({ v6, v5 }) do
                            table.insert(cleanup, v)
                            game.Debris:AddItem(v, 5)
                        end

                        task.wait(1.2)

                        if v12 and v12.Parent then
                            v5.Bottom.Stars.Enabled = false
                            v6.Bottom.Stars.Enabled = false
                        end
                    end,
                    EnemyFlingBack = function() --[[ Line: 3393 | Upvalues: RealAnim (copy), f8 (ref), Char (copy), v1 (copy), f5 (ref), targChar (copy), cleanup (copy) ]]
                        task.wait(0.35)

                        if not RealAnim.IsPlaying then
                            return
                        end

                        local v12 = f8(Char, v1.TimeTrap)

                        f5({ Char, targChar }, 3)
                        table.insert(cleanup, v12)
                        game.Debris:AddItem(v12, 5)

                        for v3, v4 in v12:GetDescendants() do
                            if v4:IsA("ParticleEmitter") then
                                v4:Emit(v4:GetAttribute("EmitCount"))
                            end
                        end

                        if not RealAnim.IsPlaying then
                            return
                        end

                        local v5 = v1.TimeBubble.TimeBubble:Clone()

                        table.insert(cleanup, v5)
                        game.Debris:AddItem(v5, 4)
                        v5.Parent = targChar.Torso
                        game.Debris:AddItem(v5, 5)

                        for v7, v8 in v5.Initial:GetDescendants() do
                            if v8:IsA("ParticleEmitter") then
                                v8:Emit(v8:GetAttribute("EmitCount"))
                            end
                        end

                        for i, v in ipairs(v5.Constant:GetChildren()) do
                            v.Enabled = true
                        end

                        v5.Constant.Circle:Emit(1)
                    end,
                    ImpactStart = function() --[[ Line: 3430 | Upvalues: f8 (ref), Char (copy), v1 (copy), f5 (ref), targChar (copy), cleanup (copy), PrimaryPart (copy), RealAnim (copy) ]]
                        local v12 = f8(Char, v1.PunchThrough)

                        f5({ Char, targChar }, 4, 0.35)
                        table.insert(cleanup, v12)
                        game.Debris:AddItem(v12, 4)

                        local Thing = v12.Thing

                        Thing:SetPrimaryPartCFrame(PrimaryPart.CFrame * Thing.Thing:GetAttribute("Offset"))

                        if not RealAnim.IsPlaying then
                            return
                        end

                        v12.BackMore.LensFlare.Enabled = true

                        for i, v in ipairs(v12.Thing.Thing.Constant:GetDescendants()) do
                            if v:IsA("ParticleEmitter") then
                                v.Enabled = true
                            end
                        end

                        for i, v in ipairs(v12.Thing.Thing.Initial:GetDescendants()) do
                            if v:IsA("ParticleEmitter") then
                                v:Emit(v:GetAttribute("EmitCount"))
                            end
                        end

                        task.wait(0.4)

                        if not RealAnim.IsPlaying then
                            return
                        end

                        task.spawn(function() --[[ Line: 3457 | Upvalues: RealAnim (ref), v12 (copy) ]]
                            for i = 1, 16 do
                                if not RealAnim.IsPlaying then
                                    break
                                end

                                if not v12 then
                                    break
                                end

                                v12.Thing:ScaleTo(i % 2 * -1 * (i / 40) + 1)
                                task.wait(0.05)
                            end
                        end)
                        task.wait(0.8)

                        if not RealAnim.IsPlaying then
                            return
                        end

                        f5({ Char, targChar }, 4, 0.1)
                        v12.BackMore.LensFlare.Enabled = false
                        v12.Thing:ScaleTo(1)

                        for i, v in ipairs(v12.Thing.Thing.Constant:GetDescendants()) do
                            if v:IsA("ParticleEmitter") then
                                v.Enabled = false
                            end
                        end

                        for v3, v4 in v12.Boom:GetChildren() do
                            if v4:IsA("ParticleEmitter") then
                                v4:Emit(v4:GetAttribute("EmitCount"))
                            end
                        end
                    end,
                    Roar = function() --[[ Line: 3493 | Upvalues: f5 (ref), Char (copy), targChar (copy), f8 (ref), v1 (copy), cleanup (copy), v2 (copy), RealAnim (copy) ]]
                        f5({ Char, targChar }, 3, 0.4)

                        local v12 = f8(Char, v1.InfernalCircle)

                        table.insert(cleanup, v12)
                        game.Debris:AddItem(v12, 4)

                        for v3, v4 in v12.Ground:GetDescendants() do
                            if v4:IsA("ParticleEmitter") then
                                v4:Emit(v4:GetAttribute("EmitCount"))
                            end
                        end

                        for v5, v6 in v12.Constant:GetDescendants() do
                            if v6:IsA("ParticleEmitter") then
                                v6.Enabled = true
                            end
                        end

                        v12.Constant.Beam.Enabled = true
                        v12.Constant.Beam.Width1 = 10
                        v12.Constant.Beam.Width0 = 5
                        v2:Create(v12.Constant.Beam, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
                            Width1 = 20,
                            Width0 = 10
                        }):Play()
                        task.wait(0.6)

                        if not RealAnim.IsPlaying then
                            return
                        end

                        local v8 = v1.FireArms.FireTrail:Clone()

                        v8.Parent = Char:FindFirstChild("Right Arm")
                        table.insert(cleanup, v8)
                        game.Debris:AddItem(v8, 4)
                        game.Debris:AddItem(v8, 2)

                        for v10, v11 in v8.Hand:GetChildren() do
                            v11:Emit(v11:GetAttribute("EmitCount"))
                        end

                        for v122, v13 in v8:GetDescendants() do
                            if v13:IsA("Trail") then
                                v13.Enabled = true
                            end
                        end

                        task.wait(0.05)

                        if not RealAnim.IsPlaying then
                            return
                        end

                        v2:Create(v12.Constant.Beam, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
                            Width1 = 0,
                            Width0 = 0
                        }):Play()

                        for v15, v16 in v12.Constant:GetDescendants() do
                            if v16:IsA("ParticleEmitter") then
                                v16.Enabled = false
                            end
                        end

                        task.wait(0.2)

                        if not RealAnim.IsPlaying then
                            return
                        end

                        v12.Constant.Beam.Enabled = false
                        task.wait(0.35)

                        if not RealAnim.IsPlaying then
                            return
                        end

                        for v17, v18 in v8:GetDescendants() do
                            if v18:IsA("Trail") then
                                v18.Enabled = false
                            end

                            if v18:IsA("ParticleEmitter") then
                                v18.Enabled = false
                            end
                        end
                    end
                },
                sendingdata = p1,
                cleanup = cleanup
            })
        end
    },
    Pride = {
        StartupFunction = function(p1) --[[ StartupFunction | Line: 3584 ]]
            local Char = p1.Char
            local PrimaryPart = p1.Char.PrimaryPart
            local cleanup = p1.cleanup
            local Pride = script.RealAssets.Pride
            local t = {
                Text = CFrame.new(-1.50000036, -0.225896835, 0.129238129, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                Symbol = CFrame.new(0.1771698, -3, -0.999992371, 0.99999994, -2.48277008e-8, 0, 2.4827699e-8, 1, 8.72372894e-8, 0, -8.72372894e-8, 0.99999994),
                Lines = CFrame.new(0.0299999993, -1.18527019, -0.107999802, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                Head = CFrame.new(0, 1.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                LinesTwo = CFrame.new(-1.67300415, -0.711456299, 0.0506057739, 0.99999994, 3.17196898e-13, 0.0000116825104, -3.17198335e-13, 1, 1.22687085e-13, -0.0000116825104, -1.22690798e-13, 0.99999994)
            }

            local function f1(p1) --[[ Line: 3598 | Upvalues: t (copy), PrimaryPart (copy) ]]
                if p1:IsA("Model") and p1.PrimaryPart then
                    p1 = p1.PrimaryPart
                end

                if not (p1:IsA("Part") or p1:IsA("MeshPart") and t[tostring(p1)]) then
                    return
                end

                p1.Anchored = false
                p1.Massless = true
                p1.CanCollide = false

                local Weld = Instance.new("Weld")

                Weld.Part0 = PrimaryPart
                Weld.Part1 = p1
                Weld.C0 = t[p1.Name]
                Weld.Parent = p1
            end

            local function f2(p12) --[[ Line: 3616 | Upvalues: p1 (copy), Char (copy), cleanup (copy), f1 (copy) ]]
                local v1 = p12:Clone()

                table.insert(p1.cleanup, v1)

                if p12.Name ~= "Text" and p12.Name ~= "LinesTwo" then
                    task.delay(5, function() --[[ Line: 3621 | Upvalues: v1 (copy) ]]
                        if not (v1 and v1.Parent) then
                            return
                        end

                        v1:Destroy("")
                    end)
                end

                v1.Parent = p12.Name == "Text" and Char or workspace.Thrown

                if p12.Name ~= "Text" and p12.Name ~= "LinesTwo" then
                    table.insert(cleanup, v1)
                end

                if tostring(p12) ~= "SteamArm" then
                    f1(v1)
                end

                return v1
            end

            local v3 = f2(Pride.Lines)
            local TweenService = game:GetService("TweenService")
            local v4 = false
            local v5 = nil

            local function f6() --[[ Line: 3658 | Upvalues: v4 (ref), v3 (copy), TweenService (copy), v5 (ref) ]]
                if v4 then
                    return
                end

                v4 = true

                if v3 then
                    TweenService:Create(v3.BeamUp, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                        CFrame = lastpos
                    }):Play()
                    TweenService:Create(v3.PointLight, TweenInfo.new(0.5), {
                        Brightness = 0
                    }):Play()

                    for k, v in pairs(v3:GetDescendants()) do
                        if v:IsA("Beam") then
                            TweenService:Create(v, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                                TextureSpeed = 0.175
                            }):Play()
                            TweenService:Create(v, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
                                Width0 = 0
                            }):Play()
                            TweenService:Create(v, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
                                Width1 = 0
                            }):Play()
                            TweenService:Create(v, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                                Brightness = 0
                            }):Play()
                        end
                    end
                end

                if not v5 then
                    return
                end

                for k, v in pairs(v5:GetDescendants()) do
                    if v:IsA("ParticleEmitter") then
                        TweenService:Create(v, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
                            TimeScale = 0.75
                        }):Play()
                    end
                end
            end

            local function f7() --[[ Line: 3688 | Upvalues: p1 (copy), f6 (copy), f2 (copy), Pride (copy) ]]
                if not (p1.EmoteBind and p1.EmoteBind.Parent) then
                    return f6()
                end

                local v1 = f2(Pride.Text)
                local EmoteBind = p1.EmoteBind

                if EmoteBind then
                    EmoteBind:GetPropertyChangedSignal("Parent"):Connect(function() --[[ Line: 3696 | Upvalues: EmoteBind (copy), v1 (copy) ]]
                        if EmoteBind.Parent then
                            return
                        end

                        game:GetService("Debris"):AddItem(v1, 0)
                    end)

                    if not EmoteBind.Parent then
                        game:GetService("Debris"):AddItem(v1, 0)
                    end
                else
                    game:GetService("Debris"):AddItem(v1, 0)
                end

                for k, v in pairs(v1:GetDescendants()) do
                    if v:IsA("ParticleEmitter") and v:GetAttribute("EmitDelay") then
                        task.delay(v:GetAttribute("EmitDelay"), function() --[[ Line: 3710 | Upvalues: v (copy) ]]
                            v:Emit(v:GetAttribute("EmitCount"))
                            task.delay(5, function() --[[ Line: 3712 | Upvalues: v (ref) ]]
                                if v and v.Parent then
                                    v.TimeScale = 0
                                end
                            end)
                        end)
                    end
                end
            end

            task.delay(1.3399999999999999, function() --[[ Line: 3644 | Upvalues: p1 (copy), f7 (copy) ]]
                if p1.EmoteBind and p1.EmoteBind.Parent then
                    f7()
                end
            end)
            v3.Floor.CFrame = PrimaryPart.CFrame * CFrame.new(0.0299999993, -2.8024292, -0.108000003, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            v3.BeamUp.CFrame = CFrame.new(0, 8.388, 0)
            v3.PointLight.Brightness = 10

            for k, v in pairs(f2(Pride.Symbol):GetDescendants()) do
                if v:IsA("ParticleEmitter") and v:GetAttribute("EmitDelay") then
                    task.delay(v:GetAttribute("EmitDelay"), function() --[[ Line: 3734 | Upvalues: v (copy) ]]
                        if v:GetAttribute("EmitDuration") then
                            task.spawn(function() --[[ Line: 3736 | Upvalues: v (ref) ]]
                                v.Enabled = true
                                task.wait(v:GetAttribute("EmitDuration"))
                                v.Enabled = false
                            end)
                        end

                        v:Emit(v:GetAttribute("EmitCount"))
                    end)
                end
            end

            TweenService:Create(v3.PointLight, TweenInfo.new(0.28, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Brightness = 2
            }):Play()
            v5 = v3

            for k, v in pairs(v5:GetDescendants()) do
                if v:IsA("ParticleEmitter") then
                    v.TimeScale = 1
                end
            end

            for k, v in pairs(v3:GetDescendants()) do
                if v:IsA("Beam") and v:GetAttribute("EmitDuration") then
                    task.spawn(function() --[[ Line: 3758 | Upvalues: p1 (copy), f6 (copy), v (copy), TweenService (copy) ]]
                        if p1.EmoteBind and p1.EmoteBind.Parent then
                            v.Enabled = true
                            v.TextureSpeed = 2.6
                            v.Width1 = 0
                            v.Width0 = 0
                            v.Brightness = 1
                            TweenService:Create(v, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                Width1 = 10
                            }):Play()
                            TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                Width0 = 14
                            }):Play()
                            task.wait(v:GetAttribute("EmitDuration"))
                            v.Enabled = false

                            return
                        end

                        return f6()
                    end)
                end
            end

            for k, v in pairs(v3:GetDescendants()) do
                if v:IsA("ParticleEmitter") then
                    if v:GetAttribute("EmitDelay") then
                        task.delay(v:GetAttribute("EmitDelay"), function() --[[ Line: 3779 | Upvalues: v (copy) ]]
                            v:Emit(v:GetAttribute("EmitCount"))
                        end)
                    end

                    if v:GetAttribute("EmitDuration") then
                        task.spawn(function() --[[ Line: 3784 | Upvalues: v (copy) ]]
                            v.Enabled = true
                            task.wait(v:GetAttribute("EmitDuration"))
                            v.Enabled = false
                        end)
                    end
                end
            end

            task.wait(0.2)

            if p1.EmoteBind and p1.EmoteBind.Parent then
                local v9 = CFrame.new(0, 12, 0)

                for k, v in pairs(v3:GetDescendants()) do
                    if v:IsA("Beam") then
                        TweenService:Create(v, TweenInfo.new(1.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                            TextureSpeed = 0.175
                        }):Play()
                        TweenService:Create(v, TweenInfo.new(1.1, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
                            Width0 = 0
                        }):Play()
                        TweenService:Create(v, TweenInfo.new(1.1, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
                            Width1 = 0
                        }):Play()
                        TweenService:Create(v, TweenInfo.new(1.4, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                            Brightness = 0
                        }):Play()
                    end
                end

                task.wait(0.2)

                if not (p1.EmoteBind and p1.EmoteBind.Parent) then
                    return f6()
                end

                for k, v in pairs(v3:GetDescendants()) do
                    if v:IsA("ParticleEmitter") then
                        TweenService:Create(v, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
                            TimeScale = 0.75
                        }):Play()
                    end
                end

                TweenService:Create(v3.BeamUp, TweenInfo.new(1.7, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                    CFrame = v9
                }):Play()
                task.delay(1, function() --[[ Line: 3820 | Upvalues: v3 (copy), TweenService (copy) ]]
                    if not (v3 and v3.Parent) then
                        return
                    end

                    TweenService:Create(v3.PointLight, TweenInfo.new(0.65), {
                        Brightness = 0
                    }):Play()
                end)

                return
            end

            return f6()
        end
    },
    ["Energy Barrage"] = {
        StartupFunction = function(p1) --[[ StartupFunction | Line: 3831 | Upvalues: f11 (copy), meshes (copy) ]]
            local cleanup = p1.cleanup
            local Char = p1.Char
            local v1 = script.RealAssets["Energy Barrage"]
            local v2 = v1.Charge:Clone()

            v2.Parent = Char["Right Arm"]

            local Part = v2.Part

            Part.Part0 = Char["Right Arm"]
            Part.Part1 = v2
            Part.Parent = Char["Right Arm"]

            for k, v in pairs({ Part, v2 }) do
                table.insert(cleanup, v)
                game.Debris:AddItem(v, 5)
            end

            f11(v2)
            game:GetService("TweenService"):Create(v2.PointLight, TweenInfo.new(1.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                Brightness = 0
            }):Play()

            local v3 = v1.Mesh1:Clone()

            v3.Parent = workspace.Thrown
            game.Debris:AddItem(v3, 5)
            table.insert(cleanup, v3)
            v3:SetPrimaryPartCFrame(Char.PrimaryPart.CFrame * CFrame.new(0.550508738, -0.544127226, -1.98861122, 0.364312619, 0.0203950703, 0.9310534, 0.770004511, 0.555725038, -0.313469112, -0.523802876, 0.83111608, 0.186753333))
            meshes(v3.Start)
        end,
        ManualVfxMarkers = {
            start = function(p1) --[[ Line: 3866 | Upvalues: f11 (copy), meshes (copy) ]]
                local v1 = true

                task.delay(1.25, function() --[[ Line: 3867 | Upvalues: v1 (ref) ]]
                    v1 = false
                end)

                local cleanup = p1.cleanup
                local Char = p1.Char
                local v2 = script.RealAssets["Energy Barrage"]
                local v3 = v2.Flare:Clone()

                v3.Parent = workspace.Thrown
                v3.Anchored = true
                v3.CanCollide = false
                table.insert(cleanup, v3)
                game.Debris:AddItem(v3, 5)

                local v4 = v3
                local Part = v4.Part

                v4.Anchored = false
                Part.Part0 = Char["Right Arm"]
                Part.Part1 = v4
                Part.Parent = Char["Right Arm"]

                local v5 = v2.Shadows:Clone()

                v5.Parent = workspace.Thrown
                v5.Anchored = true
                v5.CanCollide = false
                table.insert(cleanup, v5)
                game.Debris:AddItem(v5, 5)

                local v6 = v5
                local v7 = v2.Blast:Clone()

                v7.Parent = workspace.Thrown
                v7.Anchored = true
                v7.CanCollide = false
                table.insert(cleanup, v7)
                game.Debris:AddItem(v7, 5)

                local v8 = v7
                local PrimaryPart = Char.PrimaryPart

                v6.CFrame = PrimaryPart.CFrame * CFrame.new(0.366658211, -0.647371531, -0.0279288292, 1, 0, 0, 0, 0.954035819, 0.299692631, 0, -0.299692631, 0.954035819)
                v8.CFrame = PrimaryPart.CFrame * CFrame.new(-0.0279541016, -2.68310118, -4.47197533, 1, 0, 0, 0, 1, 0, 0, 0, 1)

                local t = {}

                for k, v in pairs(v2.meshco2:GetChildren()) do
                    local v9 = v:Clone()

                    v9.Parent = workspace.Thrown
                    game.Debris:AddItem(v9, 5)
                    table.insert(cleanup, v9)

                    local t2 = {
                        Mesh1 = CFrame.new(0.0567238331, -3.10474038, -5.71570921, -0.0972452834, -0.0344095677, 0.994665444, -0.59640193, 0.802103937, -0.0305602588, -0.796773493, -0.596192122, -0.0985228345),
                        Mesh2 = CFrame.new(0.0790758133, -3.74736953, -4.53130436, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                        Mesh3 = CFrame.new(0.319773912, 0.860762358, 0.635813951, 0, 0, -1, -0.880613863, 0.473834604, 0, 0.473834604, 0.880613863, 0)
                    }

                    v9:SetPrimaryPartCFrame(PrimaryPart.CFrame * t2[tostring(v9)])
                    table.insert(t, v9)
                end

                local function f10() --[[ Line: 3917 | Upvalues: v6 (copy), v8 (copy), v4 (copy), f11 (ref), t (copy), meshes (ref) ]]
                    for k, v in pairs({ v6, v8, v4 }) do
                        f11(v)
                    end

                    local SpotLight = v8.Light.SpotLight

                    SpotLight.Brightness = 23
                    game:GetService("TweenService"):Create(SpotLight, TweenInfo.new(0.6, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                        Brightness = 0
                    }):Play()

                    for k, v in pairs(t) do
                        meshes(v.Start)
                    end
                end

                local v11 = tick()

                while task.wait(0.1) and (not (tick() - v11 >= 1.5) and (v1 and (v4 and v4.Parent))) do
                    f10()

                    if Char == game.Players.LocalPlayer.Character or p1.targChar == game.Players.LocalPlayer.Character then
                        shared.addshake(2)
                    end
                end
            end
        }
    },
    ["Dragon Combo"] = {
        CanRotate = true,
        ManualVfxMarkers = {
            kick = function(p1) --[[ Line: 3959 | Upvalues: f13 (copy) ]]
                f13({
                    TempWc = true,
                    Part = script.RealAssets["Dragon Combo"].FirstKick,
                    CFrame = p1.Char.PrimaryPart.CFrame * CFrame.new(-0.194038391, 0.110570431, -2.67600632, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                    cleanup = p1.cleanup,
                    Char = p1.Char,
                    WeldData = {
                        DeletionTime = 0.125,
                        Part0 = p1.PrimaryPart
                    }
                })
            end,
            knee = function(p1) --[[ Line: 3975 | Upvalues: f13 (copy) ]]
                f13({
                    TempWc = true,
                    Part = script.RealAssets["Dragon Combo"].SecondKick,
                    CFrame = p1.Char.PrimaryPart.CFrame * CFrame.new(0.419416428, 0.213001251, -2.73835373, 1, 0, 0, 0, 0.987193644, -0.159526601, 0, 0.159526601, 0.987193644),
                    cleanup = p1.cleanup,
                    Char = p1.Char,
                    WeldData = {
                        DeletionTime = 0.125,
                        Part0 = p1.PrimaryPart
                    }
                })
            end,
            elbow = function(p1) --[[ Line: 3992 | Upvalues: f13 (copy) ]]
                f13({
                    TempWc = true,
                    Part = script.RealAssets["Dragon Combo"].Punch,
                    CFrame = p1.Char.PrimaryPart.CFrame * CFrame.new(-0.108257294, 1.001791, -2.73835373, 1, 0, 0, 0, 0.987193644, -0.159526601, 0, 0.159526601, 0.987193644),
                    cleanup = p1.cleanup,
                    Char = p1.Char,
                    WeldData = {
                        DeletionTime = 0.125,
                        Part0 = p1.PrimaryPart
                    }
                })
            end,
            before = function(p1) --[[ Line: 4008 ]]
                local v1 = script.RealAssets["Dragon Combo"].Spin:Clone()

                v1:SetAttribute("CleanupVfx", true)
                game.Debris:AddItem(v1, 4)
                table.insert(p1.cleanup, v1)
                v1.Parent = workspace.Thrown
                v1.CFrame = p1.Char.PrimaryPart.CFrame * CFrame.new(-0.0667285919, 0.276163578, -0.00317764282, 0.938543797, -0.260623813, 0.226298034, 0.241059393, 0.964180171, 0.110667206, -0.247034445, -0.049314931, 0.967751026)
                v1.Anchored = false

                local WeldConstraint = Instance.new("WeldConstraint")

                WeldConstraint.Part0 = p1.Char.PrimaryPart
                WeldConstraint.Part1 = v1
                WeldConstraint.Parent = v1
                game.Debris:AddItem(WeldConstraint, 1)
            end,
            connect = function(p1) --[[ Line: 4028 ]]
                local Char = p1.Char
                local cleanup = p1.cleanup

                local function f1(p1) --[[ Line: 4032 | Upvalues: cleanup (copy) ]]
                    for k, v in pairs(cleanup) do
                        if tostring(v) ~= "Connection" and (typeof(v) ~= "thread" and (v:IsA("Part") and (tostring(v) == p1 and v:GetAttribute("CleanupVfx")))) then
                            return v
                        end
                    end
                end

                for k, v in pairs((f1("Spin")):GetDescendants()) do
                    if v:IsA("ParticleEmitter") then
                        v.Enabled = false
                    end
                end

                local v3 = script.RealAssets["Dragon Combo"].Last:Clone()

                v3:SetAttribute("CleanupVfx", true)
                game.Debris:AddItem(v3, 4)
                table.insert(p1.cleanup, v3)
                v3.Parent = workspace.Thrown
                v3.Anchored = true
                v3.CFrame = p1.Char.PrimaryPart.CFrame * CFrame.new(1.15736961, 2.35800409, -2.05744553, 0.946060956, 0.0924426466, 0.310521185, 0.0847944021, 0.854376137, -0.512690306, -0.312696338, 0.511366844, 0.800453186)

                for k, v in pairs(v3:GetDescendants()) do
                    if v:IsA("ParticleEmitter") then
                        v.Enabled = true
                        v:Emit(v:GetAttribute("EmitCount"))
                    end
                end

                table.insert(p1.cleanup, (task.delay(0.1, function() --[[ Line: 4066 | Upvalues: v3 (copy) ]]
                    if not (v3 and v3.Parent) then
                        return
                    end

                    for k, v in pairs(v3:GetDescendants()) do
                        if v:IsA("ParticleEmitter") and v.Name == "Lines" then
                            v.TimeScale = 0.05
                            game:GetService("TweenService"):Create(v, TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
                                TimeScale = 1
                            }):Play()
                            task.delay(0.8, function() --[[ Line: 4073 | Upvalues: v (copy) ]]
                                v.Enabled = false
                            end)
                        end
                    end
                end)))
            end,
            here = function(p1) --[[ Line: 4082 | Upvalues: f13 (copy) ]]
                f13({
                    TempWc = true,
                    Part = script.RealAssets["Dragon Combo"].Last,
                    CFrame = p1.Char.PrimaryPart.CFrame * CFrame.new(-2.39925194, 0.451612711, -1.62694168, 0.224234238, -0.946514726, 0.232010737, 0.843607068, 0.0693361685, -0.532465816, 0.487900436, 0.31512326, 0.814033866),
                    cleanup = p1.cleanup,
                    Char = p1.Char,
                    WeldData = {
                        DeletionTime = 0.125,
                        Part0 = p1.PrimaryPart
                    }
                })
            end,
            finished = function(p1) --[[ Line: 4098 | Upvalues: f13 (copy) ]]
                f13({
                    TempWc = true,
                    Part = script.RealAssets["Dragon Combo"].LastImpact,
                    CFrame = p1.Char.PrimaryPart.CFrame * CFrame.new(-2, -2.90000057, -2.22402573, 1, 0, 0, 0, 1, 0, 0, 0, 1),
                    cleanup = p1.cleanup,
                    Char = p1.Char,
                    WeldData = {
                        DeletionTime = 0.125,
                        Part0 = p1.PrimaryPart
                    }
                })
            end
        }
    },
    ["Explosive Stomps"] = {
        CanRotate = true,
        DontDisconnectMarkers = true,
        ManualVfxMarkers = {
            stomp = function(p1) --[[ Line: 4121 | Upvalues: f5 (copy), f8 (copy), f11 (copy) ]]
                local Char = p1.Char
                local cleanup = p1.cleanup
                local v1 = script.RealAssets["Explosive Stomps"]

                if p1.stompcount then
                    p1.stompcount = p1.stompcount + 1
                else
                    p1.stompcount = 1
                end

                if p1.stompcount ~= 2 then
                    f5({ Char, p1.targChar }, 2 + p1.stompcount / 10)
                end

                ({
                    function() --[[ Line: 4153 | Upvalues: f8 (ref), Char (copy), v1 (copy), p1 (copy), f11 (ref) ]]
                        local v12 = f8(Char, v1.NormalImpact)

                        table.insert(p1.cleanup, v12)
                        f11(v12)

                        local WeldConstraint = Instance.new("WeldConstraint")

                        WeldConstraint.Parent = v12
                        WeldConstraint.Part0 = v12
                        WeldConstraint.Part1 = Char.PrimaryPart
                        p1.first = v12
                    end,
                    function() --[[ Line: 4161 | Upvalues: f8 (ref), Char (copy), v1 (copy), p1 (copy), f11 (ref), f5 (ref) ]]
                        local v12 = f8(Char, v1.ImpactEnabled)
                        local cleanup = p1.cleanup

                        table.insert(cleanup, v12)
                        f11(v12)

                        local v2 = Char
                        local WeldConstraint = Instance.new("WeldConstraint")

                        WeldConstraint.Parent = v12
                        WeldConstraint.Part0 = v12
                        WeldConstraint.Part1 = v2.PrimaryPart

                        for k, v in pairs(v12:GetDescendants()) do
                            if v:IsA("ParticleEmitter") then
                                task.spawn(function() --[[ Line: 4169 | Upvalues: v (copy) ]]
                                    v.Enabled = true
                                end)
                            end
                        end

                        p1.impactenabled = v12
                        spawn(function() --[[ Line: 4177 | Upvalues: v12 (copy), p1 (ref), f5 (ref), Char (ref) ]]
                            local v1 = tick()

                            while task.wait(0.015) and (not (tick() - v1 >= 3) and (v12 and v12.Parent)) do
                                if p1.stophere then
                                    break
                                end

                                f5({ Char, p1.targChar }, 1)
                            end
                        end)
                    end,
                    function() --[[ Line: 4192 | Upvalues: p1 (copy) ]]
                        p1.stophere = true

                        for k, v in pairs(p1.impactenabled:GetDescendants()) do
                            if v:IsA("ParticleEmitter") then
                                task.spawn(function() --[[ Line: 4197 | Upvalues: v (copy) ]]
                                    v:Emit(v:GetAttribute("EmitCount"))
                                    v.Enabled = false
                                end)
                            end
                        end
                    end,
                    function() --[[ Line: 4205 | Upvalues: p1 (copy) ]]
                        for k, v in pairs(p1.first:GetDescendants()) do
                            if v:IsA("ParticleEmitter") then
                                task.spawn(function() --[[ Line: 4208 | Upvalues: v (copy) ]]
                                    v:Emit(v:GetAttribute("EmitCount"))
                                end)
                            end
                        end
                    end,
                    function() --[[ Line: 4215 | Upvalues: f11 (ref), p1 (copy) ]]
                        f11(p1.first)
                    end,
                    function() --[[ Line: 4218 | Upvalues: f11 (ref), p1 (copy) ]]
                        f11(p1.first)
                    end,
                    function() --[[ Line: 4222 | Upvalues: f8 (ref), Char (copy), v1 (copy), p1 (copy), f11 (ref) ]]
                        local v12 = f8(Char, v1.Impact2)

                        table.insert(p1.cleanup, v12)
                        f11(v12)

                        local WeldConstraint = Instance.new("WeldConstraint")

                        WeldConstraint.Parent = v12
                        WeldConstraint.Part0 = v12
                        WeldConstraint.Part1 = Char.PrimaryPart

                        for k, v in pairs(v12:GetDescendants()) do
                            if v:IsA("ParticleEmitter") then
                                task.spawn(function() --[[ Line: 4230 | Upvalues: v (copy) ]]
                                    v:Emit(v:GetAttribute("EmitCount"))
                                end)
                            end
                        end
                    end
                })[p1.stompcount]()
            end,
            laststomp = function(p1) --[[ Line: 4242 | Upvalues: f8 (copy), f11 (copy) ]]
                local v1 = f8(p1.Char, script.RealAssets["Explosive Stomps"].LastImpact)

                f11(v1)

                for k, v in pairs(v1:GetDescendants()) do
                    if v:IsA("ParticleEmitter") then
                        task.spawn(function() --[[ Line: 4252 | Upvalues: v (copy) ]]
                            v:Emit(v:GetAttribute("EmitCount"))
                        end)
                    end
                end
            end
        }
    },
    ["Boxed Up"] = {
        ManualVfxMarkers = {
            axekick = function(p1) --[[ Line: 4267 | Upvalues: f11 (copy) ]]
                local v1 = script.RealAssets["Boxed Up"].Part:Clone()

                v1.Transparency = 1
                v1.Parent = workspace.Thrown
                game.Debris:AddItem(v1, 5)
                v1.CFrame = p1.Char.PrimaryPart.CFrame * CFrame.new(0.4, -2.75, -4.5)
                task.delay(0.055, function() --[[ Line: 4275 | Upvalues: f11 (ref), v1 (copy) ]]
                    f11(v1)
                end)
                table.insert(p1.cleanup, v1)
            end
        }
    },
    ["Sure Hit"] = {
        TransparencyData = {
            DoTransparency = true,
            TransparencyTime = 0.7
        },
        CutsceneData = {
            Anim = 108626770482262,
            NoLerpAfter = true,
            From = "HumanoidRootPart",
            Offset = CFrame.new(0, 1, 0) * CFrame.Angles(0, math.pi, 0)
        },
        Startup = function(p1) --[[ Startup | Line: 4297 ]]
            local v1 = shared.sfx({
                SoundId = "rbxassetid://92024165829141",
                Volume = 2,
                RollOffMaxDistance = 85,
                Parent = p1.targChar.Torso
            })

            v1:Play()
            table.insert(p1.cleanup, v1)
        end,
        ManualVfxMarkers = {
            rip = function(p1) --[[ Line: 4309 | Upvalues: RealAssets (copy), f11 (copy), f12 (copy), f9 (copy), TweenService (copy) ]]
                local Char = p1.Char
                local Character = game.Players.LocalPlayer.Character
                local v1 = if Character == Char then true elseif Character == p1.targChar then true else false
                local v2 = RealAssets["Head Rip"].Background:Clone()

                v2.Parent = workspace.Thrown
                v2.Anchored = true
                v2.CFrame = Char.PrimaryPart.CFrame * CFrame.new(0, 1, -2) * CFrame.Angles(0, 1.5707963267948966, 0)
                f11(v2)
                f12(p1.targChar.Torso, RealAssets["Head Rip"].Beams, 1.75)

                local v3 = f9("DomainRipEmote", p1.Char)

                TweenService:Create(v3, TweenInfo.new(0.1), {
                    Color = Color3.fromRGB(255, 255, 255)
                }):Play()

                local tbl = {}

                if v1 then
                    for k, v in pairs({ Char, p1.targChar }) do
                        local Highlight = Instance.new("Highlight")

                        Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        Highlight.FillColor = Color3.fromRGB(0, 0, 0)
                        Highlight.FillTransparency = 0
                        Highlight.OutlineTransparency = 1
                        Highlight.Parent = v
                        game.Debris:AddItem(Highlight, 5)
                        table.insert(p1.cleanup, Highlight)
                        table.insert(tbl, Highlight)
                    end
                end

                wait(1.8)

                for k, v in pairs(tbl) do
                    game:GetService("TweenService"):Create(v, TweenInfo.new(0.15), {
                        FillTransparency = 1
                    }):Play()
                end

                if not v3 then
                    return
                end

                if v3 then
                    table.remove(p1.cleanup, table.find(p1.cleanup, v3))
                end

                pcall(function() --[[ Line: 4364 | Upvalues: v3 (copy), p1 (copy), TweenService (ref) ]]
                    shared.sfx({
                        SoundId = "rbxassetid://103104416579539",
                        Volume = 4,
                        RollOffMaxDistance = 85,
                        CFrame = v3.CFrame
                    }):Play()

                    local Callback = p1.Callback

                    v3:SetAttribute("DelayDeletion", 4)
                    v3.Attachment["1"]:Emit(60)
                    TweenService:Create(v3, TweenInfo.new(0.1), {
                        Transparency = 1
                    }):Play()

                    if not Callback[1] then
                        return
                    end

                    Callback[1]()
                end)
            end,
            touch = function(p1) --[[ Line: 4383 | Upvalues: RealAssets (copy), TweenService (copy) ]]
                local Char = p1.Char
                local Character = game.Players.LocalPlayer.Character
                local v1 = if Character == Char then true else Character == p1.targChar
                local v2 = RealAssets["Head Rip"].DomainRipEmote:Clone()

                game.Debris:AddItem(v2, 8)
                v2.Anchored = true

                if not v1 then
                    v2.Size = v2.Size * 1.5
                end

                v2.Parent = workspace.Thrown
                v2:SetAttribute("Ownership", (tostring(Char)))
                table.insert(p1.cleanup, v2)
                v2.CFrame = Char.PrimaryPart.CFrame * CFrame.new(0, 4, 0)
                TweenService:Create(v2, TweenInfo.new(0.35), {
                    Transparency = 0
                }):Play()
            end
        }
    },
    ["Lethal Beam"] = {
        Tasks = {
            [1.25] = function(p1) --[[ Line: 4413 | Upvalues: TweenService (copy), f5 (copy) ]]
                local Char = p1.Char
                local cleanup = p1.cleanup
                local v1 = script.RealAssets["Lethal Beam"]
                local v2 = v1.Part.Charge:Clone()

                v2:SetAttribute("Beam", true)
                table.insert(cleanup, v2)
                game.Debris:AddItem(v2, 10)
                v2.Parent = Char.Head

                local lethalbeamlight = v1.Light:Clone()

                table.insert(cleanup, lethalbeamlight)
                game.Debris:AddItem(lethalbeamlight, 10)
                lethalbeamlight.Parent = Char.Head
                TweenService:Create(lethalbeamlight, TweenInfo.new(1), {
                    Brightness = 5
                }):Play()
                lethalbeamlight.Name = "lethalbeamlight"

                local targChar = p1.targChar

                spawn(function() --[[ Line: 4440 | Upvalues: v2 (copy), Char (copy), f5 (ref), targChar (copy) ]]
                    local v1 = tick()

                    while task.wait(0.01) and (v2 and v2.Parent) do
                        if not (workspace.Live:FindFirstChild((tostring(Char))) and tick() - v1 <= 0.9) then
                            break
                        end

                        f5({ Char, targChar }, 0.25)
                    end
                end)
            end,
            [2.19] = function(p1) --[[ Line: 4457 | Upvalues: f5 (copy), TweenService (copy) ]]
                local Char = p1.Char
                local targChar = p1.targChar
                local cleanup = p1.cleanup
                local v1 = script.RealAssets["Lethal Beam"]
                local v2 = v1.Part.Ground:Clone()

                table.insert(cleanup, v2)
                game.Debris:AddItem(v2, 10)
                v2.Parent = Char.PrimaryPart

                local v3 = nil

                spawn(function() --[[ Line: 4475 | Upvalues: v2 (copy), Char (copy), f5 (ref), targChar (copy) ]]
                    local v1 = tick()

                    while task.wait(0.01) and (v2 and v2.Parent) do
                        if not (workspace.Live:FindFirstChild((tostring(Char))) and tick() - v1 <= 0.85) then
                            break
                        end

                        f5({ Char, targChar }, 1)
                    end
                end)

                local v4 = task.delay(0.01, function() --[[ Line: 4490 | Upvalues: v2 (copy), v1 (copy), v3 (ref), cleanup (copy), Char (copy) ]]
                    if v2 and v2.Parent then
                        local v12 = v1.Part.Beam:Clone()

                        v3 = v12
                        table.insert(cleanup, v12)
                        game.Debris:AddItem(v12, 10)
                        v12.Parent = Char.PrimaryPart
                    end
                end)

                table.insert(cleanup, v4)
                table.insert(cleanup, (task.delay(0.35, function() --[[ Line: 4504 | Upvalues: v2 (copy), v2 (copy) ]]
                    if not (v2 and v2.Parent) then
                        return
                    end

                    for k, v in pairs(v2:GetChildren()) do
                        v.Enabled = false
                    end
                end)))

                local v6 = task.delay(0.8199999999999998, function() --[[ Line: 4514 | Upvalues: v2 (copy), v3 (ref), Char (copy), TweenService (ref) ]]
                    if not (v2 and v2.Parent) then
                        return
                    end

                    if not v3 then
                        return
                    end

                    for k, v in pairs(v3:GetChildren()) do
                        if v:IsA("Beam") or v:IsA("ParticleEmitter") then
                            v.Enabled = false
                        end
                    end

                    local lethalbeamlight = Char.Head:FindFirstChild("lethalbeamlight")

                    if lethalbeamlight then
                        TweenService:Create(lethalbeamlight, TweenInfo.new(0.65), {
                            Brightness = 0
                        }):Play()
                    end

                    local Charge = Char.Head:FindFirstChild("Charge")

                    if not (Charge and (Charge:IsA("Attachment") and Charge:GetAttribute("Beam"))) then
                        return
                    end

                    for k, v in pairs(Charge:GetChildren()) do
                        v.Enabled = false
                    end

                    game.Debris:AddItem(Charge, 1)
                end)

                table.insert(cleanup, v6)
            end
        }
    },
    ["slice combo"] = {
        CanRotate = true,
        DontDisconnectMarkers = true,
        ManualVfxMarkers = {
            slice = function(p1) --[[ Line: 4555 | Upvalues: f8 (copy), f11 (copy), f5 (copy) ]]
                local function f1() --[[ Line: 4556 | Upvalues: p1 (copy), f8 (ref), f11 (ref) ]]
                    local Char = p1.Char
                    local SliceCombo = script.RealAssets.SliceCombo

                    for k, v in pairs({ SliceCombo.cleave1, SliceCombo.smokesuku }) do
                        local v1 = f8(Char, v)

                        table.insert(p1.cleanup, v1)
                        f11(v1)
                    end
                end

                f1()
                p1.realfunction = f1
                f5({ p1.targChar, p1.Char }, 1.35)
            end,
            tar = function(p1) --[[ Line: 4578 | Upvalues: f8 (copy) ]]
                if not p1.tar then
                    local Char = p1.Char
                    local v1 = f8(Char, script.RealAssets.SliceCombo.tar2)

                    table.insert(p1.cleanup, v1)

                    local WeldConstraint = Instance.new("WeldConstraint")

                    WeldConstraint.Part0 = Char.PrimaryPart
                    WeldConstraint.Part1 = v1
                    WeldConstraint.Parent = v1
                    p1.tar = v1

                    return
                end

                for k, v in pairs(p1.tar:GetChildren()) do
                    v.Enabled = false
                end
            end,
            chop = function(p1) --[[ Line: 4600 | Upvalues: f8 (copy), f11 (copy) ]]
                (function() --[[ Line: 4603 | Upvalues: p1 (copy), f8 (ref), f11 (ref) ]]
                    local Char = p1.Char
                    local SliceCombo = script.RealAssets.SliceCombo

                    for k, v in pairs({ SliceCombo.final2, SliceCombo.finalcleave, SliceCombo.smokesuku2 }) do
                        local v1 = f8(Char, v)

                        table.insert(p1.cleanup, v1)

                        if tostring(v) == "final2" then
                            task.delay(0.053, function() --[[ Line: 4615 | Upvalues: v1 (copy) ]]
                                for k, v in pairs(v1:GetDescendants()) do
                                    if v:IsA("ParticleEmitter") then
                                        v.Enabled = false
                                    end
                                end
                            end)

                            continue
                        end

                        f11(v1)
                    end
                end)()
            end
        }
    },
    Ruthless = {
        DontDisconnectMarkers = true,
        CutsceneData = {
            Anim = 126468024889342,
            From = "HumanoidRootPart",
            ActualPart = "camera",
            NoLerpAfter = true,
            Offset = CFrame.new() * CFrame.Angles(0, math.pi, 0),
            SpecificRig = script.Assets.CamRigWithLetterBox3
        },
        StartupFunction = function(p1) --[[ StartupFunction | Line: 4644 ]]
            local cleanup = p1.cleanup
            local Char = p1.Char
            local v1 = script.RealAssets.RuthlessCombo["Stone Wall"]:Clone()

            game.Debris:AddItem(v1, 5)
            table.insert(cleanup, v1)
            v1.Parent = workspace.Thrown
            v1:SetAttribute("Owner", (tostring(Char)))
            v1:SetPrimaryPartCFrame(Char.PrimaryPart.CFrame * CFrame.new(0, 0, -0.25))

            local sfx = shared.sfx
            local t = {
                SoundId = "rbxassetid://115070297337427",
                Volume = 4,
                Parent = v1.handle
            }

            t.RollOffMaxDistance = if Char == game.Players.LocalPlayer.Character then 150 else 80

            local v3 = sfx(t)

            v3:Play()
            table.insert(cleanup, v3)

            local Animation = Instance.new("Animation")

            game.Debris:AddItem(Animation, 6)
            Animation.AnimationId = "rbxassetid://81929189800796"
            Animation.Parent = workspace.Thrown
            table.insert(cleanup, Animation)

            local v4 = v1.AnimationController:LoadAnimation(Animation)

            v4:Play()

            local v5 = v4.Stopped:Connect(function() --[[ Line: 4674 | Upvalues: v1 (copy), Char (copy) ]]
                if v1 and v1.Parent then
                    v1:SetPrimaryPartCFrame(Char.PrimaryPart.CFrame * CFrame.new(0, 0, -4.5))
                end
            end)

            task.delay(5, function() --[[ Line: 4681 | Upvalues: v5 (ref) ]]
                if v5 then
                    return v5:Disconnect()
                end
            end)
        end,
        ManualVfxMarkers = {
            punch = function(p1) --[[ Line: 4689 | Upvalues: f11 (copy) ]]
                local cleanup = p1.cleanup
                local Char = p1.Char
                local v1

                if Char:FindFirstChild("RuthlessComboPart") then
                    v1 = Char:FindFirstChild("RuthlessComboPart")
                else
                    local v2 = script.RealAssets.RuthlessCombo.RuthlessComboPart:Clone()

                    game.Debris:AddItem(v2, 5)
                    table.insert(cleanup, v2)
                    v2.Parent = Char
                    v2.CFrame = Char.PrimaryPart.CFrame * CFrame.new(0.115600586, 0.263999939, -3.45088959, -1, 0, -8.74227766e-8, 0, 1, 0, 8.74227766e-8, 0, -1)
                    v1 = v2
                end

                if v1 and v1.Parent then
                    f11(v1, Char, {
                        Exclude = v1.BigHit
                    })
                end
            end,
            heavypunch = function(p1) --[[ Line: 4716 | Upvalues: TweenService (copy) ]]
                local cleanup = p1.cleanup
                local Char = p1.Char

                if not Char:FindFirstChild("RuthlessComboPart") then
                    return
                end

                local v1 = script.RealAssets.RuthlessCombo.Wide:Clone()

                v1.CFrame = Char.PrimaryPart.CFrame * CFrame.new(2, 0, -3.65) * CFrame.Angles(0, 1.5707963267948966, 0)
                v1.Parent = workspace.Thrown
                game:GetService("Debris"):AddItem(v1, 5)

                for k, v in pairs(v1:GetDescendants()) do
                    if v:IsA("ParticleEmitter") then
                        shared.resizeparticle(v, 2)
                        v.Speed = NumberRange.new(v.Speed.Min * 1.85, v.Speed.Max * 1.85)
                        v.Lifetime = NumberRange.new(v.Lifetime.Min * 0.5, v.Lifetime.Max * 0.5)
                        v:Emit(v:GetAttribute("EmitCount") * 2)
                    end
                end

                local v2 = nil

                for k, v in pairs(workspace.Thrown:GetChildren()) do
                    if tostring(v) == "Stone Wall" and v:GetAttribute("Owner") == tostring(Char) then
                        v2 = v

                        break
                    end
                end

                table.remove(p1.cleanup, table.find(p1.cleanup, v2))

                for k, v in pairs(v2:GetDescendants()) do
                    if v:IsA("Motor6D") then
                        v:Destroy()

                        continue
                    end

                    if v:IsA("MeshPart") then
                        task.delay(0.6, function() --[[ Line: 4750 | Upvalues: v (copy), TweenService (ref) ]]
                            if not (v and v.Parent) then
                                return
                            end

                            TweenService:Create(v, TweenInfo.new(0.75, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                                Size = Vector3.new(0, 0, 0)
                            }):Play()
                        end)

                        local BodyVelocity = Instance.new("BodyVelocity")

                        BodyVelocity.Parent = v

                        local v3 = Char.PrimaryPart.CFrame.lookVector * math.random(80, 120)
                        local v4 = math.random(10, 30)

                        BodyVelocity.Velocity = v3 + Vector3.new(0, v4, 0) * Random.new():NextNumber(1.2, 1.35)
                        BodyVelocity.MaxForce = Vector3.new(40000, 40000, 40000)
                        game.Debris:AddItem(BodyVelocity, Random.new():NextNumber(0.1, 0.2))

                        local BodyAngularVelocity = Instance.new("BodyAngularVelocity")
                        local v5 = math.random(-10, 10)
                        local v6 = math.random(-5, 5)
                        local random = math.random

                        BodyAngularVelocity.AngularVelocity = Vector3.new(v5, v6, random(-6, 6)) * Random.new():NextNumber(0.5, 1)
                        BodyAngularVelocity.MaxTorque = Vector3.new(2000000000, 2000000000, 2000000000)
                        BodyAngularVelocity.Parent = v
                        game:service("Debris"):AddItem(BodyAngularVelocity, 0.15)
                    end
                end
            end
        }
    },
    Weak = {
        ManualVfxMarkers = {
            start = function(p1) --[[ Line: 4780 ]]
                local Humiliation = script.RealAssets.Humiliation
                local Char = p1.Char
                local cleanup = p1.cleanup

                for k, v in pairs(Humiliation:GetChildren()) do
                    if v:IsA("ParticleEmitter") then
                        local v1 = v:Clone()

                        v1:SetAttribute("HumiliationSpeed", true)
                        v1.Parent = Char["Right Arm"]
                        game.Debris:AddItem(v1, 5)
                        table.insert(cleanup, v1)
                    end
                end

                local v2 = Humiliation.Part.Punchbarrage:Clone()

                v2:SetAttribute("CleanupVfx", true)
                v2.Parent = p1.targChar.Head
                game.Debris:AddItem(v2, 5)
                table.insert(cleanup, v2)

                if Char == game.Players.LocalPlayer.Character or p1.targChar == game.Players.LocalPlayer.Character then
                    local v3 = tick()

                    spawn(function() --[[ Line: 4805 | Upvalues: v3 (copy), v2 (copy) ]]
                        while task.wait(0.01) and (not (tick() - v3 >= 1.075) and v2) do
                            if not v2.Parent then
                                break
                            end

                            shared.addshake(0.65)
                        end
                    end)
                end
            end,
            stop = function(p1) --[[ Line: 4816 ]]
                local cleanup = p1.cleanup

                local function f1(p1) --[[ Line: 4818 | Upvalues: cleanup (copy) ]]
                    for k, v in pairs(cleanup) do
                        if tostring(v) ~= "Connection" and (typeof(v) ~= "thread" and (v:IsA("Attachment") and (tostring(v) == p1 and v:GetAttribute("CleanupVfx")))) then
                            return v
                        end
                    end
                end

                local v2 = f1("Punchbarrage")

                if v2 then
                    for k, v in pairs(v2:GetDescendants()) do
                        if v:IsA("ParticleEmitter") then
                            v.Enabled = false
                        end
                    end

                    game.Debris:AddItem(v2, 2)
                end

                for k, v in pairs(p1.Char["Right Arm"]:GetChildren()) do
                    if v.Name:find("Speedlines") and v:GetAttribute("HumiliationSpeed") then
                        v.Enabled = false
                        task.delay(1, function() --[[ Line: 4844 | Upvalues: v (copy) ]]
                            if v and v.Parent then
                                return v:Destroy()
                            end
                        end)
                    end
                end
            end,
            crack = function(p1) --[[ Line: 4853 | Upvalues: f11 (copy) ]]
                local Char = p1.Char
                local cleanup = p1.cleanup
                local v1 = script.RealAssets.Humiliation.Part.Necksnap:Clone()

                v1.Parent = p1.targChar.Head
                game.Debris:AddItem(v1, 10)
                f11(v1)
            end
        }
    },
    ["Final Spark"] = {
        CutsceneData = {
            Anim = 81703661217800,
            From = "HumanoidRootPart",
            ActualPart = "CamPart",
            NoLerpAfter = true,
            Offset = CFrame.new(0, -3, 0),
            SpecificRig = script.Assets.CamEntire
        },
        StartupFunction = function(p1) --[[ StartupFunction | Line: 4875 ]]
            local PrimaryPart = p1.Char.PrimaryPart
            local Character = game.Players.LocalPlayer.Character

            if Character == p1.Char or Character == p1.targChar then
                PrimaryPart = game.Players.LocalPlayer.PlayerGui
                Character = 3
            end

            for k, v in pairs({ "rbxassetid://115522807511223", "rbxassetid://115659241517024" }) do
                local v1 = 4.5

                if v == "rbxassetid://115659241517024" then
                    v1 = 1.75
                elseif Character == 3 then
                    v1 = 2.5
                end

                local v2 = shared.sfx({
                    SoundId = v,
                    Parent = PrimaryPart,
                    Volume = v1
                })

                v2:Play()
                table.insert(p1.cleanup, v2)
            end
        end,
        RealModule = script.VfxMods.Flasher
    },
    ["Shadow Eruption"] = {
        CanRotate = true,
        StartupFunction = function(p1) --[[ StartupFunction | Line: 4912 ]]
            local isCharacter = p1.Char == game.Players.LocalPlayer.Character
            local sfx = shared.sfx
            local t = {
                SoundId = "rbxassetid://126167683979349",
                PlaybackSpeed = 1
            }

            t.Parent = isCharacter and game.Players.LocalPlayer.PlayerGui or p1.Char.Torso
            t.Volume = if isCharacter then 3 else 6

            local v3 = sfx(t)

            v3:Play()
            table.insert(p1.cleanup, v3)
        end,
        RealModule = script.VfxMods.ShadowEruption,
        CutsceneData = {
            Anim = 103566103210307,
            From = "HumanoidRootPart",
            ActualPart = "CamPart",
            NoLerpAfter = true,
            Offset = CFrame.new(0, -3, 0, 0.999999881, 0, 2.98023224e-8, 0, 1, 0, 2.98023224e-8, 0, 1.00000024),
            SpecificRig = script.Assets.CamEzee
        }
    },
    ["Energy Explosion"] = {
        CanRotate = true,
        StartupFunction = function(p1) --[[ StartupFunction | Line: 4939 ]] end,
        RealModule = script.VfxMods.EnergyExplosion
    },
    Football1 = {
        StartupFunction = function(p1) --[[ StartupFunction | Line: 4959 ]] end
    },
    Isagi = {
        CutsceneData = {
            Anim = 71352315444179,
            From = "HumanoidRootPart",
            ActualPart = "camera",
            basic = true,
            Offset = CFrame.new(0, -3, 0) * CFrame.Angles(0, math.pi, 0),
            SpecificRig = script.Assets.CamRigWithLetterBox,
            FOV = script.Fovs.BallKick
        },
        RealModule = script.VfxMods.Isagi
    },
    ["True Aura"] = {
        CutsceneData = {
            Anim = 77272264662660,
            From = "HumanoidRootPart",
            ActualPart = "CameraPart",
            NoLerpAfter = true,
            Offset = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
            SpecificRig = script.Assets.CamRigDook
        },
        StartupFunction = function(p1) --[[ StartupFunction | Line: 4993 ]] end,
        RealModule = script.VfxMods.TrueRage
    },
    ["Divine Form"] = {
        CutsceneData = {
            Anim = 123321332402974,
            From = "HumanoidRootPart",
            ActualPart = "CameraPart",
            NoLerpAfter = true,
            Offset = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
            SpecificRig = script.Assets.CamRigNy
        },
        StartupFunction = function(p1) --[[ StartupFunction | Line: 5011 ]]
            local cleanup = p1.cleanup
            local Char = p1.Char
            local isCharacter = Char == game.Players.LocalPlayer.Character
            local sfx = shared.sfx
            local t = {
                SoundId = "rbxassetid://110842657631060"
            }

            t.Parent = isCharacter and game.Players.LocalPlayer.PlayerGui or Char.PrimaryPart
            t.Volume = if isCharacter then 1.35 else 3.25

            local v3 = sfx(t)

            v3:Play()
            table.insert(cleanup, v3)
            task.delay(14, function() --[[ Line: 5025 | Upvalues: v3 (copy), cleanup (copy) ]]
                if not (v3 and v3.Parent) then
                    return
                end

                table.remove(cleanup, table.find(cleanup, v3))
            end)
        end,
        RealModule = script.VfxMods.Evolved
    },
    Embers = {
        DontDisconnectMarkers = true,
        CutsceneData = {
            Anim = 85767288686407,
            From = "HumanoidRootPart",
            ActualPart = "CamPart",
            NoLerpAfter = true,
            NoFov = true,
            EmberDelay = true,
            CustomSpeed = 0.96,
            Offset = CFrame.new(0, -3, 0, 0.999999881, 0, 2.98023224e-8, 0, 1, 0, 2.98023224e-8, 0, 1.00000024),
            SpecificRig = script.Assets.Cam
        },
        ManualVfxMarkers = {
            hit = function(p1) --[[ Line: 5052 ]]
                local Char = p1.Char
                local cleanup = p1.cleanup
                local Part = script.RealAssets.Ember.Part

                if not p1.hitcount then
                    p1.hitcount = 0
                end

                p1.hitcount = p1.hitcount + 1

                local v1 = Char[({
                    "Right Arm",
                    "Left Arm",
                    "Right Arm",
                    "Left Arm"
                })[p1.hitcount]]

                if not v1:FindFirstChild("HitEmber") then
                    for k, v in pairs(Part:GetChildren()) do
                        local v2 = v:Clone()

                        game.Debris:AddItem(v2, 10)
                        table.insert(cleanup, v2)
                        v2.Parent = v1
                    end
                end

                for k, v in pairs(v1:GetChildren()) do
                    if v:IsA("Attachment") and (v.Name == "HitEmber" or v.Name == "Impact") then
                        for k2, v2 in pairs(v:GetChildren()) do
                            v2:Emit(v2:GetAttribute("EmitCount") * 2)
                        end
                    end
                end

                for k, v in pairs({ Char, p1.Victim }) do
                    local cinderhighlight = v:FindFirstChild("cinderhighlight")

                    if cinderhighlight then
                        cinderhighlight:Destroy("")
                    end

                    local cinderhighlight2 = Instance.new("Highlight")

                    cinderhighlight2.Name = "cinderhighlight"
                    cinderhighlight2.DepthMode = Enum.HighlightDepthMode.Occluded
                    cinderhighlight2.FillColor = Color3.fromRGB(0, 0, 0)
                    cinderhighlight2.OutlineColor = Color3.fromRGB(255, 255, 255)
                    cinderhighlight2.OutlineTransparency = 0
                    cinderhighlight2.FillTransparency = 0
                    cinderhighlight2.Parent = v
                    game.Debris:AddItem(cinderhighlight2, 0.1)
                end
            end,
            room = function(p1) --[[ Line: 5112 ]]
                local t = {}
                local Char = p1.Char
                local cleanup = p1.cleanup
                local PrimaryPart = Char.PrimaryPart
                local v1 = if Char == game.Players.LocalPlayer.Character then true elseif p1.targChar == game.Players.LocalPlayer.Character then true else false
                local v2 = script.RealAssets.Ember.ye.Lightning:Clone()

                table.insert(cleanup, v2)
                game.Debris:AddItem(v2, 2)
                v2.Parent = Char["Right Arm"]
                table.insert(t, v2["1"])
                table.insert(t, v2["2"])

                local Ember = script.RealAssets.Ember
                local v5 = Ember.Background:Clone()

                table.insert(t, v5)
                game.Debris:AddItem(v5, 10)
                v5.Parent = workspace.Thrown
                table.insert(cleanup, v5)
                v5.CFrame = PrimaryPart.CFrame * CFrame.new(0.209411621, 1.43823242, -2.70602417, -0.999999881, 0, -2.98023224e-8, 0, 1, 0, -2.98023224e-8, 0, -1.00000024)

                local TweenService = game:GetService("TweenService")
                local v6 = TweenInfo.new(0.65)
                local t2 = {}

                t2.Transparency = if v1 then 0 else 1
                TweenService:Create(v5, v6, t2):Play()

                local t3 = {
                    Beam1 = CFrame.new(-2.92773438, 0.416320801, -19.6693726, -0.999999881, 0, -2.98023224e-8, 0, 1, 0, -2.98023224e-8, 0, -1.00000024),
                    Beam2 = CFrame.new(0.983093262, 0.266876221, -19.6693726, -0.999999881, 0, 0, 0, 0.99619472, -0.087155737, -2.98023224e-8, -0.0871557519, -0.996194899),
                    Beam3 = CFrame.new(0.983093262, 1.34902954, -19.6693726, -0.999999881, 3.7252903e-9, -2.98023224e-8, 0, 0.991392791, 0.130921587, -2.98023224e-8, 0.130921602, -0.99139297)
                }

                if v1 then
                    for k, v in pairs({ Ember.Beam1, Ember.Beam2, Ember.Beam3 }) do
                        local v8 = v:Clone()

                        table.insert(t, v8)
                        game.Debris:AddItem(v8, 10)
                        v8.Parent = workspace.Thrown
                        table.insert(cleanup, v8)
                        v8.CFrame = PrimaryPart.CFrame * t3[tostring(v)]
                    end
                end

                p1.othertable = t
            end,
            heavy = function(p1) --[[ Line: 5156 | Upvalues: f13 (copy) ]]
                local Char = p1.Char

                f13({
                    Part = script.RealAssets.Ember.End,
                    CFrame = p1.Char.PrimaryPart.CFrame * CFrame.new(0.307342529, 0.379882812, -1.87609863, -0.999999881, 2.98023224e-8, 0, 0, 0, 1, -2.98023224e-8, 1.00000024, 0),
                    cleanup = p1.cleanup,
                    Char = Char
                })
                f13({
                    Part = script.RealAssets.Ember.Impulse,
                    CFrame = p1.Char.PrimaryPart.CFrame * CFrame.new(0.0914611816, -0.338897705, -0.94128418, 0.999999881, -2.98023224e-8, 0, 0, 0, 1, 2.98023224e-8, -1.00000024, 0),
                    cleanup = p1.cleanup,
                    Char = Char
                })

                for k, v in pairs(p1.othertable) do
                    if v:IsA("MeshPart") then
                        game:GetService("TweenService"):Create(v, TweenInfo.new(0.15), {
                            Transparency = 1
                        }):Play()

                        continue
                    end

                    if v:IsA("ParticleEmitter") then
                        v.Enabled = false

                        continue
                    end

                    for k2, v2 in pairs(v:GetDescendants()) do
                        if v2:IsA("Beam") or (v2:IsA("ParticleEmitter") or v2:IsA("PointLight")) then
                            v2.Enabled = false
                        end
                    end
                end

                wait(0.1)
                p1.CutsceneCallback()
            end
        }
    },
    ["Beast Form"] = {
        CutsceneData = {
            Anim = 96912364616540,
            From = "HumanoidRootPart",
            ActualPart = "CamPart",
            smoothin = true,
            smooth = true,
            NoLerp = true,
            smoothtime = 1.25,
            Offset = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
            SpecificRig = script.Assets.CameraRigBeast
        },
        RealModule = script.VfxMods.BeastForm,
        StartupFunction = function(p1) --[[ StartupFunction | Line: 5209 ]]
            local cleanup = p1.cleanup
            local Char = p1.Char
            local isCharacter = Char == game.Players.LocalPlayer.Character
            local sfx = shared.sfx
            local t = {
                SoundId = "rbxassetid://88364589044129"
            }

            t.Parent = isCharacter and game.Players.LocalPlayer.PlayerGui or Char.PrimaryPart
            t.Volume = if isCharacter then 1.35 else 3.25

            local v3 = sfx(t)

            v3:Play()
            table.insert(cleanup, v3)
            task.delay(14, function() --[[ Line: 5223 | Upvalues: v3 (copy), cleanup (copy) ]]
                if not (v3 and v3.Parent) then
                    return
                end

                table.remove(cleanup, table.find(cleanup, v3))
            end)
        end
    },
    ["Lightning Blitz"] = {
        CutsceneData = {
            Anim = 105254849512612,
            From = "HumanoidRootPart",
            ActualPart = "camera",
            NoLerp = true,
            EnableShakeAfter = 7,
            Offset = CFrame.new(0, -3, 0) * CFrame.Angles(0, math.pi, 0),
            SpecificRig = script.Assets.CamRigWithLetterBox4
        },
        RealModule = script.VfxMods.Electric,
        StartupFunction = function(p1) --[[ StartupFunction | Line: 5247 ]]
            local Character = game.Players.LocalPlayer.Character
            local PrimaryPart = Character.PrimaryPart
            local v1

            if Character == p1.Char or Character == p1.targChar then
                PrimaryPart = game.Players.LocalPlayer.PlayerGui
                v1 = 1.35
            else
                v1 = 3
            end

            if p1.Char ~= game.Players.LocalPlayer.Character and p1.targChar ~= game.Players.LocalPlayer then
                PrimaryPart = p1.Char.PrimaryPart
            end

            local v2 = shared.sfx({
                SoundId = "rbxassetid://128625456789881",
                RollOffMaxDistance = 130,
                Parent = PrimaryPart,
                Volume = v1
            })

            v2:Play()
            table.insert(p1.cleanup, v2)
        end
    },
    ["Pocket Dimension"] = {
        CutsceneData = {
            Anim = 89179955166459,
            From = "HumanoidRootPart",
            ActualPart = "CamPart",
            NoLerp = true,
            Offset = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
            SpecificRig = script.Assets.kakashicamrig,
            Fov = script.Fovs.lightningemote
        },
        StartupFunction = function(p1) --[[ StartupFunction | Line: 5289 ]]
            local Character = game.Players.LocalPlayer.Character
            local v1 = if Character == p1.Char then true else Character == p1.targChar
            local cleanup = p1.cleanup

            for k, v in pairs({ "rbxassetid://105476342835741" }) do
                local Torso = p1.Char.Torso

                if v1 then
                    Torso = game.Players.LocalPlayer.PlayerGui
                end

                local v3 = shared.sfx({
                    SoundId = v,
                    Parent = Torso,
                    Volume = if v1 then 2.5 else 4.5
                })

                v3:Play()
                table.insert(cleanup, v3)
                task.delay(0.5, function() --[[ Line: 5318 | Upvalues: v3 (copy) ]]
                    v3.TimePosition = 0.5
                    wait(0.5)
                    v3.TimePosition = 1
                end)
            end
        end,
        RealModule = script.VfxMods.LightningEmote
    },
    ["Last Will"] = {
        StartupFunction = function(p1) --[[ StartupFunction | Line: 5333 ]]
            table.insert(p1.cleanup, (task.delay(2.2, function() --[[ Line: 5334 | Upvalues: p1 (copy) ]]
                if not (p1.RealBind and p1.RealBind.Parent) then
                    return
                end

                if p1.Char == game.Players.LocalPlayer.Character or (p1.targChar == game.Players.LocalPlayer.Character or p1.CutsceneBind == game.Players.LocalPlayer.Character) then
                    p1.CameraPart = shared.CutsceneEvent({
                        Anim = 103941810523228,
                        ActualPart = "camera",
                        DontDestroy = true,
                        Name = "Last Will",
                        smooth = true,
                        Offset = CFrame.new(0, -2.5, 0) * CFrame.Angles(0, math.pi, 0),
                        From = p1.Char.PrimaryPart,
                        SpecificRig = script.Assets.CamRigWithLetterBox,
                        Fov = script.Fovs["Last Will"],
                        Bind = p1.Bind,
                        Char = p1.Char
                    })
                end
            end)))

            local PrimaryPart = p1.Char.PrimaryPart
            local Character = game.Players.LocalPlayer.Character

            if Character == p1.Char or Character == p1.targChar then
                PrimaryPart = game.Players.LocalPlayer.PlayerGui
            end

            local sfx = shared.sfx
            local t = {
                SoundId = "rbxassetid://93643832854840",
                Parent = PrimaryPart
            }

            t.Volume = if PrimaryPart == game.Players.LocalPlayer.PlayerGui then 3 else 5

            local v3 = sfx(t)

            v3:Play()
            table.insert(p1.cleanup, v3)
        end,
        RealModule = script.VfxMods.LastWill,
        ManualVfxMarkers = {
            send = function(p1) --[[ Line: 5389 | Upvalues: f5 (copy) ]]
                local Char = p1.Char
                local targChar = p1.targChar

                if Char ~= game.Players.LocalPlayer.Character and targChar ~= game.Players.LocalPlayer.Character then
                    return
                end

                wait(0.1)

                for k, v in pairs(Char:GetChildren()) do
                    if tostring(v) == "CamRigWithLetterBox" then
                        v:Destroy("")
                    end
                end

                local Position = targChar.PrimaryPart.Position
                local v1 = tick()
                local v2 = nil

                v2 = game:GetService("RunService").Heartbeat:Connect(function() --[[ Line: 5404 | Upvalues: v1 (copy), v2 (ref), Char (copy), Position (copy) ]]
                    if tick() - v1 > 0.1 then
                        workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
                        game.Players.LocalPlayer.CameraMinZoomDistance = 0.5
                        game.Players.LocalPlayer.CameraMaxZoomDistance = 128

                        return v2:Disconnect()
                    end

                    workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
                    workspace.CurrentCamera.FieldOfView = game.Players.LocalPlayer:GetAttribute("S_FOV") or 70
                    game.Players.LocalPlayer.CameraMaxZoomDistance = 45
                    workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame:Lerp(CFrame.new(Char.PrimaryPart.Position, Position), 0.15)
                end)
                task.delay(0.1, function() --[[ Line: 5421 | Upvalues: f5 (ref), Char (copy), p1 (copy) ]]
                    f5({ Char, p1.CutsceneBind }, 4, 0.5)
                end)
            end
        }
    },
    ["Wombo Combo"] = {
        CutsceneData = {
            FindPart = "Cam"
        },
        StartupFunction = function(p1) --[[ StartupFunction | Line: 5434 ]]
            local PrimaryPart = p1.Char.PrimaryPart
            local Character = game.Players.LocalPlayer.Character
            local v1

            if Character == p1.Char or Character == p1.targChar then
                PrimaryPart = game.Players.LocalPlayer.PlayerGui
                v1 = true
                Character = 3
            else
                v1 = false
            end

            if not v1 then
                for k, v in pairs({ p1.Char, p1.targChar }) do
                    spawn(function() --[[ Line: 5449 | Upvalues: v (copy) ]]
                        local v1 = tick()
                        local v2 = false

                        repeat
                            task.wait()

                            for k, v3 in pairs(v.Humanoid:GetPlayingAnimationTracks()) do
                                if v3.Animation.AnimationId == "rbxassetid://138962769294666" or v3.Animation.AnimationId == "rbxassetid://89772127095146" then
                                    v3:Stop(0)
                                    v2 = true
                                end
                            end
                        until v2 or tick() - v1 >= 0.01
                    end)
                end

                for k, v in pairs(p1.Char:GetDescendants()) do
                    if v:GetAttribute("EmoteProperty") then
                        v:Destroy("")
                    end
                end

                local Char = p1.Char
                local v4 = require(Char.CharacterHandler:FindFirstChild("AnimationPlayer") or Char.CharacterHandler:WaitForChild("AnimationPlayer"))

                (function(p1) --[[ Line: 5478 | Upvalues: v4 (copy), Char (copy) ]]
                    return v4.playAnimation(Char:FindFirstChild("Humanoid"), p1)
                end)(140492523431668):Play()
            end

            for k, v in pairs({ "rbxassetid://82448766175600", "rbxassetid://134921734559342" }) do
                local v5 = 4.5

                if v == "rbxassetid://134921734559342" then
                    v5 = 3
                elseif Character == 3 then
                    v5 = 2.5
                end

                local v6 = shared.sfx({
                    SoundId = v,
                    Parent = PrimaryPart,
                    Volume = v5
                })

                v6:Play()
                table.insert(p1.cleanup, v6)
            end
        end,
        RealModule = script.VfxMods["2v1"],
        ManualVfxMarkers = {
            kick = function(p1) --[[ Line: 5511 | Upvalues: f5 (copy) ]]
                local targChar = p1.targChar
                local Char = p1.Char
                local Character = game.Players.LocalPlayer.Character

                if Character == Char or targChar == Character then
                    for k, v in pairs(Char:GetDescendants()) do
                        if v:IsA("Part") and v:GetAttribute("Custom2V1CAM") then
                            v:Destroy("")
                        end
                    end
                end

                if Char ~= game.Players.LocalPlayer.Character then
                    p1.RealAnim:Stop(0.8)

                    return
                end

                local Position = targChar.PrimaryPart.Position
                local v1 = tick()
                local v2 = nil

                v2 = game:GetService("RunService").Heartbeat:Connect(function() --[[ Line: 5531 | Upvalues: v1 (copy), v2 (ref), Char (copy), Position (copy) ]]
                    if tick() - v1 > 0.1 then
                        workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
                        game.Players.LocalPlayer.CameraMinZoomDistance = 0.5
                        game.Players.LocalPlayer.CameraMaxZoomDistance = 128

                        return v2:Disconnect()
                    end

                    workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
                    workspace.CurrentCamera.FieldOfView = game.Players.LocalPlayer:GetAttribute("S_FOV") or 70
                    game.Players.LocalPlayer.CameraMaxZoomDistance = 45
                    workspace.CurrentCamera.CFrame = CFrame.new(Char.PrimaryPart.Position, Position)
                end)
                task.delay(0.1, function() --[[ Line: 5546 | Upvalues: f5 (ref), Char (copy), targChar (copy) ]]
                    f5({ Char, targChar }, 4, 0.5)
                end)
                p1.RealAnim:Stop(0.8)
            end
        }
    },
    Emerge = {
        CutsceneData = {
            Anim = 97448479871185,
            From = "HumanoidRootPart",
            ActualPart = "CamPart",
            NoLerpAfter = true,
            Offset = CFrame.new(0, -3, 0),
            SpecificRig = script.Assets.EmergeCamera
        },
        StartupFunction = function(p1) --[[ StartupFunction | Line: 5566 ]]
            local PrimaryPart = p1.Char.PrimaryPart
            local Character = game.Players.LocalPlayer.Character

            if Character == p1.Char or Character == p1.targChar then
                PrimaryPart = game.Players.LocalPlayer.PlayerGui
            end

            for k, v in pairs({ "rbxassetid://129247679395265", "rbxassetid://115016991259746" }) do
                local v2 = shared.sfx({
                    SoundId = v,
                    Parent = PrimaryPart,
                    Volume = if v == "rbxassetid://129247679395265" then 1.75 else 2.25
                })

                v2:Play()
                table.insert(p1.cleanup, v2)
            end
        end,
        RealModule = script.VfxMods.Emerge
    },
    ["Boundless Rage"] = {
        CutsceneData = {
            Anim = 112471633691073,
            From = "HumanoidRootPart",
            ActualPart = "CamPart",
            NoLerpAfter = true,
            Offset = CFrame.new(0, -2.5, 0),
            SpecificRig = script.Assets.Cam
        },
        RealModule = script.VfxMods.Boundless
    },
    ["Eternal Seal"] = {
        CutsceneData = {
            Anim = 137845184446346,
            From = "HumanoidRootPart",
            ActualPart = "CameraPart",
            NoLerp = true,
            Offset = CFrame.new(0, 0, 0),
            SpecificRig = script.Assets.CamRig
        },
        Tasks = {
            [9] = function(p1) --[[ Line: 5625 ]]
                for k, v in pairs(p1.cleanup) do
                    if typeof(v) == "Instance" and (v.Parent and (v:IsA("Model") and (v.Parent == p1.Char and v:GetAttribute("CameraModel")))) then
                        v:SetAttribute("ForceDestroy", true)

                        local PrimaryPart = p1.Char.PrimaryPart

                        if game.Players.LocalPlayer.Character == p1.Char then
                            local CurrentCamera = workspace.CurrentCamera
                            local v1 = PrimaryPart.CFrame * CFrame.new(0.121032715, 4.415802, 15.8661346, 0.999988973, -0.000791892409, 0.00464361906, -2.88034645e-8, 0.985767841, 0.168112651, -0.00471064448, -0.168110803, 0.985756874)

                            CurrentCamera.CFrame = CFrame.new(v1.Position, (PrimaryPart.CFrame + PrimaryPart.CFrame.lookVector * 10).Position + Vector3.new(0, 2, 0))
                            CurrentCamera.CameraType = Enum.CameraType.Custom

                            local v2 = tick()
                            local v3 = nil

                            v3 = game:GetService("RunService").Heartbeat:Connect(function() --[[ Line: 5642 | Upvalues: v2 (copy), v3 (ref), CurrentCamera (copy), v1 (copy), PrimaryPart (copy) ]]
                                if tick() - v2 > 0.15 then
                                    return v3:Disconnect()
                                end

                                CurrentCamera.CFrame = CFrame.new(v1.Position, (PrimaryPart.CFrame + PrimaryPart.CFrame.lookVector * 10).Position)
                            end)
                        end

                        return
                    end
                end
            end
        }
    },
    ["Final Stand"] = {
        CutsceneData = {
            Anim = 140377514258867,
            From = "HumanoidRootPart",
            NoFov = true,
            SpoofedStart = true,
            ActualPart = "CamPart",
            NoLerp = true,
            Offset = CFrame.new(0, -3, 0),
            SpecificRig = script.Assets.Cam
        },
        RealModule = script.VfxMods.FS
    },
    Wipe = {
        ManualVfxMarkers = {
            laser = function(p1) --[[ Line: 5687 ]]
                for k, v in pairs(p1.Char:FindFirstChild("forget device"):GetDescendants()) do
                    if v:IsA("ParticleEmitter") then
                        v:Emit(v:GetAttribute("EmitCount"))
                    end
                end
            end
        },
        CutsceneData = {
            Anim = 101909265258573,
            NoLerpAfter = true,
            From = "HumanoidRootPart",
            Offset = CFrame.new(3, -0.75, -2.85) * CFrame.Angles(0, -1.5707963267948966, 0)
        }
    },
    ["Heart Strike"] = {
        TransparencyData = {
            DoTransparency = true,
            TransparencyTime = 1.95,
            FirstDelay = 1.8
        },
        ManualVfxMarkers = {
            TP = function(p1) --[[ Line: 5715 | Upvalues: f5 (copy), f11 (copy) ]]
                f5({ p1.targChar, p1.Char }, 2)

                local v1 = script.RealAssets["Heart Strike"].TP:Clone()

                game.Debris:AddItem(v1, 4)
                v1.Parent = workspace.Thrown
                v1.CFrame = p1.Char.PrimaryPart.CFrame
                table.insert(p1.cleanup, v1)
                f11(v1)
            end,
            TP1 = function(p1) --[[ Line: 5733 | Upvalues: f5 (copy), f11 (copy) ]]
                f5({ p1.targChar, p1.Char }, 2)

                local Char = p1.Char
                local cleanup = p1.cleanup
                local v1 = script.RealAssets["Heart Strike"].TP2:Clone()

                game.Debris:AddItem(v1, 4)
                v1.Parent = Char
                v1.CFrame = Char.Torso.CFrame
                table.insert(cleanup, v1)
                f11(v1)

                local v2 = script.RealAssets["Heart Strike"].RealLightning:Clone()

                table.insert(cleanup, v2)
                game.Debris:AddItem(v2, 5)
                v2.Parent = Char

                local Weld = v2:FindFirstChildOfClass("Weld")

                Weld.Part1 = v2
                Weld.Part0 = Char["Right Arm"]
            end,
            lightning = function(p1) --[[ Line: 5759 | Upvalues: f5 (copy) ]]
                spawn(function() --[[ Line: 5762 | Upvalues: f5 (ref), p1 (copy) ]]
                    local v1 = tick()

                    while task.wait(0.05) and not (tick() - v1 >= 0.6) do
                        f5({ p1.targChar, p1.Char }, Random.new():NextNumber(1.25, 2.25))
                    end
                end)

                local Char = p1.Char
                local v1 = script.RealAssets["Heart Strike"].Shock:Clone()

                table.insert(p1.cleanup, v1)
                game.Debris:AddItem(v1, 5)
                v1.Parent = workspace.Thrown
                v1.CFrame = Char.PrimaryPart.CFrame * CFrame.new(0, 0, 3)
                task.delay(1.65, function() --[[ Line: 5785 | Upvalues: v1 (copy), Char (copy) ]]
                    if not v1 or v1 and not v1.Parent then
                        return
                    end

                    if Char:FindFirstChild("RealLightning") then
                        for k, v in pairs(Char.RealLightning:GetDescendants()) do
                            if v:IsA("Trail") or (v:IsA("ParticleEmitter") or v:IsA("Beam")) then
                                v.Enabled = false
                            end
                        end
                    end

                    for k, v in pairs(v1:GetDescendants()) do
                        if v:IsA("ParticleEmitter") then
                            v.Enabled = false
                        end
                    end
                end)
            end
        }
    },
    ["Fly High"] = {
        Tasks = {
            [2.35] = function(p1) --[[ Line: 5810 ]]
                local Char = p1.Char
                local cleanup = p1.cleanup
                local v1 = script.RealAssets["To Brazil"].Portall:Clone()

                table.insert(cleanup, v1)
                game.Debris:AddItem(v1, 7)
                v1.Parent = Char

                local Weld = v1:FindFirstChildOfClass("Weld")

                table.insert(cleanup, Weld)
                game.Debris:AddItem(Weld, 7)
                Weld.Part0 = Char.PrimaryPart
                Weld.Part1 = v1
                Weld.Parent = Char.PrimaryPart

                for k, v in pairs(v1.Enable:GetChildren()) do
                    if v.Name ~= "BR" then
                        v:Emit(v:GetAttribute("EmitCount"))
                    end
                end

                table.insert(cleanup, (task.delay(2, function() --[[ Line: 5832 | Upvalues: v1 (copy), cleanup (copy) ]]
                    if v1 and v1.Parent then
                        local function d(p1) --[[ d | Line: 5838 | Upvalues: v1 (ref) ]]
                            for k, v in pairs(v1:GetDescendants()) do
                                if v:IsA("ParticleEmitter") and v.Parent.Name:find("Attachment") and (if p1 and v.Parent.Name ~= "Attachment" then false else true) then
                                    v:Emit(v:GetAttribute("EmitCount") / 1.25)
                                end
                            end
                        end

                        d()

                        local v12 = task.delay(1.15, function() --[[ Line: 5851 | Upvalues: v1 (ref), d (copy) ]]
                            local function cal(p1) --[[ cal | Line: 5852 | Upvalues: v1 (ref) ]]
                                for k, v in pairs(v1:GetChildren()) do
                                    if tostring(v) == p1 then
                                        for k2, v2 in pairs(v:GetChildren()) do
                                            v2.Enabled = false
                                        end
                                    end
                                end
                            end

                            for k, v in pairs({ "Beam", "MainPortal" }) do
                                cal(v)
                            end

                            task.delay(0.1, function() --[[ Line: 5863 | Upvalues: v1 (ref), d (ref) ]]
                                if not (v1 and v1.Parent) then
                                    return
                                end

                                v1.Enable.BR:Emit(1)
                                d(true)
                            end)
                        end)

                        table.insert(cleanup, v12)
                    end
                end)))
            end
        },
        CutsceneData = {
            Anim = 85939913851851,
            From = "HumanoidRootPart",
            ActualPart = "camera",
            Offset = CFrame.new(0, -2.5, 0) * CFrame.Angles(0, math.pi, 0),
            SpecificRig = script.Assets.CamRigWithLetterBox2
        }
    },
    ["Sumo Slap"] = {
        DontDisconnectMarkers = true,
        StartupFunction = function(p1) --[[ StartupFunction | Line: 5888 ]]
            local cleanup = p1.cleanup
            local Char = p1.Char
        end,
        RealModule = script.VfxMods.SumoSlap,
        CutsceneData = {
            Anim = 89699265607908,
            From = "HumanoidRootPart",
            ActualPart = "camera",
            NoLerpAfter = true,
            Offset = CFrame.new(0, -3, 0) * CFrame.Angles(0, math.pi, 0),
            SpecificRig = script.Assets.CamRigWIthLetterBoxSumo
        }
    }
}
local t4 = {}

if game:GetService("RunService"):IsClient() then
    game.Players.PlayerRemoving:Connect(function(p1) --[[ Line: 5909 | Upvalues: t4 (copy) ]]
        if not t4[p1] then
            return
        end

        local v1 = t4[p1]

        for k, v in pairs(v1.cleanup) do
            if typeof(v) == "RBXScriptConnection" then
                v:Disconnect()

                continue
            end

            if typeof(v) == "thread" then
                task.cancel(v)

                continue
            end

            if typeof(v) == "Instance" then
                if v:GetAttribute("DelayDeletion") then
                    game.Debris:AddItem(v, v:GetAttribute("DelayDeletion"))

                    continue
                end

                v:Destroy()
            end
        end

        for k, v in pairs(v1.tasks) do
            task.cancel(v)
        end

        t4[p1] = nil
    end)
end

function t3.MainFunction(p1, p2) --[[ MainFunction | Line: 5940 | Upvalues: t3 (copy), f7 (copy), t4 (copy), t (copy), f4 (copy), f6 (copy), f14 (copy) ]]
    local v1 = t3[p2.vfxName]

    assert(v1, "No table data found, put it in.")
    typeof(v1)

    if not p2.Victim then
        p2.Victim = p2.Character
    end

    local Character = p2.Character
    local Victim = p2.Victim
    local t2 = {}
    local v2 = f7(Character.Humanoid, p2.AnimSent)

    if not v2 then
        return
    end

    local t5 = {}
    local t6 = {}
    local v3 = game.Players:FindFirstChild((tostring(Character)))

    if game:GetService("RunService"):IsClient() then
        if not v3 then
            v3 = workspace.Live:FindFirstChild((tostring(Character)))
        end

        if table.find(t4, v3) then
            table.remove(t4, table.find(t4, v3))
        end

        if t4[v3] then
            t4[v3] = nil
        end

        t4[v3] = {
            cleanup = t2,
            tasks = t6
        }
    end

    if Character:GetAttribute("ForcedCFrame") then
        Character:SetAttribute("ForcedCFrame", nil)
    end

    local v4 = nil
    local t7 = {}
    local v5 = false
    local t8 = {
        EmoteCall = true,
        CutsceneCallback = nil,
        Char = Character,
        CleanupTable = t2,
        RealAnim = v2,
        Bind = v4,
        EmoteBind = p2.EmoteBind,
        Callback = t7,
        targChar = Victim,
        cleanup = t2,
        Interrupted = v5,
        CutsceneBind = p2.CutsceneBind
    }

    if p2.RealBind then
        v4 = p2.RealBind
        v4:SetAttribute("EmoteBindThing", true)
        t8.Bind = v4
    end

    if v1.RealModule then
        if not p2.NoInsertion then
            table.insert(t2, v4)
        end

        for k, v in pairs(p2) do
            if not t8[k] then
                t8[k] = v
            end
        end

        spawn(function() --[[ Line: 6026 | Upvalues: t (ref), v1 (copy), t8 (copy) ]]
            t[tostring(v1.RealModule)].FirstEvent(t8)
        end)
    end

    local function f62(p1, p2) --[[ Line: 6031 | Upvalues: Character (copy), t5 (copy) ]]
        if Character:FindFirstChild("SpiderLegs") then
            Character:FindFirstChild("SpiderLegs"):FindFirstChildOfClass("MeshPart").Transparency = 1
        end

        if p2 == 0 then
            for k, v in pairs(t5) do
                k.Transparency = v
            end
        else
            for k, v in pairs(p1:GetDescendants()) do
                if (v:IsA("Part") or (v:IsA("MeshPart") or (v:IsA("Decal") or v:IsA("UnionOperation")))) and not v:GetAttribute("WeaponProperty") then
                    t5[v] = v.Transparency
                    v.Transparency = p2
                end
            end
        end
    end

    local function f72(p1) --[[ Line: 6051 | Upvalues: v5 (ref), t4 (ref), v3 (ref), Character (copy), p2 (copy), t2 (copy), t6 (copy), t5 (copy) ]]
        if v5 then
            return
        end

        v5 = true

        if t4[v3] then
            t4[v3] = nil
        end

        if t4[Character] then
            t4[Character] = nil
        end

        for k, v in pairs(Character.Humanoid:GetPlayingAnimationTracks()) do
            if v.Animation.AnimationId == "rbxassetid://140492523431668" then
                v:Stop()
            end
        end

        local v1 = true

        if p1 then
            local t = {
                Pride = 1.425,
                ["Boss Raid"] = 2.8
            }
            local vfxName = p2.vfxName

            if t[vfxName] and p1 then
                local v2 = t[vfxName]

                if v2 and v2 <= p1 then
                    v1 = false
                end
            end
        end

        for k, v in pairs(t2) do
            if typeof(v) == "RBXScriptConnection" then
                v:Disconnect()

                continue
            end

            if typeof(v) == "thread" then
                task.cancel(v)

                continue
            end

            if v1 and typeof(v) == "Instance" then
                if v:GetAttribute("DelayDeletion") then
                    game.Debris:AddItem(v, v:GetAttribute("DelayDeletion"))

                    continue
                end

                if v:IsA("Sound") then
                    game:GetService("TweenService"):Create(v, TweenInfo.new(0.865), {
                        Volume = 0
                    }):Play()
                    game.Debris:AddItem(v, 0.9)

                    continue
                end

                v:Destroy()
            end
        end

        for k, v in pairs(t6) do
            task.cancel(v)
        end

        local StopEmoteVfx = Instance.new("Accessory")

        StopEmoteVfx.Name = "StopEmoteVfx"
        StopEmoteVfx.Parent = p2.Character
        game.Debris:AddItem(StopEmoteVfx, 1)

        local Character2 = p2.Character

        if Character:FindFirstChild("SpiderLegs") then
            Character:FindFirstChild("SpiderLegs"):FindFirstChildOfClass("MeshPart").Transparency = 1
        end

        for k, v in pairs(t5) do
            k.Transparency = v
        end
    end

    if not (v1.CanRotate or p2.CanRotate) then
        local NoRotate = Instance.new("Accessory")

        NoRotate.Name = "NoRotate"
        NoRotate.Parent = Character
        game.Debris:AddItem(NoRotate, 15)
        table.insert(t2, NoRotate)
    end

    if v1.StartupFunction then
        v1.StartupFunction(t8)
    end

    if v1.TransparencyData then
        local TransparencyData = v1.TransparencyData

        if TransparencyData.FirstDelay then
            table.insert(t6, (task.delay(TransparencyData.FirstDelay, function() --[[ Line: 6150 | Upvalues: f62 (copy), p2 (copy) ]]
                f62(p2.Character, 1)
            end)))
        else
            f62(p2.Character, 1)
        end

        table.insert(t6, (task.delay(TransparencyData.TransparencyTime, function() --[[ Line: 6159 | Upvalues: p2 (copy), Character (copy), t5 (copy) ]]
            local Character2 = p2.Character

            if Character:FindFirstChild("SpiderLegs") then
                Character:FindFirstChild("SpiderLegs"):FindFirstChildOfClass("MeshPart").Transparency = 1
            end

            for k, v in pairs(t5) do
                k.Transparency = v
            end
        end)))
    end

    if v1.Tasks then
        for k, v in pairs(v1.Tasks) do
            local v10 = nil

            v10 = task.delay(k, function() --[[ Line: 6168 | Upvalues: v5 (ref), t2 (copy), v10 (ref), v (copy), t8 (copy) ]]
                if v5 then
                    return
                end

                if table.find(t2, v10) then
                    table.remove(t2, table.find(t2, v10))
                end

                v(t8)
            end)

            local v11 = v10

            table.insert(t2, v11)

            local v12 = v10

            table.insert(t6, v12)
        end
    end

    local Character2 = game.Players.LocalPlayer.Character
    local v13 = if Character2 == Character or Character2 == Victim then true else Character2 == p2.CutsceneBind

    if v1.CutsceneData and v1.CutsceneData.ForOthers then
        v13 = true
    end

    if v1.CutsceneData and v13 then
        local CutsceneData = v1.CutsceneData

        CutsceneData.Char = Character
        CutsceneData.From = f4(Character, CutsceneData.From)
        CutsceneData.AnimSent = v2
        CutsceneData.Bind = v4
        CutsceneData.smooth = true

        local v14 = f6(CutsceneData, t2)

        table.insert(t7, v14)
        t8.CutsceneCallback = v14
    end

    if v1.Startup then
        v1.Startup(t8)
    end

    local v15 = tick()

    if v1.ManualVfxMarkers then
        f14({
            anim = v2,
            markers = v1.ManualVfxMarkers,
            DontDisconnectMarkers = v1.DontDisconnectMarkers,
            sendingdata = t8,
            cleanup = t2
        })
    end

    local v16 = v2.Stopped:Once(function() --[[ Line: 6226 | Upvalues: v15 (copy), f72 (copy) ]]
        f72(tick() - v15)
    end)

    task.delay(0.1, function() --[[ Line: 6231 | Upvalues: v2 (copy), v15 (copy), f72 (copy) ]]
        if v2.IsPlaying then
            return
        end

        f72(tick() - v15)
    end)
    task.delay(15, function() --[[ Line: 6239 | Upvalues: v16 (ref) ]]
        if not v16 then
            return
        end

        v16:Disconnect()
    end)
end

return t3
