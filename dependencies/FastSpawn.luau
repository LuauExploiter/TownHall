-- Script Path: game:GetService("ReplicatedStorage").Emotes.VFX.VfxMods.libraryNew.FastSpawn
-- Took 0.22s to decompile.
-- Executor: Delta (1.0.729.838)

-- https://lua.expert/
return function(p1, ...) --[[ Line: 5 ]]
    assert(type(p1) == "function")

    local t = { ... }
    local v2 = select("#", ...)
    local v3 = Instance.new("BindableEvent")

    v3.Event:Connect(function() --[[ Line: 12 | Upvalues: p1 (copy), t (copy), v2 (copy) ]]
        p1(unpack(t, 1, v2))
    end)
    v3:Fire()
    v3:Destroy()
end
