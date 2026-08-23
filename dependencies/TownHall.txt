-- Script Path: game:GetService("ReplicatedStorage").Emotes.VFX.VfxMods.TownHall
-- Took 0.55s to decompile.
-- Executor: Delta (1.0.729.838)

-- https://lua.expert/
return function(p1) --[[ Line: 1 ]]
    local ThisLight = p1:FindFirstChild("ThisLight")
    local t = {}
    local t2 = {}
    local t3 = {}
    local t4 = {}
    local t5 = {}

    (function() --[[ Aura | Line: 11 | Upvalues: p1 (copy), t2 (copy), t3 (copy), t4 (copy), ThisLight (ref), t (copy), t5 (copy) ]]
        game:GetService("Debris")

        local TweenService = game:GetService("TweenService")

        game:GetService("Players")

        local v1 = p1
        local Humanoid = v1:WaitForChild("Humanoid")
        local Thrown = workspace.Thrown
        local Head = v1:WaitForChild("Head")
        local v2 = v1:WaitForChild("Left Arm")
        local v3 = v1:WaitForChild("Right Arm")
        local v4 = v1:WaitForChild("Left Leg")
        local v5 = v1:WaitForChild("Right Leg")
        local Torso = v1:WaitForChild("Torso")

        game:GetService("ReplicatedStorage")

        local modules = script.modules
        local CurrentCamera = workspace.CurrentCamera
        local BoatTween = require(modules.BoatTween)
        local Flipbook = require(modules.Flipbook)
        local BeamAttachment = Instance.new("Attachment")

        BeamAttachment.Name = "BeamAttachment"
        BeamAttachment.Parent = Humanoid.RootPart
        RaycastParams.new().FilterType = Enum.RaycastFilterType.Whitelist

        local function emitparticles(p1, p2) --[[ emitparticles | Line: 47 | Upvalues: TweenService (copy), BoatTween (copy) ]]
            for i, v in ipairs(p1:GetDescendants()) do
                if v:IsA("ParticleEmitter") then
                    task.spawn(function() --[[ Line: 50 | Upvalues: v (copy) ]]
                        local v1 = v:GetAttribute("EmitDelay") or 0
                        local v2 = v:GetAttribute("EmitCount") or 0

                        if v:GetAttribute("EmitDuration") and v:GetAttribute("EmitDuration") > 0 then
                            v.Enabled = true
                            task.wait(v:GetAttribute("EmitDuration"))
                            v.Enabled = false
                        else
                            task.wait(v1)
                            v:Emit(v2)
                        end
                    end)

                    continue
                end

                if v:IsA("PointLight") and v.Name == "SpecialLight" then
                    task.spawn(function() --[[ Line: 64 | Upvalues: v (copy), TweenService (ref) ]]
                        v.Enabled = true

                        local v1 = v:GetAttribute("Brightness")
                        local v2 = v:GetAttribute("Range")

                        TweenService:Create(v, TweenInfo.new(v:GetAttribute("Tween"), Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
                            Brightness = v1,
                            Range = v2
                        }):Play()
                    end)

                    continue
                end

                if v:IsA("Beam") then
                    task.spawn(function() --[[ Line: 75 | Upvalues: v (copy), p2 (copy), BoatTween (ref) ]]
                        local v1 = v:GetAttribute("EmitDuration")
                        local v2 = v:GetAttribute("EmitDelay") or 0
                        local _ = v.Width0 * p2
                        local _2 = v.Width1 * p2

                        task.wait(v2)

                        local Transparency = v.Transparency

                        v.Transparency = NumberSequence.new(1)
                        v.Enabled = true
                        BoatTween:Create(v, {
                            EasingStyle = "Sine",
                            EasingDirection = "In",
                            Time = v1 / 2,
                            Goal = {
                                Transparency = Transparency
                            }
                        }):Play()
                        task.delay(0.5, function() --[[ Line: 100 | Upvalues: BoatTween (ref), v (ref) ]]
                            BoatTween:Create(v, {
                                Time = 0.5,
                                EasingStyle = "Sine",
                                EasingDirection = "In",
                                Goal = {
                                    Transparency = NumberSequence.new(1)
                                }
                            }):Play()
                        end)
                    end)
                end
            end
        end

        local TweenService2 = game:GetService("TweenService")
        local t6 = {}

        local function captureBeamTransparency(p1) --[[ captureBeamTransparency | Line: 131 | Upvalues: t6 (copy) ]]
            local t = {}

            for i, v in ipairs(p1.Transparency.Keypoints) do
                table.insert(t, {
                    Time = v.Time,
                    Value = v.Value
                })
            end

            t6[p1] = t
        end

        local function lerpTransparency(p1, p2, p3) --[[ lerpTransparency | Line: 139 ]]
            local t = {}

            for i, v in ipairs(p1) do
                table.insert(t, NumberSequenceKeypoint.new(v.Time, v.Value + (p2[i].Value - v.Value) * p3))
            end

            return NumberSequence.new(t)
        end

        local function fadeBeam(p1, p2) --[[ fadeBeam | Line: 149 | Upvalues: t6 (copy), captureBeamTransparency (copy), lerpTransparency (copy) ]]
            if not t6[p1] then
                captureBeamTransparency(p1)
            end

            task.spawn(function() --[[ Line: 154 | Upvalues: p1 (copy), t6 (ref), p2 (copy), lerpTransparency (ref) ]]
                local v12 = os.clock()
                local t2 = {}
                local v2 = 0

                for i2, v3 in ipairs(p1.Transparency.Keypoints) do
                    table.insert(t2, {
                        Time = v3.Time,
                        Value = v3.Value
                    })
                end

                local list2 = {}

                for i2, v3 in ipairs(t6[p1]) do
                    local t22 = {
                        Time = v3.Time
                    }

                    t22.Value = p2 and v3.Value or 1
                    table.insert(list2, t22)
                end

                p1.Enabled = true

                if p2 then
                    local t22 = {}

                    for i2, v3 in ipairs(t6[p1]) do
                        local v42 = NumberSequenceKeypoint.new

                        table.insert(t22, v42(v3.Time, 1))
                    end

                    p1.Transparency = NumberSequence.new(t22)
                    t2 = {}

                    for i2, v3 in ipairs(p1.Transparency.Keypoints) do
                        table.insert(t2, {
                            Time = v3.Time,
                            Value = v3.Value
                        })
                    end
                end

                while v2 < 0.25 do
                    v2 = os.clock() - v12
                    p1.Transparency = lerpTransparency(t2, list2, (math.clamp(v2 / 0.25, 0, 1)))
                    task.wait()
                end

                local t22 = {}

                for i2, v3 in ipairs(list2) do
                    table.insert(t22, NumberSequenceKeypoint.new(v3.Time, v3.Value))
                end

                p1.Transparency = NumberSequence.new(t22)

                if p2 then
                    return
                end

                p1.Enabled = false
            end)
        end

        local function enableparticles(p1) --[[ enableparticles | Line: 212 | Upvalues: t6 (copy), captureBeamTransparency (copy), lerpTransparency (copy) ]]
            for i, v in ipairs(p1:GetDescendants()) do
                if v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Enabled = true

                    continue
                end

                if v:IsA("Beam") then
                    if not t6[v] then
                        captureBeamTransparency(v)
                    end

                    local v1 = true

                    task.spawn(function() --[[ Line: 154 | Upvalues: v (copy), t6 (ref), v1 (copy), lerpTransparency (ref) ]]
                        local v12 = os.clock()
                        local t2 = {}
                        local v2 = 0

                        for i2, v3 in ipairs(v.Transparency.Keypoints) do
                            table.insert(t2, {
                                Time = v3.Time,
                                Value = v3.Value
                            })
                        end

                        local list2 = {}

                        for i2, v3 in ipairs(t6[v]) do
                            local t22 = {
                                Time = v3.Time
                            }

                            t22.Value = v1 and v3.Value or 1
                            table.insert(list2, t22)
                        end

                        v.Enabled = true

                        if v1 then
                            local t22 = {}

                            for i2, v3 in ipairs(t6[v]) do
                                local v42 = NumberSequenceKeypoint.new

                                table.insert(t22, v42(v3.Time, 1))
                            end

                            v.Transparency = NumberSequence.new(t22)
                            t2 = {}

                            for i2, v3 in ipairs(v.Transparency.Keypoints) do
                                table.insert(t2, {
                                    Time = v3.Time,
                                    Value = v3.Value
                                })
                            end
                        end

                        while v2 < 0.25 do
                            v2 = os.clock() - v12
                            v.Transparency = lerpTransparency(t2, list2, (math.clamp(v2 / 0.25, 0, 1)))
                            task.wait()
                        end

                        local t22 = {}

                        for i2, v3 in ipairs(list2) do
                            table.insert(t22, NumberSequenceKeypoint.new(v3.Time, v3.Value))
                        end

                        v.Transparency = NumberSequence.new(t22)

                        if v1 then
                            return
                        end

                        v.Enabled = false
                    end)
                end
            end
        end

        local function disableparticles(p1) --[[ disableparticles | Line: 222 | Upvalues: t6 (copy), captureBeamTransparency (copy), lerpTransparency (copy) ]]
            for i, v in ipairs(p1:GetDescendants()) do
                if v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Enabled = false

                    continue
                end

                if v:IsA("Beam") then
                    if not t6[v] then
                        captureBeamTransparency(v)
                    end

                    local v1 = false

                    task.spawn(function() --[[ Line: 154 | Upvalues: v (copy), t6 (ref), v1 (copy), lerpTransparency (ref) ]]
                        local v12 = os.clock()
                        local t2 = {}
                        local v2 = 0

                        for i2, v3 in ipairs(v.Transparency.Keypoints) do
                            table.insert(t2, {
                                Time = v3.Time,
                                Value = v3.Value
                            })
                        end

                        local list2 = {}

                        for i2, v3 in ipairs(t6[v]) do
                            local t22 = {
                                Time = v3.Time
                            }

                            t22.Value = v1 and v3.Value or 1
                            table.insert(list2, t22)
                        end

                        v.Enabled = true

                        if v1 then
                            local t22 = {}

                            for i2, v3 in ipairs(t6[v]) do
                                local v42 = NumberSequenceKeypoint.new

                                table.insert(t22, v42(v3.Time, 1))
                            end

                            v.Transparency = NumberSequence.new(t22)
                            t2 = {}

                            for i2, v3 in ipairs(v.Transparency.Keypoints) do
                                table.insert(t2, {
                                    Time = v3.Time,
                                    Value = v3.Value
                                })
                            end
                        end

                        while v2 < 0.25 do
                            v2 = os.clock() - v12
                            v.Transparency = lerpTransparency(t2, list2, (math.clamp(v2 / 0.25, 0, 1)))
                            task.wait()
                        end

                        local t22 = {}

                        for i2, v3 in ipairs(list2) do
                            table.insert(t22, NumberSequenceKeypoint.new(v3.Time, v3.Value))
                        end

                        v.Transparency = NumberSequence.new(t22)

                        if v1 then
                            return
                        end

                        v.Enabled = false
                    end)
                end
            end
        end

        local function weld(p1, p2) --[[ weld | Line: 232 | Upvalues: t2 (ref) ]]
            p2.CFrame = p1.CFrame

            local WeldConstraint = Instance.new("WeldConstraint")

            WeldConstraint.Part0 = p1
            WeldConstraint.Part1 = p2
            WeldConstraint.Parent = p1
            table.insert(t2, WeldConstraint)

            return WeldConstraint
        end

        local function decal(p1) --[[ decal | Line: 245 | Upvalues: TweenService2 (copy), Flipbook (copy), t3 (ref) ]]
            for i, v in ipairs(script.Texture:GetChildren()) do
                local v1 = v:Clone()

                v1.Parent = p1
                TweenService2:Create(v1, TweenInfo.new(1), {
                    Transparency = 0.15
                }):Play()
                Flipbook.animate(v1, false, 90, 2)
                table.insert(t3, v1)
            end
        end

        local function winds(p1, p2) --[[ winds | Line: 256 | Upvalues: Flipbook (copy), BoatTween (copy), TweenService2 (copy), t4 (ref) ]]
            for i = 1, 8 do
                task.spawn(function() --[[ Line: 258 | Upvalues: p1 (copy), p2 (copy), Flipbook (ref), BoatTween (ref), TweenService2 (ref), t4 (ref) ]]
                    local v1 = math.random() * 1 + 0.5
                    local v2 = math.random() * 1 + 0.7
                    local v3 = script.Wind:Clone()

                    v3.Parent = p1
                    v3.CFrame = p2 * CFrame.fromEulerAnglesXYZ(0, math.random(-360, 360), 0)
                    v3.Mesh.Scale = v3.Mesh.Scale * v2
                    Flipbook.animate(v3.Decal, false, math.random(30, 60), 1)
                    BoatTween:Create(v3.Mesh, {
                        EasingStyle = "Sine",
                        EasingDirection = "In",
                        Time = v1,
                        Goal = {
                            Scale = Vector3.new(14, 7, 14) * v2,
                            Offset = Vector3.new(0, 5, 0) * v2
                        }
                    }):Play()
                    TweenService2:Create(v3.Decal, TweenInfo.new(v1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, true), {
                        Transparency = 0
                    }):Play()

                    local v4 = nil
                    local v5 = tick()
                    local v7 = v4

                    table.insert(t4, v7)
                    v4 = game:GetService("RunService").Heartbeat:Connect(function(p1) --[[ Line: 285 | Upvalues: v5 (copy), v3 (copy), v4 (ref) ]]
                        local v2 = math.clamp((tick() - v5) / 3, 0, 1)
                        local v32 = CFrame.Angles(0, math.rad(100 * p1 * 1), 0)

                        v3.CFrame = CFrame.new(v3.Position) * ((v3.CFrame - v3.CFrame.Position) * v32)

                        if not (v2 >= 1 and v4) then
                            return
                        end

                        v4:Disconnect()
                    end)
                end)
            end
        end

        local function windbeam(p1, p2) --[[ windbeam | Line: 304 | Upvalues: emitparticles (copy) ]]
            local v1 = Random.new()
            local v2 = if v1:NextNumber() <= 0.7 then script.windbeam.windbeam1 else script.windbeam.windbeam2

            script.windbeam:ScaleTo(if v2 == script.windbeam.windbeam1 then math.floor(v1:NextNumber(1.3, 2) * 10 + 0.5) / 10 else math.floor(v1:NextNumber(1, 1.5) * 10 + 0.5) / 10)

            local v6 = v2:Clone()

            v6.Parent = p1
            v6.CFrame = p2 * CFrame.fromEulerAnglesXYZ(math.rad((math.random(-360, 360))), math.rad((math.random(-360, 360))), (math.rad((math.random(-360, 360)))))
            emitparticles(v6, 3)
        end

        local function windmesh(p1, p2) --[[ windmesh | Line: 340 | Upvalues: Flipbook (copy), BoatTween (copy) ]]
            local v2 = math.floor(Random.new():NextNumber(1, 2) * 10 + 0.5) / 10
            local v3 = script.Mesh:Clone()

            v3.Parent = p1

            local fromEulerAnglesXYZ = CFrame.fromEulerAnglesXYZ

            v3.CFrame = p2 * fromEulerAnglesXYZ(0, math.rad((math.random(-360, 360))), 0)
            Flipbook.animate(v3.d1, false, 30, 1)
            BoatTween:Create(v3.Mesh, {
                EasingStyle = "Linear",
                EasingDirection = "In",
                Time = 0.3 * v2,
                Goal = {
                    Scale = Vector3.new(15 * v2, 8, 15 * v2)
                }
            }):Play()
        end

        local v6 = true

        local function f7(p1, p2) --[[ Line: 388 | Upvalues: v6 (ref), ThisLight (ref), v1 (copy), Thrown (copy), Humanoid (copy), Head (copy), t2 (ref), v2 (copy), v4 (copy), v3 (copy), v5 (copy), Torso (copy), enableparticles (copy), t (ref), TweenService2 (copy), decal (copy), emitparticles (copy), t4 (ref), disableparticles (copy), t5 (ref), t3 (ref) ]]
            if not v6 then
                warn("Wait for animation cooldown.")

                return
            end

            local HumanoidRootPart = p1:FindFirstChild("HumanoidRootPart")

            if not HumanoidRootPart then
                return
            end

            v6 = false

            if ThisLight then
                ThisLight = false

                local Aura = v1:FindFirstChild("Aura")

                if Aura then
                    disableparticles(Aura)

                    local v12 = script.Burst:Clone()

                    v12.CFrame = HumanoidRootPart.CFrame
                    v12.Parent = game.Workspace.Thrown
                    emitparticles(v12, 1)
                    task.wait(0.1)
                    Aura:Destroy()
                end

                for k, v in pairs(v1:GetDescendants()) do
                    if v:IsA("Decal") and v.Name == "e" then
                        v:Destroy()
                    end
                end

                local ThisLight2 = v1:FindFirstChild("ThisLight")

                if ThisLight2 then
                    TweenService2:Create(ThisLight2, TweenInfo.new(1, Enum.EasingStyle.Sine), {
                        FillTransparency = 1,
                        OutlineTransparency = 1
                    }):Play()
                    game.Debris:AddItem(ThisLight2, 1)
                end

                for i, v in ipairs(t5) do
                    if v then
                        v:Destroy()
                    end
                end

                table.clear(t5)

                for i, v in ipairs(t2) do
                    if v and v.Parent then
                        v:Destroy()
                    end
                end

                table.clear(t2)

                for i, v in ipairs(t) do
                    if v then
                        v:Destroy()
                    end
                end

                table.clear(t)

                for i, v in ipairs(t3) do
                    if v then
                        v:Destroy()
                    end
                end

                table.clear(t3)

                for i, v in ipairs(t4) do
                    if v then
                        v:Disconnect()
                    end
                end

                table.clear(t4)

                local v22 = v1:GetAttribute("VFXFolderName")

                print(v22)

                if not v22 then
                    v6 = true

                    return
                end

                local v32 = Thrown:FindFirstChild(v22)

                print(v32)

                if not v32 then
                    v6 = true

                    return
                end

                v32:Destroy()
                print(v32.Parent)
                v6 = true
            else
                shared.sfx({
                    SoundId = "rbxassetid://107033316042301",
                    Volume = 2,
                    Parent = v1.PrimaryPart
                }):Play()

                local v42 = Instance.new("Folder")

                v42.Name = "VFXContainer" .. v1.Name .. script.Name
                v42.Parent = Thrown
                game.Debris:AddItem(v42, 500)
                ThisLight = true
                p1:SetAttribute("VFXFolderName", v42.Name)
                Humanoid:LoadAnimation(script.Animation):Play()

                local Aura = script.Aura:Clone()

                Aura.Name = "Aura"
                Aura.Parent = v1

                local v52 = Head
                local Head2 = Aura.Head

                Head2.CFrame = v52.CFrame

                local WeldConstraint = Instance.new("WeldConstraint")

                WeldConstraint.Part0 = v52
                WeldConstraint.Part1 = Head2
                WeldConstraint.Parent = v52
                table.insert(t2, WeldConstraint)

                local v7 = v2
                local v8 = Aura["Left Arm"]

                v8.CFrame = v7.CFrame

                local WeldConstraint2 = Instance.new("WeldConstraint")

                WeldConstraint2.Part0 = v7
                WeldConstraint2.Part1 = v8
                WeldConstraint2.Parent = v7
                table.insert(t2, WeldConstraint2)

                local v10 = v4
                local v11 = Aura["Left Leg"]

                v11.CFrame = v10.CFrame

                local WeldConstraint3 = Instance.new("WeldConstraint")

                WeldConstraint3.Part0 = v10
                WeldConstraint3.Part1 = v11
                WeldConstraint3.Parent = v10
                table.insert(t2, WeldConstraint3)

                local v13 = v3
                local v14 = Aura["Right Arm"]

                v14.CFrame = v13.CFrame

                local WeldConstraint4 = Instance.new("WeldConstraint")

                WeldConstraint4.Part0 = v13
                WeldConstraint4.Part1 = v14
                WeldConstraint4.Parent = v13
                table.insert(t2, WeldConstraint4)

                local v16 = v5
                local v17 = Aura["Right Leg"]

                v17.CFrame = v16.CFrame

                local WeldConstraint5 = Instance.new("WeldConstraint")

                WeldConstraint5.Part0 = v16
                WeldConstraint5.Part1 = v17
                WeldConstraint5.Parent = v16
                table.insert(t2, WeldConstraint5)

                local v19 = Torso
                local Torso2 = Aura.Torso

                Torso2.CFrame = v19.CFrame

                local WeldConstraint6 = Instance.new("WeldConstraint")

                WeldConstraint6.Part0 = v19
                WeldConstraint6.Part1 = Torso2
                WeldConstraint6.Parent = v19
                table.insert(t2, WeldConstraint6)

                local Aura2 = Aura.Aura

                Aura2.CFrame = HumanoidRootPart.CFrame

                local WeldConstraint7 = Instance.new("WeldConstraint")

                WeldConstraint7.Part0 = HumanoidRootPart
                WeldConstraint7.Part1 = Aura2
                WeldConstraint7.Parent = HumanoidRootPart
                table.insert(t2, WeldConstraint7)
                enableparticles(Aura)

                local t6 = {}

                for i, v in ipairs(Aura:GetDescendants()) do
                    if v.Name == "Constellation" then
                        table.insert(t6, {
                            Attachment = v,
                            BasePosition = v.Position
                        })
                    end
                end

                local ThisLight2 = Instance.new("Highlight")

                ThisLight2.Name = "ThisLight"
                ThisLight2.FillColor = Color3.new(255/255, 0/255, 0/255)
                ThisLight2.FillTransparency = 1
                ThisLight2.OutlineColor = Color3.fromRGB(247, 255, 153)
                ThisLight2.OutlineTransparency = 1
                ThisLight2.Parent = p1
                table.insert(t, ThisLight2)
                TweenService2:Create(ThisLight2, TweenInfo.new(1), {
                    OutlineTransparency = 0
                }):Play()
                task.spawn(function() --[[ Line: 461 | Upvalues: p1 (copy), decal (ref), TweenService2 (ref), Aura (copy) ]]
                    local t = {}
                    local t2 = {}
                    local t3 = {}

                    for i, v in ipairs(p1:GetDescendants()) do
                        if v:IsA("Part") and v.Parent.Name ~= "Aura" then
                            local v1 = v.Name

                            if v1 == "Left Leg" or v1 == "Right Leg" then
                                table.insert(t, v)

                                continue
                            end

                            if v1 == "Left Arm" or (v1 == "Right Arm" or v1 == "Torso") then
                                table.insert(t2, v)

                                continue
                            end

                            if v1 == "Head" then
                                table.insert(t3, v)
                            end

                            continue
                        end

                        if v:IsA("Accessory") then
                            local v2 = v:FindFirstChildWhichIsA("Attachment", true)

                            if v2 then
                                local v3 = v2.Name:lower()

                                if v3:find("leg") then
                                    table.insert(t, v.Handle)

                                    continue
                                end

                                if v3:find("torso") or (v3:find("body") or (v3:find("arm") or (v3:find("shoulder") or v3:find("back")))) then
                                    table.insert(t2, v.Handle)

                                    continue
                                end

                                if v3:find("head") or (v3:find("face") or (v3:find("hat") or v3:find("hair"))) then
                                    table.insert(t3, v.Handle)
                                end
                            end
                        end
                    end

                    local function decalParts(p1) --[[ decalParts | Line: 492 | Upvalues: decal (ref) ]]
                        for i, v in ipairs(p1) do
                            decal(v)
                        end
                    end

                    task.wait(0.3)
                    task.wait(0.3)
                    TweenService2:Create(Aura.Head.eyes, TweenInfo.new(0.5), {
                        Transparency = 0
                    }):Play()
                end)

                local v23 = script.Start:Clone()

                v23.CFrame = HumanoidRootPart.CFrame
                v23.Parent = v42
                emitparticles(v23, 2)

                local v24 = script.Burst:Clone()

                v24.CFrame = HumanoidRootPart.CFrame
                v24.Parent = v42

                local v25 = nil
                local v26 = tick()
                local v27 = 0
                local v28 = 0

                v25 = game:GetService("RunService").Heartbeat:Connect(function(p1) --[[ Line: 521 | Upvalues: v26 (copy), v27 (ref), v28 (ref), v25 (ref) ]]
                    local v2 = math.clamp((tick() - v26) / 0.6, 0, 1)

                    v27 = v27 + p1

                    if v27 >= 0.025 then
                        v27 = 0
                    end

                    v28 = v28 + p1

                    if v28 >= 0.1 then
                        v28 = 0
                    end

                    if not (v2 >= 1 and v25) then
                        return
                    end

                    v25:Disconnect()
                end)
                table.insert(t4, (game:GetService("RunService").Heartbeat:Connect(function(p1) --[[ Line: 547 | Upvalues: t6 (copy) ]]
                    local v1 = tick()

                    for i, v in ipairs(t6) do
                        local Attachment = v.Attachment
                        local BasePosition = v.BasePosition

                        if Attachment then
                            local v2 = (v1 + i * 0.5) * 1
                            local v3 = math.sin(v2) * 0.1
                            local v4 = math.cos(v2 * 1.2) * 0.1

                            Attachment.Position = BasePosition + Vector3.new(v3, v4, math.sin(v2 * 0.7) * 0.1)
                        end
                    end
                end)))
                task.delay(0.5, function() --[[ Line: 569 | Upvalues: v6 (ref) ]]
                    v6 = true
                end)
                task.delay(0.8, function() --[[ Line: 573 | Upvalues: emitparticles (ref), v24 (copy) ]]
                    emitparticles(v24, 1)
                end)
            end
        end

        if ThisLight then
            f7(v1)
        else
            f7(v1, true)
        end
    end)()
end
