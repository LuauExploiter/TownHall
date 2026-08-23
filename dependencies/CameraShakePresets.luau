-- Script Path: game:GetService("ReplicatedStorage").Emotes.VFX.VfxMods.libraryNew.CameraShaker.CameraShakePresets
-- Took 0.16s to decompile.
-- Executor: Delta (1.0.729.838)

-- https://lua.expert/
local CameraShakeInstance = require(script.Parent.CameraShakeInstance)
local t = {
    Bump = function() --[[ Bump | Line: 26 | Upvalues: CameraShakeInstance (copy) ]]
        local v1 = CameraShakeInstance.new(2.5, 4, 0.1, 0.75)

        v1.PositionInfluence = Vector3.new(0.15, 0.15, 0.15)
        v1.RotationInfluence = Vector3.new(1, 1, 1)

        return v1
    end,
    BigBump = function() --[[ BigBump | Line: 33 | Upvalues: CameraShakeInstance (copy) ]]
        local v1 = CameraShakeInstance.new(2.5, 4, 0.1, 0.75)

        v1.PositionInfluence = Vector3.new(0.8, 0.8, 0.8)
        v1.RotationInfluence = Vector3.new(1, 1, 1)

        return v1
    end,
    SmallBump = function() --[[ SmallBump | Line: 40 | Upvalues: CameraShakeInstance (copy) ]]
        local v1 = CameraShakeInstance.new(2.5, 4, 0.1, 0.75)

        v1.PositionInfluence = Vector3.new(0.01, 0.01, 0.01)
        v1.RotationInfluence = Vector3.new(0.5, 0.5, 0.5)

        return v1
    end,
    SmallestBump = function() --[[ SmallestBump | Line: 47 | Upvalues: CameraShakeInstance (copy) ]]
        local v1 = CameraShakeInstance.new(1.25, 2, 0.05, 0.405)

        v1.PositionInfluence = Vector3.new(0.005, 0.005, 0.005)
        v1.RotationInfluence = Vector3.new(0.25, 0.25, 0.25)

        return v1
    end,
    Loop = function() --[[ Loop | Line: 54 | Upvalues: CameraShakeInstance (copy) ]]
        local v1 = CameraShakeInstance.new(0.5, 1, 0.05, 0.35)

        v1.PositionInfluence = Vector3.new(0.01, 0.01, 0.01)
        v1.RotationInfluence = Vector3.new(0.25, 0.25, 0.25)

        return v1
    end,
    Explosion = function() --[[ Explosion | Line: 63 | Upvalues: CameraShakeInstance (copy) ]]
        local v1 = CameraShakeInstance.new(5, 10, 0, 1.5)

        v1.PositionInfluence = Vector3.new(0.25, 0.25, 0.25)
        v1.RotationInfluence = Vector3.new(4, 1, 1)

        return v1
    end,
    BumpRemaked = function() --[[ BumpRemaked | Line: 70 | Upvalues: CameraShakeInstance (copy) ]]
        local v1 = CameraShakeInstance.new(2, 5, 0, 1)

        v1.PositionInfluence = Vector3.new(0.2, 0.2, 0.2)
        v1.RotationInfluence = Vector3.new(3, 1, 1)

        return v1
    end,
    BigExplosion = function() --[[ BigExplosion | Line: 77 | Upvalues: CameraShakeInstance (copy) ]]
        local v1 = CameraShakeInstance.new(20, 40, 0, 2)

        v1.PositionInfluence = Vector3.new(0.55, 0.55, 0.55)
        v1.RotationInfluence = Vector3.new(5, 2, 2)

        return v1
    end,
    ReallyBigExplosion = function() --[[ ReallyBigExplosion | Line: 84 | Upvalues: CameraShakeInstance (copy) ]]
        local v1 = CameraShakeInstance.new(30, 50, 0, 1.5)

        v1.PositionInfluence = Vector3.new(1, 1, 1)
        v1.RotationInfluence = Vector3.new(5, 2, 2)

        return v1
    end,
    SmallExplosion = function() --[[ SmallExplosion | Line: 91 | Upvalues: CameraShakeInstance (copy) ]]
        local v1 = CameraShakeInstance.new(5, 10, 0, 1.5)

        v1.PositionInfluence = Vector3.new(0.15, 0.15, 0.15)
        v1.RotationInfluence = Vector3.new(4, 1, 1)

        return v1
    end,
    ExplosionNormal = function() --[[ ExplosionNormal | Line: 98 | Upvalues: CameraShakeInstance (copy) ]]
        local v1 = CameraShakeInstance.new(5, 10, 0, 1.5)

        v1.PositionInfluence = Vector3.new(3, 3, 3)
        v1.RotationInfluence = Vector3.new(4, 1, 1)

        return v1
    end,
    Earthquake = function() --[[ Earthquake | Line: 106 | Upvalues: CameraShakeInstance (copy) ]]
        local v1 = CameraShakeInstance.new(0.6, 3.5, 2, 10)

        v1.PositionInfluence = Vector3.new(0.25, 0.25, 0.25)
        v1.RotationInfluence = Vector3.new(1, 1, 4)

        return v1
    end,
    BadTrip = function() --[[ BadTrip | Line: 116 | Upvalues: CameraShakeInstance (copy) ]]
        local v1 = CameraShakeInstance.new(10, 0.15, 5, 10)

        v1.PositionInfluence = Vector3.new(0, 0, 0.15)
        v1.RotationInfluence = Vector3.new(2, 1, 4)

        return v1
    end,
    HandheldCamera = function() --[[ HandheldCamera | Line: 126 | Upvalues: CameraShakeInstance (copy) ]]
        local v1 = CameraShakeInstance.new(1, 0.25, 5, 10)

        v1.PositionInfluence = Vector3.new(0, 0, 0)
        v1.RotationInfluence = Vector3.new(1, 0.5, 0.5)

        return v1
    end,
    Vibration = function() --[[ Vibration | Line: 136 | Upvalues: CameraShakeInstance (copy) ]]
        local v1 = CameraShakeInstance.new(0.4, 20, 2, 2)

        v1.PositionInfluence = Vector3.new(0, 0.15, 0)
        v1.RotationInfluence = Vector3.new(1.25, 0, 4)

        return v1
    end,
    RoughDriving = function() --[[ RoughDriving | Line: 146 | Upvalues: CameraShakeInstance (copy) ]]
        local v1 = CameraShakeInstance.new(1, 2, 1, 1)

        v1.PositionInfluence = Vector3.new(0, 0, 0)
        v1.RotationInfluence = Vector3.new(1, 1, 1)

        return v1
    end
}

return setmetatable({}, {
    __index = function(p1, p2) --[[ __index | Line: 158 | Upvalues: t (copy) ]]
        local v1 = t[p2]

        if type(v1) == "function" then
            return v1()
        end

        error("No preset found with index \"" .. p2 .. "\"")
    end
})
