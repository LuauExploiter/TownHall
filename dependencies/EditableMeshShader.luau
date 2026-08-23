-- Script Path: game:GetService("ReplicatedStorage").Emotes.VFX.VfxMods.libraryNew.EditableMeshShader
-- Took 0.16s to decompile.
-- Executor: Delta (1.0.729.838)

-- https://lua.expert/
local AssetService = game:GetService("AssetService")
local RunService = game:GetService("RunService")
local t = {}

t.__index = t
function t.new(p1, p2, p3, p4) --[[ new | Line: 11 | Upvalues: t (copy), AssetService (copy), RunService (copy) ]]
    local v2 = setmetatable({}, t)

    v2.Mesh = p1
    v2.FixedTime = 0
    v2.Time = 0
    v2._alive = true
    task.spawn(function() --[[ Line: 23 | Upvalues: AssetService (ref), p1 (copy), v2 (copy), RunService (ref), p4 (copy), p2 (copy), p3 (copy) ]]
        local ok, result = pcall(function() --[[ Line: 24 | Upvalues: AssetService (ref), p1 (ref) ]]
            return AssetService:CreateEditableMeshAsync(p1.MeshContent)
        end)

        if ok and result then
            if not v2._alive then
                result:Destroy()

                return
            end

            v2.EditableMesh = result
            p1:ApplyMesh((AssetService:CreateMeshPartAsync(Content.fromObject(result))))

            local v1 = result:GetVertices()
            local v22 = result:GetUVs()
            local v3 = #v1
            local v4 = table.create(v3)
            local v5 = table.create(v3)
            local v6 = #v22

            for i = 1, v3 do
                local v7 = result:GetPosition(v1[i])

                v4[i] = v7
                v5[i] = v7
            end

            local v8 = table.create(v6)
            local v9 = table.create(v6)

            for j = 1, v6 do
                local v10 = result:GetUV(v22[j])

                v8[j] = v10
                v9[j] = v10
            end

            v2._vertexIds = v1
            v2._uvIds = v22
            v2._originalPositions = v4
            v2._lastPositions = v5
            v2._originalUVs = v8
            v2._lastUVs = v9

            local v11 = 0

            v2.Update = RunService.Heartbeat:Connect(function(p1) --[[ Line: 72 | Upvalues: v2 (ref), p4 (ref), v11 (ref), result (copy), v3 (copy), p2 (ref), v4 (copy), v5 (copy), v1 (copy), v6 (copy), p3 (ref), v8 (copy), v9 (copy), v22 (copy) ]]
                local v12 = v2

                v12.FixedTime = v12.FixedTime + p1
                v2.Time = p4 and v2.Time + p1 * p4.Value or v2.FixedTime
                v11 = v11 + p1

                if v11 < 0.03333333333333333 then
                    return
                end

                local v42 = v11

                v11 = 0

                local Time = v2.Time
                local FixedTime = v2.FixedTime
                local SetPosition = result.SetPosition
                local SetUV = result.SetUV

                for i = 1, v3 do
                    local v52 = p2(v4[i], Time, v42, FixedTime)
                    local v62 = v5[i]
                    local v7 = v52.X - v62.X
                    local v82 = v52.Y - v62.Y
                    local v92 = v52.Z - v62.Z

                    if v7 * v7 + v82 * v82 + v92 * v92 > 1e-6 then
                        SetPosition(result, v1[i], v52)
                        v5[i] = v52
                    end
                end

                for j = 1, v6 do
                    local v10 = p3(v8[j], Time, v42, FixedTime)
                    local v112 = v9[j]
                    local v122 = v10.X - v112.X
                    local v13 = v10.Y - v112.Y

                    if v122 * v122 + v13 * v13 > 1e-8 then
                        SetUV(result, v22[j], v10)
                        v9[j] = v10
                    end
                end
            end)
        else
            warn("EditableMesh failed:", result)
        end
    end)

    return v2
end
function t.Destroy(p1) --[[ Destroy | Line: 115 ]]
    p1._alive = false

    if p1.Update then
        p1.Update:Disconnect()
        p1.Update = nil
    end

    if not p1.EditableMesh then
        return
    end

    p1.EditableMesh:Destroy()
    p1.EditableMesh = nil
end

return t
