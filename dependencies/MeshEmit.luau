-- Script Path: game:GetService("ReplicatedStorage").Emotes.VFX.VfxMods.libraryNew.MeshEmit
-- Took 0.38s to decompile.
-- Executor: Delta (1.0.729.838)

-- https://lua.expert/
local RunService = game:GetService("RunService")
local CollectionService = game:GetService("CollectionService")
local t = {
    SPEED_SCALE = 1.35,
    DRAG_SCALE = 0.65
}

local function parseRange(p1) --[[ parseRange | Line: 14 ]]
    local v1 = typeof(p1)

    if v1 == "NumberRange" then
        return p1
    end

    if v1 == "number" then
        return NumberRange.new(p1, p1)
    end

    if v1 ~= "string" then
        return NumberRange.new(0, 0)
    end

    local t = {}

    for v2 in p1:gmatch("[%-%d%.]+") do
        t[#t + 1] = tonumber(v2)
    end

    return NumberRange.new(t[1] or 0, t[2] or t[1] or 0)
end

local function parseNumSeq(p1) --[[ parseNumSeq | Line: 26 ]]
    local v1 = typeof(p1)

    if v1 == "NumberSequence" then
        return p1
    end

    if v1 == "number" then
        return NumberSequence.new(p1)
    end

    if v1 ~= "string" or p1 == "" then
        return nil
    end

    local t = {}

    for v2 in p1:gmatch("[%-%d%.]+") do
        t[#t + 1] = tonumber(v2)
    end

    if #t < 2 then
        return nil
    end

    local t2 = {}

    for i = 1, #t, 3 do
        local v3 = t[i]
        local v4 = t[i + 1]

        if v3 and v4 then
            t2[#t2 + 1] = NumberSequenceKeypoint.new(v3, v4, t[i + 2] or 0)
        end
    end

    if #t2 == 0 then
        return nil
    end

    if #t2 == 1 then
        t2[#t2 + 1] = NumberSequenceKeypoint.new(1, t2[1].Value, 0)
    end

    return NumberSequence.new(t2)
end

local function parseColorSeq(p1) --[[ parseColorSeq | Line: 49 ]]
    local v1 = typeof(p1)

    if v1 == "ColorSequence" then
        return p1
    end

    if v1 == "Color3" then
        return ColorSequence.new(p1)
    end

    if v1 ~= "string" or p1 == "" then
        return nil
    end

    local t = {}

    for v2 in p1:gmatch("[%-%d%.]+") do
        t[#t + 1] = tonumber(v2)
    end

    if #t < 4 then
        return nil
    end

    local t2 = {}

    for i = 1, #t, 5 do
        local v3 = t[i]
        local v4 = t[i + 1]
        local v5 = t[i + 2]
        local v6 = t[i + 3]

        if v3 and (v4 and (v5 and v6)) then
            t2[#t2 + 1] = ColorSequenceKeypoint.new(v3, Color3.new(v4, v5, v6))
        end
    end

    if #t2 == 0 then
        return nil
    end

    if #t2 == 1 then
        t2[#t2 + 1] = ColorSequenceKeypoint.new(1, t2[1].Value)
    end

    return ColorSequence.new(t2)
end

local function parseVec3(p1, p2) --[[ parseVec3 | Line: 72 ]]
    local v1 = p2 or Vector3.new(0, 0, 0)
    local v2 = typeof(p1)

    if v2 == "Vector3" then
        return p1
    end

    if v2 == "Vector2" then
        return Vector3.new(p1.X, p1.Y, 0)
    end

    if v2 ~= "string" then
        return v1
    end

    local t = {}

    for v3 in p1:gmatch("[%-%d%.]+") do
        t[#t + 1] = tonumber(v3)
    end

    return Vector3.new(t[1] or v1.X, t[2] or v1.Y, t[3] or v1.Z)
end

local function asBool(p1) --[[ asBool | Line: 85 ]]
    if p1 == true then
        return true
    end

    if typeof(p1) ~= "string" then
        return false
    end

    return p1 == "true"
end

local t2 = {
    Top = Vector3.new(0, 1, 0),
    Bottom = Vector3.new(0, -1, 0),
    Right = Vector3.new(1, 0, 0),
    Left = Vector3.new(-1, 0, 0),
    Front = Vector3.new(0, 0, -1),
    Back = Vector3.new(0, 0, 1)
}

local function parseEmissionDir(p1) --[[ parseEmissionDir | Line: 99 | Upvalues: t2 (copy) ]]
    if typeof(p1) == "Vector3" then
        return p1
    end

    if typeof(p1) == "string" and t2[p1] then
        return t2[p1]
    end

    return Vector3.new(0, 1, 0)
end

local function alignVecToVec(p1, p2) --[[ alignVecToVec | Line: 105 ]]
    local v2 = math.clamp(p1:Dot(p2), -1, 1)

    if v2 > 0.9999 then
        return CFrame.new()
    end

    if not (v2 < -0.9999) then
        return CFrame.fromAxisAngle(p1:Cross(p2).Unit, (math.acos(v2)))
    end

    local v3 = p1:Cross(Vector3.new(1, 0, 0))

    if v3.Magnitude < 0.01 then
        v3 = p1:Cross(Vector3.new(0, 1, 0))
    end

    return CFrame.fromAxisAngle(v3.Unit, math.pi)
end

local function sampleNum(p1, p2, p3) --[[ sampleNum | Line: 122 ]]
    if not p1 then
        return 0, p3
    end

    local Keypoints = p1.Keypoints
    local v1 = #Keypoints

    if p2 <= Keypoints[1].Time then
        return Keypoints[1].Value, 1
    end

    if Keypoints[v1].Time <= p2 then
        return Keypoints[v1].Value, v1 - 1
    end

    if p3 >= 1 and p3 < v1 then
        local v2 = Keypoints[p3]
        local v3 = Keypoints[p3 + 1]

        if v2.Time <= p2 and p2 <= v3.Time then
            local v4 = v3.Time - v2.Time

            if v4 < 1e-6 then
                return v2.Value, p3
            end

            return v2.Value + (v3.Value - v2.Value) * ((p2 - v2.Time) / v4), p3
        elseif p3 + 1 < v1 then
            local v5 = Keypoints[p3 + 1]
            local v6 = Keypoints[p3 + 2]

            if v5.Time <= p2 and p2 <= v6.Time then
                local v7 = v6.Time - v5.Time

                if v7 < 1e-6 then
                    return v5.Value, p3 + 1
                end

                return v5.Value + (v6.Value - v5.Value) * ((p2 - v5.Time) / v7), p3 + 1
            end
        end
    end

    for i = 1, v1 - 1 do
        local v8 = Keypoints[i]
        local v9 = Keypoints[i + 1]

        if v8.Time <= p2 and p2 <= v9.Time then
            local v10 = v9.Time - v8.Time

            if v10 < 1e-6 then
                return v8.Value, i
            end

            return v8.Value + (v9.Value - v8.Value) * ((p2 - v8.Time) / v10), i
        end
    end

    return Keypoints[v1].Value, v1 - 1
end

local function sampleColor(p1, p2, p3) --[[ sampleColor | Line: 162 ]]
    if not p1 then
        return Color3.new(255/255, 255/255, 255/255), p3
    end

    local Keypoints = p1.Keypoints
    local v1 = #Keypoints

    if p2 <= Keypoints[1].Time then
        return Keypoints[1].Value, 1
    end

    if Keypoints[v1].Time <= p2 then
        return Keypoints[v1].Value, v1 - 1
    end

    if p3 >= 1 and p3 < v1 then
        local v2 = Keypoints[p3]
        local v3 = Keypoints[p3 + 1]

        if v2.Time <= p2 and p2 <= v3.Time then
            local v4 = v3.Time - v2.Time

            if v4 < 1e-6 then
                return v2.Value, p3
            end

            return v2.Value:Lerp(v3.Value, (p2 - v2.Time) / v4), p3
        elseif p3 + 1 < v1 then
            local v5 = Keypoints[p3 + 1]
            local v6 = Keypoints[p3 + 2]

            if v5.Time <= p2 and p2 <= v6.Time then
                local v7 = v6.Time - v5.Time

                if v7 < 1e-6 then
                    return v5.Value, p3 + 1
                end

                return v5.Value:Lerp(v6.Value, (p2 - v5.Time) / v7), p3 + 1
            end
        end
    end

    for i = 1, v1 - 1 do
        local v8 = Keypoints[i]
        local v9 = Keypoints[i + 1]

        if v8.Time <= p2 and p2 <= v9.Time then
            local v10 = v9.Time - v8.Time

            if v10 < 1e-6 then
                return v8.Value, i
            end

            return v8.Value:Lerp(v9.Value, (p2 - v8.Time) / v10), i
        end
    end

    return Keypoints[v1].Value, v1 - 1
end

local v1 = setmetatable({}, {
    __mode = "k"
})
local v2 = setmetatable({}, {
    __mode = "k"
})

local function populateSpec(p1, p2) --[[ populateSpec | Line: 210 | Upvalues: parseRange (copy), parseNumSeq (copy), parseColorSeq (copy), parseVec3 (copy), t2 (copy) ]]
    local v1 = p2:GetAttributes()
    local v2 = nil

    if p2:IsA("ObjectValue") then
        v2 = p2.Value
    elseif p2:IsA("BasePart") then
        v2 = p2
    end

    p1.template = v2
    p1.lifetime = parseRange(v1.Lifetime or "1 1")
    p1.speed = parseRange(v1.Speed or "0 0")
    p1.drag = parseRange(v1.Drag or "0 0")
    p1.maxSize = parseRange(v1.MaxSize or "1 1")
    p1.maxSpin = parseRange(v1.MaxSpin or "0 0")
    p1.colorFactor = parseRange(v1.ColorFactor or "1 1")
    p1.rotX = parseRange(v1.RotX or "0 0")
    p1.rotY = parseRange(v1.RotY or "0 0")
    p1.rotZ = parseRange(v1.RotZ or "0 0")
    p1.sizeX = parseNumSeq(v1.SizeX)
    p1.sizeY = parseNumSeq(v1.SizeY)
    p1.sizeZ = parseNumSeq(v1.SizeZ)
    p1.transparency = parseNumSeq(v1.Transparency)
    p1.color = parseColorSeq(v1.Color)
    p1.spinX = parseNumSeq(v1.SpinX)
    p1.spinY = parseNumSeq(v1.SpinY)
    p1.spinZ = parseNumSeq(v1.SpinZ)
    p1.spreadAngle = parseVec3(v1.SpreadAngle, Vector3.new(0, 0, 0))
    p1.frontVector = parseVec3(v1.FRONT_VECTOR, Vector3.new(0, 0, -1))

    local EmissionDirection = v1.EmissionDirection

    p1.emissionDirection = if typeof(EmissionDirection) == "Vector3" then EmissionDirection elseif typeof(EmissionDirection) == "string" and t2[EmissionDirection] then t2[EmissionDirection] else Vector3.new(0, 1, 0)

    local FaceVelocity = v1.FaceVelocity

    p1.faceVelocity = if FaceVelocity == true then true elseif typeof(FaceVelocity) == "string" then FaceVelocity == "true" else false

    local LockedToPart = v1.LockedToPart

    p1.lockedToPart = if LockedToPart == true then true elseif typeof(LockedToPart) == "string" then LockedToPart == "true" else false

    local TransferTransparency = v1.TransferTransparency

    p1.transferTransparency = if TransferTransparency == true then true elseif typeof(TransferTransparency) == "string" then TransferTransparency == "true" else false

    local TransferColor = v1.TransferColor

    p1.transferColor = if TransferColor == true then true elseif typeof(TransferColor) == "string" then TransferColor == "true" else false
    p1.material = v1.Material
    p1.emitCount = tonumber(v1.EmitCount) or 1
    p1.flipbookFrames = nil

    local Flipbook = v1.Flipbook

    if not ((if Flipbook == true then true elseif typeof(Flipbook) == "string" then Flipbook == "true" else false) and v2) then
        return
    end

    local Flipbook2 = v2:FindFirstChild("Flipbook")

    if not (Flipbook2 and Flipbook2:IsA("ModuleScript")) then
        return
    end

    local ok, result = pcall(require, Flipbook2)

    if not ok or (type(result) ~= "table" or not (#result > 0)) then
        return
    end

    p1.flipbookFrames = result
end

local function getSpec(p1) --[[ getSpec | Line: 263 | Upvalues: v1 (copy), populateSpec (copy), v2 (copy) ]]
    local v12 = v1[p1]

    if v12 then
        return v12
    end

    local t = {}

    populateSpec(t, p1)

    local v22 = v2[p1]

    if not v22 then
        v2[p1] = p1.AttributeChanged:Connect(function() --[[ Line: 276 | Upvalues: populateSpec (ref), t (copy), p1 (copy) ]]
            populateSpec(t, p1)
        end)
        v1[p1] = t

        return t
    end

    v22:Disconnect()
    v2[p1] = p1.AttributeChanged:Connect(function() --[[ Line: 276 | Upvalues: populateSpec (ref), t (copy), p1 (copy) ]]
        populateSpec(t, p1)
    end)
    v1[p1] = t

    return t
end

local t3 = {}
local v3 = nil
local v4 = nil
local v5 = nil
local t4 = {}
local t5 = {}

local function getContainer() --[[ getContainer | Line: 308 | Upvalues: v4 (ref) ]]
    if v4 and v4.Parent then
        return v4
    end

    local Thrown = workspace:FindFirstChild("Thrown")

    if not Thrown then
        local Thrown2 = Instance.new("Folder")

        Thrown2.Name = "Thrown"
        Thrown2.Parent = workspace
        Thrown = Thrown2
    end

    local MeshEmitParticles = Thrown:FindFirstChild("MeshEmitParticles")

    if MeshEmitParticles and MeshEmitParticles:IsA("Folder") then
        v4 = MeshEmitParticles

        return MeshEmitParticles
    end

    local MeshEmitParticles2 = Instance.new("Folder")

    MeshEmitParticles2.Name = "MeshEmitParticles"
    MeshEmitParticles2.Parent = Thrown
    v4 = MeshEmitParticles2

    return MeshEmitParticles2
end

local function randInRange(p1) --[[ randInRange | Line: 325 ]]
    if p1.Min == p1.Max then
        return p1.Min
    end

    return p1.Min + (p1.Max - p1.Min) * math.random()
end

local function tickEmissions(p1) --[[ tickEmissions | Line: 330 | Upvalues: t4 (copy), v5 (ref) ]]
    local v1 = os.clock()

    for k, v in pairs(t4) do
        if (if v.duration > 0 then if v1 - v.startT >= v.duration then true else false else false) or not k.Parent then
            t4[k] = nil

            continue
        end

        v.accum = v.accum + v.rate * p1

        while v.accum >= 1 do
            v.accum = v.accum - 1

            local anchorOverride = v.anchorOverride

            if not anchorOverride then
                local v3 = k.Parent

                if v3 and v3:IsA("Attachment") then
                    anchorOverride = v3.WorldCFrame
                elseif v3 and v3:IsA("BasePart") then
                    anchorOverride = v3.CFrame
                end
            end

            if anchorOverride then
                v5(v.spec, anchorOverride, k)
            end
        end
    end
end

local function v(p1) --[[ tick | Line: 353 | Upvalues: tickEmissions (copy), t3 (copy), sampleNum (copy), sampleColor (copy), t4 (copy), v3 (ref) ]]
    tickEmissions(p1)

    local v1 = os.clock()
    local count = 1

    while count <= #t3 do
        local v2 = t3[count]
        local v32 = (v1 - v2.t0) / v2.lifetime

        if v32 >= 1 or (not v2.part.Parent or (v2.lifetime <= 0 or v32 ~= v32)) then
            pcall(function() --[[ Line: 366 | Upvalues: v2 (copy) ]]
                v2.part:Destroy()
            end)
            v2.part = nil
            v2.mesh = nil
            v2.cachedDecals = nil
            v2.spec = nil
            v2.sourceParent = nil
            t3[count] = t3[#t3]
            t3[#t3] = nil
        else
            local spec = v2.spec
            local part = v2.part

            v2.velocity = v2.velocity * math.exp(-v2.drag * p1)

            local sum = part.Position + v2.velocity * p1

            if spec.lockedToPart and (v2.sourceParent and v2.sourceParent.Parent) then
                local sourceParent = v2.sourceParent
                local v6 = nil

                if sourceParent:IsA("Attachment") then
                    v6 = sourceParent.WorldPosition
                elseif sourceParent:IsA("BasePart") then
                    v6 = sourceParent.Position
                end

                if v6 then
                    if v2.lastSourcePos then
                        sum = sum + (v6 - v2.lastSourcePos)
                    end

                    v2.lastSourcePos = v6
                end
            end

            local v7, v8 = sampleNum(spec.sizeX, v32, v2.hintSx)

            v2.hintSx = v8

            local v9, v10 = sampleNum(spec.sizeY, v32, v2.hintSy)

            v2.hintSy = v10

            local v11, v12 = sampleNum(spec.sizeZ, v32, v2.hintSz)

            v2.hintSz = v12

            local v13 = v7 * v2.maxSize
            local v14 = v9 * v2.maxSize
            local v15 = v11 * v2.maxSize

            if v13 > 0.001 and (v14 > 0.001 and v15 > 0.001) then
                local v16 = Vector3.new(v13, v14, v15)

                if v2.mesh then
                    v2.mesh.Scale = v16
                end

                if v2.canSetSize then
                    part.Size = v16
                end
            end

            if spec.transparency then
                local v17, v18 = sampleNum(spec.transparency, v32, v2.hintTr)

                v2.hintTr = v18

                if spec.transferTransparency then
                    if v2.cachedDecals then
                        local v19 = v17

                        for i, v in ipairs(v2.cachedDecals) do
                            v.Transparency = v19
                        end
                    end
                else
                    part.Transparency = v17
                end
            end

            if spec.color then
                local v20, v21 = sampleColor(spec.color, v32, v2.hintC)

                v2.hintC = v21

                local colorFactor = v2.colorFactor
                local v22 = Color3.new(v20.R * colorFactor, v20.G * colorFactor, v20.B * colorFactor)

                if spec.transferColor then
                    if v2.cachedDecals then
                        for i, v in ipairs(v2.cachedDecals) do
                            v.Color3 = v22
                        end
                    end
                else
                    part.Color = v22
                end
            end

            if spec.flipbookFrames and v2.cachedDecals then
                local flipbookFrames = spec.flipbookFrames
                local v24 = flipbookFrames[math.clamp(math.floor(v32 * #flipbookFrames) + 1, 1, #flipbookFrames)]

                for i, v in ipairs(v2.cachedDecals) do
                    v.Texture = v24
                end
            end

            local v25, v26 = sampleNum(spec.spinX, v32, v2.hintSpX)

            v2.hintSpX = v26

            local v27, v28 = sampleNum(spec.spinY, v32, v2.hintSpY)

            v2.hintSpY = v28

            local v29, v30 = sampleNum(spec.spinZ, v32, v2.hintSpZ)

            v2.hintSpZ = v30

            local v31 = v25 * (v2.maxSpin * p1)
            local v322 = v27 * (v2.maxSpin * p1)
            local v33 = v29 * (v2.maxSpin * p1)

            if v31 ~= 0 or (v322 ~= 0 or v33 ~= 0) then
                v2.rotAccum = v2.rotAccum * CFrame.Angles(math.rad(v31), math.rad(v322), (math.rad(v33)))
            end

            part.CFrame = CFrame.new(sum) * v2.baseRot * v2.rotAccum
            count = count + 1
        end
    end

    if #t3 ~= 0 or (next(t4) ~= nil or not v3) then
        return
    end

    v3:Disconnect()
    v3 = nil
end

local function ensureHeartbeat() --[[ ensureHeartbeat | Line: 493 | Upvalues: v3 (ref), RunService (copy), v (copy) ]]
    if not v3 then
        v3 = RunService.Heartbeat:Connect(v)
    end
end

v5 = function(p1, p2, p3) --[[ Line: 498 | Upvalues: alignVecToVec (copy), t (copy), getContainer (copy), t3 (copy), v3 (ref), RunService (copy), v (copy) ]]
    local template = p1.template

    if not (template and template:IsA("BasePart")) then
        return
    end

    local v1 = template:Clone()

    v1.Anchored = true
    v1.CanCollide = false
    v1.CanQuery = false
    v1.CanTouch = false
    v1.CastShadow = false
    v1.Massless = true

    if p1.material then
        pcall(function() --[[ Line: 510 | Upvalues: v1 (copy), p1 (copy) ]]
            v1.Material = Enum.Material[p1.material]
        end)
    end

    local v2 = v1:FindFirstChildWhichIsA("DataModelMesh")
    local v32

    if p1.flipbookFrames or (p1.transferColor or p1.transferTransparency) then
        v32 = {}

        for i, v4 in ipairs(v1:GetChildren()) do
            if v4:IsA("Decal") then
                table.insert(v32, v4)
            end
        end

        if #v32 == 0 then
            v32 = nil
        end
    else
        v32 = nil
    end

    local ok = pcall(function() --[[ Line: 531 | Upvalues: v1 (copy) ]]
        v1.Size = v1.Size
    end)
    local fromOrientation = CFrame.fromOrientation
    local rotX = p1.rotX
    local v5 = -math.rad(if rotX.Min == rotX.Max then rotX.Min else rotX.Min + (rotX.Max - rotX.Min) * math.random())
    local rotY = p1.rotY
    local v8 = -math.rad(if rotY.Min == rotY.Max then rotY.Min else rotY.Min + (rotY.Max - rotY.Min) * math.random())
    local rotZ = p1.rotZ
    local v10 = fromOrientation(v5, v8, -math.rad(if rotZ.Min == rotZ.Max then rotZ.Min else rotZ.Min + (rotZ.Max - rotZ.Min) * math.random()))
    local Angles = CFrame.Angles
    local v11 = (math.random() - 0.5) * 2
    local v12 = v11 * math.rad(p1.spreadAngle.X)
    local v13 = (math.random() - 0.5) * 2
    local v14 = Angles(v12, v13 * math.rad(p1.spreadAngle.Y), 0)
    local emissionDirection = p1.emissionDirection

    if emissionDirection.Magnitude < 0.001 then
        emissionDirection = Vector3.new(0, 1, 0)
    end

    local v15 = p2:VectorToWorldSpace((v14:VectorToWorldSpace(emissionDirection)))

    if v15.Magnitude < 0.001 then
        v15 = p2.LookVector
    end

    local Unit = v15.Unit
    local v16

    if p1.faceVelocity then
        local frontVector = p1.frontVector

        if frontVector.Magnitude < 0.001 then
            frontVector = Vector3.new(0, 0, -1)
        end

        v16 = alignVecToVec(frontVector.Unit, Unit)
    else
        v16 = p2 * v14 - p2.Position
    end

    v1.CFrame = CFrame.new(p2.Position) * v16 * v10

    local t2 = {
        hintSx = 1,
        hintSy = 1,
        hintSz = 1,
        hintTr = 1,
        hintC = 1,
        hintSpX = 1,
        hintSpY = 1,
        hintSpZ = 1,
        part = v1,
        mesh = v2,
        cachedDecals = v32,
        canSetSize = ok,
        spec = p1,
        sourceParent = p3.Parent,
        t0 = os.clock()
    }
    local lifetime = p1.lifetime

    t2.lifetime = math.max(if lifetime.Min == lifetime.Max then lifetime.Min else lifetime.Min + (lifetime.Max - lifetime.Min) * math.random(), 0.001)

    local speed = p1.speed

    t2.velocity = Unit * (if speed.Min == speed.Max then speed.Min else speed.Min + (speed.Max - speed.Min) * math.random()) * t.SPEED_SCALE

    local drag = p1.drag

    t2.drag = (if drag.Min == drag.Max then drag.Min else drag.Min + (drag.Max - drag.Min) * math.random()) * t.DRAG_SCALE

    local maxSize = p1.maxSize

    t2.maxSize = if maxSize.Min == maxSize.Max then maxSize.Min else maxSize.Min + (maxSize.Max - maxSize.Min) * math.random()

    local colorFactor = p1.colorFactor

    t2.colorFactor = if colorFactor.Min == colorFactor.Max then colorFactor.Min else colorFactor.Min + (colorFactor.Max - colorFactor.Min) * math.random()

    local maxSpin = p1.maxSpin

    t2.maxSpin = if maxSpin.Min == maxSpin.Max then maxSpin.Min else maxSpin.Min + (maxSpin.Max - maxSpin.Min) * math.random()
    t2.baseRot = v16
    t2.rotAccum = v10
    v1.Parent = getContainer()
    t3[#t3 + 1] = t2

    if not v3 then
        v3 = RunService.Heartbeat:Connect(v)
    end
end

local function isEmitter(p1) --[[ isEmitter | Line: 601 | Upvalues: CollectionService (copy) ]]
    if p1:GetAttribute("Lifetime") == nil then
        return CollectionService:HasTag(p1, "MeshEmitter")
    end

    return true
end

local function resolveAnchor(p1, p2) --[[ resolveAnchor | Line: 606 ]]
    if p2 then
        return p2
    end

    local v1 = p1.Parent

    if v1 and v1:IsA("Attachment") then
        return v1.WorldCFrame
    end

    if v1 and v1:IsA("BasePart") then
        return v1.CFrame
    end

    return nil
end

local function beginEmission(p1, p2, p3, p4, p5) --[[ beginEmission | Line: 614 | Upvalues: t4 (copy), v3 (ref), RunService (copy), v (copy) ]]
    if p3 <= 0 then
        return
    end

    t4[p1] = {
        accum = 0,
        spec = p2,
        emitter = p1,
        anchorOverride = p5,
        rate = p3,
        duration = p4,
        startT = os.clock()
    }

    if not v3 then
        v3 = RunService.Heartbeat:Connect(v)
    end
end

local function emitOne(p1, p2, p3) --[[ emitOne | Line: 628 | Upvalues: getSpec (copy), v5 (ref), beginEmission (copy), t5 (copy) ]]
    local v1 = getSpec(p1)

    if not v1.template then
        return
    end

    local v2 = tonumber(p1:GetAttribute("EmitDelay")) or 0
    local v3 = p2 or tonumber(p1:GetAttribute("EmitCount")) or 0
    local v4 = if p2 == nil then tonumber(p1:GetAttribute("Rate")) or 0 else 0
    local v52 = if p2 == nil then tonumber(p1:GetAttribute("EmitDuration")) or 0 else 0

    local function doFire() --[[ doFire | Line: 637 | Upvalues: p1 (copy), p3 (copy), v3 (copy), v5 (ref), v1 (copy), v4 (copy), v52 (copy), beginEmission (ref) ]]
        if not p1.Parent then
            return
        end

        local v12 = p1
        local v2 = p3
        local v32

        if v2 then
            v32 = v2
        else
            local v42 = v12.Parent

            v32 = if v42 and v42:IsA("Attachment") then v42.WorldCFrame elseif v42 and v42:IsA("BasePart") then v42.CFrame else nil
        end

        if not v32 then
            return
        end

        for i = 1, v3 do
            v5(v1, v32, p1)
        end

        if not (v4 > 0 and v52 > 0) then
            return
        end

        beginEmission(p1, v1, v4, v52, p3)
    end

    if not (v2 > 0) then
        doFire()

        return
    end

    local v6 = t5[p1]

    if not v6 then
        v6 = {}
        t5[p1] = v6
    end

    local t = {}

    v6[t] = true
    task.delay(v2, function() --[[ Line: 656 | Upvalues: t5 (ref), p1 (copy), t (copy), doFire (copy) ]]
        local v1 = t5[p1]

        if not (v1 and v1[t]) then
            return
        end

        v1[t] = nil

        if not next(v1) then
            t5[p1] = nil
        end

        doFire()
    end)
end

function t.Emit(p1, p2, p3) --[[ Emit | Line: 668 | Upvalues: CollectionService (copy), emitOne (copy) ]]
    if if p1:GetAttribute("Lifetime") == nil then CollectionService:HasTag(p1, "MeshEmitter") else true then
        emitOne(p1, p2, p3)

        return
    end

    for i, v in ipairs(p1:GetDescendants()) do
        if if v:GetAttribute("Lifetime") == nil then CollectionService:HasTag(v, "MeshEmitter") else true then
            emitOne(v, p2, p3)
        end
    end
end
function t.Enable(p1, p2, p3) --[[ Enable | Line: 680 | Upvalues: getSpec (copy), beginEmission (copy) ]]
    local v1 = getSpec(p1)

    if not v1.template then
        return
    end

    local v2 = tonumber(p1:GetAttribute("Rate")) or 0

    beginEmission(p1, v1, v2, if p2 then p2 else tonumber(p1:GetAttribute("EmitDuration")) or 0, p3)
end
function t.Disable(p1) --[[ Disable | Line: 688 | Upvalues: t4 (copy), t5 (copy) ]]
    t4[p1] = nil
    t5[p1] = nil
end
function t.Invalidate(p1) --[[ Invalidate | Line: 695 | Upvalues: v1 (copy), v2 (copy) ]]
    v1[p1] = nil

    local v12 = v2[p1]

    if not v12 then
        v2[p1] = nil

        return
    end

    v12:Disconnect()
    v2[p1] = nil
end
function t.ClearCache() --[[ ClearCache | Line: 702 | Upvalues: v1 (copy), v2 (copy) ]]
    for k in pairs(v1) do
        v1[k] = nil
    end

    for k, v in pairs(v2) do
        if v then
            v:Disconnect()
        end

        v2[k] = nil
    end
end
function t.StopAll() --[[ StopAll | Line: 713 | Upvalues: t4 (copy), t5 (copy), t3 (copy), v3 (ref) ]]
    for k in pairs(t4) do
        t4[k] = nil
    end

    for k in pairs(t5) do
        t5[k] = nil
    end

    for i = #t3, 1, -1 do
        local v1 = t3[i]

        if v1 and v1.part then
            pcall(function() --[[ Line: 719 | Upvalues: v1 (copy) ]]
                v1.part:Destroy()
            end)
        end

        t3[i] = nil
    end

    if not v3 then
        return
    end

    v3:Disconnect()
    v3 = nil
end

return t
