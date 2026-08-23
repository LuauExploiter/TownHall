-- Script Path: game:GetService("ReplicatedStorage").Emotes.VFX.VfxMods.libraryNew
-- Took 0.73s to decompile.
-- Executor: Delta (1.0.729.838)

-- https://lua.expert/
local t = {
    EFP = game.Workspace.Thrown
}
local BoatTween = require(script.BoatTween)
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Debris = game:GetService("Debris")

t.MeshEmit = require(script.MeshEmit)
function t.ProcessPart(p1) --[[ Line: 12 | Upvalues: Debris (copy) ]]
    local Maid = p1.Maid
    local Part = p1.Part
    local v1 = p1.Debri or 10
    local v2 = Maid:give(p1.FX:Clone()):GetChildren()

    for i = 1, #v2 do
        local v3 = v2[i]

        Maid:give(v3)
        Debris:AddItem(v3, v1)
        v3.Parent = Part
    end
end
function t.PlayTween(p1, p2, p3) --[[ Line: 28 | Upvalues: BoatTween (copy) ]]
    local v1 = BoatTween:Create(p1, p2)

    v1:Play()

    local v2 = nil
    local v3 = false

    local function cleanup() --[[ cleanup | Line: 34 | Upvalues: v3 (ref), v2 (ref), v1 (copy) ]]
        if v3 then
            return
        end

        v3 = true

        if v2 then
            v2:Disconnect()
        end

        v1:Destroy()
    end

    v2 = v1.Completed:Once(function() --[[ Line: 41 | Upvalues: p3 (copy), v3 (ref), v2 (ref), v1 (copy) ]]
        if p3 then
            p3()
        end

        if v3 then
            return
        end

        v3 = true

        if v2 then
            v2:Disconnect()
        end

        v1:Destroy()
    end)
    task.delay(p2.Time + 0.05, cleanup)
end
t.Maid = require(script.Maid)
t.Bezier = require(script.Bezier)
function t.Impact(p1) --[[ Line: 54 ]]
    local v1 = p1:Clone()

    v1.Parent = game.Lighting
    task.delay(0.1, function() --[[ Line: 57 | Upvalues: v1 (copy) ]]
        v1:Destroy()
    end)
end

local function collectEmitters(p1) --[[ collectEmitters | Line: 64 ]]
    local t = {}
    local count = 0

    if p1:IsA("ParticleEmitter") then
        t[1] = p1

        return t, 1
    end

    local v1 = p1:GetDescendants()

    for i = 1, #v1 do
        local v2 = v1[i]

        if v2:IsA("ParticleEmitter") then
            count = count + 1
            t[count] = v2
        end
    end

    return t, count
end

function t.ChangeParticleColor(p1) --[[ Line: 82 | Upvalues: collectEmitters (copy) ]]
    local Particle = p1.Particle
    local v1 = p1.Position or p1.Pos
    local IsSmoke = p1.IsSmoke
    local v2, v3 = collectEmitters(Particle)

    if not v1 and (Particle:IsA("Model") or Particle:IsA("BasePart")) then
        v1 = Particle:GetPivot().Position
    elseif not v1 and Instance:IsA("Attachment") then
        v1 = Particle.WorldCFrame.Position
    end

    local v4 = p1.Color

    if not v4 and v1 then
        local v5 = RaycastParams.new()

        v5.FilterType = Enum.RaycastFilterType.Include
        v5.FilterDescendantsInstances = { game.Workspace.Map, game.Workspace.Built }

        local v6 = game.Workspace:Raycast(v1, Vector3.new(0, -100, 0), v5)

        if v6 then
            v4 = v6.Instance.Color
        end
    end

    if not v4 then
        return
    end

    local v7 = ColorSequence.new({ ColorSequenceKeypoint.new(0, v4), ColorSequenceKeypoint.new(1, v4) })

    local function isSmokeName(p1) --[[ isSmokeName | Line: 121 ]]
        local v1 = string.lower(p1.Name)

        return string.match(v1, "smoke") or string.match(v1, "dust") or p1.Name == "s"
    end

    for i = 1, v3 do
        local v8
        local v9 = v2[i]

        if IsSmoke then
            local v10 = string.lower(v9.Name)
            local v11 = string.match(v10, "smoke")

            if v11 then
                v8 = v11
            else
                local v12 = string.match(v10, "dust")

                v8 = if v12 then v12 elseif v9.Name == "s" then true else false
            end

            if v8 then
                v9.Color = v7
            end
        else
            v9.Color = v7
        end
    end
end

local v1 = RaycastParams.new()

v1.FilterType = Enum.RaycastFilterType.Include
v1.FilterDescendantsInstances = { game.Workspace.Map }
function t.SetSmoke(p1) --[[ Line: 138 | Upvalues: v1 (copy), collectEmitters (copy) ]]
    local v2 = game.Workspace:Raycast(p1.Anchor.Position, Vector3.new(0, -(p1.Dist or 20), 0), v1)

    if not v2 then
        return
    end

    local Color = v2.Instance.Color
    local v3 = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color), ColorSequenceKeypoint.new(1, Color) })
    local v4, v5 = collectEmitters(p1.FX)

    for i = 1, v5 do
        v4[i].Color = v3
    end

    return v2
end
function t.BindScale(p1) --[[ Line: 160 ]]
    local FX = p1.FX
    local v2 = p1.Maid:give(Instance.new("NumberValue"))

    v2.Value = p1.Init or 1
    v2:giveTask(v2.Changed:Connect(function() --[[ Line: 167 | Upvalues: FX (copy), v2 (copy) ]]
        FX:ScaleTo(v2.Value)
    end))

    return v2
end
function t.Able(p1) --[[ Line: 174 ]]
    local FX = p1.FX

    if not FX then
        warn("Able called with nil FX")

        return
    end

    local v1 = FX:GetDescendants()

    if p1.On then
        for i = 1, #v1 do
            local v2 = v1[i]

            if v2:IsA("ParticleEmitter") then
                v2.Enabled = true

                continue
            end

            if v2:IsA("ObjectValue") and v2:HasTag("MeshEmitter") then
                v2:SetAttribute("Enabled", true)
            end
        end
    else
        for j = 1, #v1 do
            local v3 = v1[j]

            if v3:IsA("ParticleEmitter") then
                v3.Enabled = false

                continue
            end

            if v3:IsA("ObjectValue") and v3:HasTag("MeshEmitter") then
                v3:SetAttribute("Enabled", false)
            end
        end
    end
end
function t.WeldObject(...) --[[ Line: 205 | Upvalues: TweenService (copy) ]]
    local v1, v2, v3, v4, v5, v6 = ...
    local ModuleWelded = v1:Clone()
    local Weld = Instance.new("Weld")

    Weld.Parent = v2
    Weld.Part1 = ModuleWelded.PrimaryPart
    Weld.Part0 = v2
    ModuleWelded.Parent = v2.Parent
    ModuleWelded.Name = "ModuleWelded"

    if v3 then
        local v7 = ModuleWelded:GetDescendants()

        for i = 1, #v7 do
            local v8 = v7[i]

            if v8:IsA("ParticleEmitter") or v8:IsA("Trail") then
                task.delay(v3, function() --[[ Line: 223 | Upvalues: v8 (copy), ModuleWelded (copy) ]]
                    v8.Enabled = false
                    task.wait(2)
                    ModuleWelded:Destroy()
                end)
            end
        end
    else
        if v6 then
            task.delay(v5, function() --[[ Line: 232 | Upvalues: ModuleWelded (copy) ]]
                local v1 = ModuleWelded:GetDescendants()
                local count = 0
                local t = {}

                for i = 1, #v1 do
                    local v2 = v1[i]

                    if v2:IsA("BasePart") then
                        v2.Transparency = 1
                    end
                end

                for j = 1, #v1 do
                    local v3 = v1[j]

                    if v3:IsA("ParticleEmitter") and v3.Enabled or (v3:IsA("Beam") or (v3:IsA("Texture") or v3:IsA("Decal"))) then
                        if v3:IsA("ParticleEmitter") then
                            count = count + 1
                            t[count] = {
                                emitter = v3,
                                count = v3:GetAttribute("EmitCount")
                            }
                        end

                        v3:Destroy()
                    end
                end

                for k = 1, count do
                    local v4 = t[k]

                    if v4.emitter and v4.count then
                        shared.smartEmit(v4.emitter, v4.count)
                    end
                end

                task.wait(3)
                ModuleWelded:Destroy()
            end)

            return
        end

        if v5 then
            task.delay(v5, function() --[[ Line: 267 | Upvalues: ModuleWelded (copy) ]]
                ModuleWelded:Destroy()
            end)

            return
        end

        if not v4 then
            return
        end

        task.delay(v4, function() --[[ Line: 272 | Upvalues: Weld (copy), ModuleWelded (copy), TweenService (ref) ]]
            Weld:Destroy()
            ModuleWelded.Parent = workspace.Thrown
            task.wait(0.08)

            local v1 = ModuleWelded:GetDescendants()

            for i = 1, #v1 do
                local v2 = v1[i]

                if v2:IsA("BasePart") then
                    v2.CanCollide = true

                    continue
                end

                if v2:IsA("ParticleEmitter") then
                    v2.Enabled = false
                end
            end

            task.wait(1.5)

            local v3 = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
            local v4 = ModuleWelded:GetDescendants()
            local v5 = v4

            for j = 1, #v4 do
                local v6 = v5[j]

                if v6:IsA("BasePart") then
                    TweenService:Create(v6, v3, {
                        Transparency = 1
                    }):Play()
                end
            end

            task.wait(0.5)
            ModuleWelded:Destroy()
        end)
    end
end
function t.QuickWeld(p1) --[[ Line: 302 | Upvalues: t (copy) ]]
    local v1 = p1.C0 or CFrame.new(0, 0, 0)
    local v2 = p1.FX:Clone()
    local Weld = Instance.new("Weld")

    if v2:IsA("Model") then
        Weld.Part0 = v2.PrimaryPart
    else
        Weld.Part0 = v2
    end

    local v3 = v2

    Weld.Part1 = p1.P
    Weld.C0 = v1
    Weld.Parent = v3
    v3.Parent = t.EFP
    p1.Maid:give(v3)

    return v3, Weld
end
function t.QuickFX(p1) --[[ Line: 325 | Upvalues: v1 (copy), t (copy) ]]
    local Anchor = p1.Anchor

    if p1.Ray then
        local v12 = game.Workspace:Raycast(Anchor.Position, Vector3.new(0, -10, 0), v1)

        if not v12 then
            return
        end

        local v2, v3, v4 = Anchor:ToOrientation()

        Anchor = CFrame.new(v12.Position) * CFrame.Angles(v2, v3, v4)
    end

    local v5 = p1.FX:Clone()

    if v5:IsA("Model") then
        v5:PivotTo(Anchor)
    elseif v5:IsA("BasePart") then
        v5.CFrame = Anchor
    end

    local v6 = v5

    if v6:IsA("Attachment") then
        v6.Parent = Anchor
    else
        v6.Parent = t.EFP
    end

    p1.Maid:give(v6)

    return v6
end
function t.LifeScale(p1) --[[ Line: 359 ]]
    local Scale = p1.Scale
    local v1 = p1.FX:GetDescendants()

    for i = 1, #v1 do
        local v2 = v1[i]

        if v2:IsA("ParticleEmitter") then
            local Lifetime = v2.Lifetime

            v2.Lifetime = NumberRange.new(Lifetime.Min * Scale, Lifetime.Max * Scale)

            continue
        end

        if v2:IsA("ObjectValue") and v2:HasTag("MeshEmitter") then
            local v3 = v2:GetAttribute("Lifetime")

            v2:SetAttribute("Lifetime", NumberRange.new(v3.Min * Scale, v3.Max * Scale))
        end
    end
end
function t.dtwait(p1) --[[ Line: 376 | Upvalues: RunService (copy) ]]
    local sum = 0

    while sum < p1 do
        sum = sum + RunService.Heartbeat:Wait()
    end

    return sum
end
function t.RaiseZIndex(p1) --[[ Line: 384 | Upvalues: collectEmitters (copy) ]]
    local Count = p1.Count
    local v1, v2 = collectEmitters(p1.FX)

    for i = 1, v2 do
        local v3 = v1[i]

        v3.ZOffset = v3.ZOffset + Count
    end
end

local function getColorMatchPercentage(p1, p2) --[[ getColorMatchPercentage | Line: 394 ]]
    return math.clamp((1 - math.sqrt((p1.R - p2.R) ^ 2 + (p1.G - p2.G) ^ 2 + (p1.B - p2.B) ^ 2) / 1.7320508) * 100, 0, 100)
end

local v2 = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)

function t.PlayAttachment(p1, p2, p3) --[[ Line: 406 | Upvalues: v1 (copy), v2 (copy), t (copy), TweenService (copy), Debris (copy) ]]
    if not p1:IsA("Part") and p1:IsA("Model") then
        local PrimaryPart = p1.PrimaryPart
    end

    local v12 = p3 and p3.MeshIgnore
    local v22 = nil

    if p1:IsA("Attachment") then
        v22 = p1.WorldCFrame.Position
    elseif p1:IsA("BasePart") then
        v22 = p1.Position
    elseif p1:IsA("Model") then
        v22 = p1:GetPivot().Position
    end

    local v3 = p1:GetDescendants()
    local v4 = false

    for i = 1, #v3 do
        local v5 = v3[i]

        if v5:IsA("ParticleEmitter") or v5:IsA("ObjectValue") and v5:HasTag("MeshEmitter") then
            local v6 = string.lower(v5.Name)

            if string.match(v6, "smoke") or (string.match(v6, "dust") or v5.Name == "s") then
                v4 = true

                break
            end
        end
    end

    local v7 = nil

    if v4 and v22 then
        local v8 = game.Workspace:Raycast(v22 + Vector3.new(0, 1, 0), Vector3.new(0, -11, 0), v1)

        if v8 then
            v7 = v8.Instance.Color

            if v8.Instance.Material == Enum.Material.Grass then
                v7 = Color3.fromRGB(106, 57, 9)
            end
        end
    end

    local v10 = if v7 then ColorSequence.new(v7) else nil
    local v122 = p3 and p3.Decrease
    local v13 = p3 and p3.TweenTime or 0.5
    local v14 = v13 == 0.5 and v2 or TweenInfo.new(v13, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)

    for j = 1, #v3 do
        local v15 = v3[j]
        local v16 = v15:IsA("ParticleEmitter")
        local v17 = v15:IsA("ObjectValue") and v15:HasTag("MeshEmitter")

        if v16 or v17 then
            local v18 = v15:GetAttributes()
            local EmitDelay = v18.EmitDelay
            local v19 = v18.RepeatCount or 1
            local RepeatDelay = v18.RepeatDelay
            local EmitCount = v18.EmitCount
            local EmitDuration = v18.EmitDuration

            if v10 then
                local v20 = string.lower(v15.Name)

                if string.match(v20, "smoke") or (string.match(v20, "dust") or v15.Name == "s") then
                    if v17 then
                        v15:SetAttribute("Color", v10)
                    else
                        v15.Color = v10
                    end
                end
            end

            task.spawn(function() --[[ Line: 486 | Upvalues: v19 (copy), EmitDelay (copy), v16 (copy), EmitCount (copy), v15 (copy), v122 (copy), v17 (copy), v12 (copy), EmitDuration (copy), RepeatDelay (copy) ]]
                for i = 1, v19 do
                    if EmitDelay then
                        task.delay(EmitDelay, function() --[[ Line: 489 | Upvalues: v16 (ref), EmitCount (ref), v15 (ref), v122 (ref), v17 (ref), v12 (ref) ]]
                            if v16 and EmitCount then
                                shared.smartEmit(v15, EmitCount / (v122 or 1))

                                return
                            end

                            if not v17 or v12 then
                                return
                            end

                            v15:SetAttribute("EMIT", true)
                        end)
                    elseif v16 and EmitCount then
                        shared.smartEmit(v15, EmitCount / (v122 or 1))
                    elseif v17 and not v12 then
                        v15:SetAttribute("EMIT", true)
                    end

                    if EmitDuration then
                        if v16 then
                            v15.Enabled = true
                        elseif not v12 then
                            v15:SetAttribute("Enabled", true)
                        end

                        task.delay(EmitDuration, function() --[[ Line: 510 | Upvalues: v16 (ref), v15 (ref), v12 (ref) ]]
                            if v16 then
                                v15.Enabled = false

                                return
                            end

                            if v12 then
                                return
                            end

                            v15:SetAttribute("Enabled", false)
                        end)
                    end

                    if RepeatDelay then
                        task.wait(RepeatDelay)
                    end
                end
            end)

            continue
        end

        if v15:IsA("PointLight") then
            if p2 then
                t.PlayTween(v15, {
                    EasingStyle = "Sine",
                    Time = p2,
                    Goal = {
                        Brightness = 0
                    }
                })
            end

            continue
        end

        if v15:IsA("Beam") then
            local v21 = v15:GetAttributes()
            local Duration = v21.Duration

            TweenService:Create(v15, v14, {
                Width0 = v21.Width0,
                Width1 = v21.Width1
            }):Play()

            if Duration then
                task.delay(Duration, function() --[[ Line: 539 | Upvalues: TweenService (ref), v15 (copy), v14 (copy) ]]
                    TweenService:Create(v15, v14, {
                        Width0 = 0,
                        Width1 = 0
                    }):Play()
                end)
            end
        end
    end

    if not p2 then
        return
    end

    Debris:AddItem(p1, p2)
end
function t.Yield(p1) --[[ Line: 551 | Upvalues: t (copy) ]]
    local Char = p1.Char
    local v2 = p1.Event
    local v3 = tick()

    while tick() - v3 < (p1.Time or 5) do
        local v4 = Char:FindFirstChild(v2)

        if v4 then
            return v4
        end

        t.dtwait(0.01)
    end
end
t.FastSpawn = require(script.FastSpawn)
function t.RandomRot() --[[ Line: 567 ]]
    local Angles = CFrame.Angles

    return Angles(0, math.rad((math.random(-360, 360))), 0)
end
function t.PlayMesh(p1) --[[ Line: 571 | Upvalues: t (copy), TweenService (copy) ]]
    task.spawn(function() --[[ Line: 572 | Upvalues: p1 (copy), t (ref), TweenService (ref) ]]
        local Model = p1.Model
        local Start = Model:FindFirstChild("Start")
        local End = Model:FindFirstChild("End")

        if not (Start and End) then
            warn("NO START OR END")

            return
        end

        local v1 = p1.Info or TweenInfo.new(1, Enum.EasingStyle.Sine)
        local Anchor = p1.Anchor
        local v2 = p1.EndT or 1
        local Del = p1.Del
        local Skip = p1.Skip

        Model.PrimaryPart = Start

        if not Skip then
            local v3 = Model:GetChildren()

            for i = 1, #v3 do
                local v4 = v3[i]

                if v4:IsA("BasePart") then
                    v4.CanCollide = false
                    v4.Anchored = true
                end
            end
        end

        if Anchor then
            Model:PivotTo(Anchor)
        end

        if p1.T then
            Start.Transparency = p1.T
        end

        End.Transparency = 1
        Model.Parent = t.EFP

        local SpecialMesh = Start:FindFirstChildOfClass("SpecialMesh")
        local SpecialMesh2 = End:FindFirstChildOfClass("SpecialMesh")
        local Decal = Start:FindFirstChildOfClass("Decal")
        local Decal2 = End:FindFirstChildOfClass("Decal")

        if Decal2 and not Skip then
            Decal2.Transparency = 1
        end

        local count = 0
        local v5

        if Decal then
            local v6 = Start:GetChildren()

            v5 = {}

            for j = 1, #v6 do
                local v7 = v6[j]

                if v7:IsA("Decal") then
                    count = count + 1
                    v5[count] = v7
                end
            end
        else
            v5 = nil
        end

        local Size = End.Size
        local v8 = End.CFrame
        local v9 = SpecialMesh2 and SpecialMesh2.Scale
        local v10 = nil

        if Del then
            TweenService:Create(Start, v1, {
                Size = Size,
                CFrame = v8
            }):Play()
            task.delay(Del, function() --[[ Line: 639 | Upvalues: v10 (ref), TweenService (ref), Start (copy), v1 (copy), v2 (copy), v5 (ref), count (ref), SpecialMesh (copy), v9 (copy) ]]
                v10 = TweenService:Create(Start, v1, {
                    Transparency = v2
                })
                v10:Play()

                if v5 then
                    for i = 1, count do
                        TweenService:Create(v5[i], v1, {
                            Transparency = v2
                        }):Play()
                    end
                end

                if not (SpecialMesh and v9) then
                    return
                end

                TweenService:Create(SpecialMesh, v1, {
                    Scale = v9
                }):Play()
            end)
        else
            if SpecialMesh and v9 then
                TweenService:Create(SpecialMesh, v1, {
                    Scale = v9
                }):Play()
            end

            if v5 then
                for k = 1, count do
                    TweenService:Create(v5[k], v1, {
                        Transparency = v2
                    }):Play()
                end

                v10 = TweenService:Create(Start, v1, {
                    Size = Size,
                    CFrame = v8
                })
            else
                v10 = TweenService:Create(Start, v1, {
                    Size = Size,
                    Transparency = v2,
                    CFrame = v8
                })
            end

            v10:Play()
        end

        if p1.Stay then
            return
        end

        if Del then
            task.wait(Del + 0.1)
        end

        if v10 then
            v10.Completed:Connect(function() --[[ Line: 674 | Upvalues: Model (copy) ]]
                Model:Destroy()
            end)
        else
            Model:Destroy()
        end
    end)
end
function t.PlayFlipBook(p1) --[[ Line: 684 | Upvalues: t (copy), RunService (copy) ]]
    local Mesh = p1.Mesh
    local v1 = p1.Delta or 0.02
    local DWC = p1.DWC
    local v2 = p1.Repeat or 1
    local v3 = p1.FPS or 1
    local Loop = p1.Loop
    local Folder = Mesh:FindFirstChild("Folder")
    local Decal = Mesh:FindFirstChild("Decal")

    if DWC == nil then
        DWC = true
    end

    if not (Folder and Decal) then
        return
    end

    t.FastSpawn(function() --[[ Line: 700 | Upvalues: Folder (copy), v2 (copy), Mesh (copy), v3 (copy), Decal (copy), v1 (copy), RunService (ref), t (ref), DWC (ref) ]]
        local v12 = Folder:GetChildren()
        local v22 = #v12
        local v32 = v12[v22]
        local t2 = {}

        for i = 1, v22 do
            t2[v12[i].Name] = v12[i]
        end

        for j = 1, v2 do
            if not Mesh:IsDescendantOf(game.Workspace) then
                break
            end

            for k = 1, v22, v3 do
                local v4 = t2[tostring(k)] or v32

                if v4 then
                    Decal.Texture = v4.Texture
                end

                if v1 == "Step" then
                    RunService.RenderStepped:Wait()

                    continue
                end

                t.dtwait(v1)
            end
        end

        if not DWC then
            return
        end

        Mesh:Destroy()
    end)
end

local CameraShaker = require(script.CameraShaker)
local Camera = game.Workspace.Camera

local function ShakeCamera(p1) --[[ ShakeCamera | Line: 738 | Upvalues: Camera (copy) ]]
    Camera.CFrame = Camera.CFrame * p1
end

local v4 = CameraShaker.new(Enum.RenderPriority.Camera.Value + 1, ShakeCamera)

function t.CamShake(p1, p2, p3) --[[ Line: 745 | Upvalues: RunService (copy), CameraShaker (copy), v4 (copy) ]]
    if not (RunService:IsClient() and _G.ServerRunning) then
        return
    end

    if p1 == "Stop" then
        CameraShaker:Stop()

        return
    end

    CameraShaker:Stop()

    if not (p3 and p3 < (game.Workspace.CurrentCamera.CFrame.Position - p2).Magnitude) then
        v4:Start()
        v4:Shake(CameraShaker.Presets[p1])

        return true
    end
end
t.EditableMeshShader = require(script.EditableMeshShader)
function t.GlassLight(p1) --[[ Line: 772 ]]
    local Highlight = Instance.new("Highlight")

    Highlight.FillTransparency = 1
    Highlight.OutlineTransparency = 1
    Highlight.Parent = p1
end

return t
