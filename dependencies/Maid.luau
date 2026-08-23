-- Script Path: game:GetService("ReplicatedStorage").Emotes.VFX.VfxMods.libraryNew.Maid
-- Took 0.16s to decompile.
-- Executor: Delta (1.0.729.838)

-- https://lua.expert/
local t = {
    ClassName = "Maid"
}

function t.new() --[[ new | Line: 18 | Upvalues: t (copy) ]]
    return setmetatable({
        _tasks = {}
    }, t)
end
function t.isMaid(p1) --[[ isMaid | Line: 24 ]]
    return if type(p1) == "table" then p1.ClassName == "Maid" else false
end
function t.__index(p1, p2) --[[ __index | Line: 30 | Upvalues: t (copy) ]]
    if t[p2] then
        return t[p2]
    end

    return p1._tasks[p2]
end
function t.__newindex(p1, p2, p3) --[[ __newindex | Line: 47 | Upvalues: t (copy) ]]
    if t[p2] ~= nil then
        error(("\'%s\' is reserved"):format((tostring(p2))), 2)
    end

    local _tasks = p1._tasks
    local v1 = _tasks[p2]

    if v1 == p3 then
        return
    end

    _tasks[p2] = p3

    if not v1 then
        return
    end

    if type(v1) == "function" then
        v1()

        return
    end

    if typeof(v1) == "RBXScriptConnection" then
        v1:Disconnect()

        return
    end

    if v1.Destroy then
        v1:Destroy()

        return
    end

    if not v1.destroy then
        return
    end

    v1:destroy()
end
function t.giveTask(p1, p2) --[[ giveTask | Line: 77 ]]
    if not p2 then
        error("Task cannot be false or nil", 2)
    end

    local v1 = #p1._tasks + 1

    p1[v1] = p2

    if type(p2) ~= "table" or (p2.Destroy or p2.destroy) then
        return v1
    end

    warn("[Maid.GiveTask] - Gave table task without .Destroy\n\n" .. debug.traceback())

    return v1
end
function t.give(p1, p2) --[[ give | Line: 109 ]]
    if type(p2) == "table" and p2.isAPromise then
        local v1, v2 = p1:givePromise(p2)

        _ = v1

        return p2, v2
    end

    return p2, p1:giveTask(p2)
end
function t.doCleaning(p1) --[[ doCleaning | Line: 121 ]]
    local _tasks = p1._tasks

    for k, v in pairs(_tasks) do
        if typeof(v) == "RBXScriptConnection" then
            _tasks[k] = nil
            v:Disconnect()
        end
    end

    local v1, v2 = next(_tasks)

    while v2 ~= nil do
        _tasks[v1] = nil

        if type(v2) == "function" then
            v2()
        elseif typeof(v2) == "RBXScriptConnection" then
            v2:Disconnect()
        elseif v2.Destroy then
            v2:Destroy()
        elseif v2.destroy then
            v2:destroy()
        end

        local v3, v4 = next(_tasks)

        v2, v1 = v4, v3
    end
end
t.destroy = t.doCleaning
t.clean = t.doCleaning

return t
