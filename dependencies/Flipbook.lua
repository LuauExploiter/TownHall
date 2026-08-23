-- Script Path: game:GetService("ReplicatedStorage").Emotes.VFX.VfxMods.TownHall.modules.Flipbook
-- Took 0.16s to decompile.
-- Executor: Delta (1.0.729.838)

-- https://lua.expert/
game:GetService("TweenService")

local RunService = game:GetService("RunService")
local t = {
    textureSets = {
        {
            "rbxassetid://130629111061720",
            "rbxassetid://85918277582982",
            "rbxassetid://119607379507449",
            "rbxassetid://81774968961073",
            "rbxassetid://103220043753832",
            "rbxassetid://77226714936241",
            "rbxassetid://85340870834297",
            "rbxassetid://135457002916586",
            "rbxassetid://70918122706338",
            "rbxassetid://110100420187591",
            "rbxassetid://134755247127972",
            "rbxassetid://128126542042134",
            "rbxassetid://112164408619711",
            "rbxassetid://82296772148578",
            "rbxassetid://91070668346062",
            "rbxassetid://114112675971868",
            "rbxassetid://"
        },
        {
            "rbxassetid://105732378646255",
            "rbxassetid://89481778174251",
            "rbxassetid://117771628383659",
            "rbxassetid://76701247249895",
            "rbxassetid://91562861750532",
            "rbxassetid://105133668149667",
            "rbxassetid://99512357475594",
            "rbxassetid://113214868152279",
            "rbxassetid://99744127393588",
            "rbxassetid://80271489296785",
            "rbxassetid://129340926248442",
            "rbxassetid://113078430710440",
            "rbxassetid://121307226171896",
            "rbxassetid://91904278509969",
            "rbxassetid://90170347865413",
            "rbxassetid://115756751613614",
            "rbxassetid://95908181261933",
            "rbxassetid://80232568958811",
            "rbxassetid://135493627589161",
            "rbxassetid://132569766663606",
            "rbxassetid://103054291603173",
            "rbxassetid://120610675396334",
            "rbxassetid://97868570964111",
            "rbxassetid://128487139635172"
        }
    }
}

local function loadTextures(p1) --[[ loadTextures | Line: 59 | Upvalues: t (copy) ]]
    local t2 = {}

    for i, v in ipairs(t.textureSets[p1]) do
        local Texture = Instance.new("Texture")

        Texture.Texture = v
        table.insert(t2, Texture)
    end

    return t2
end

function t.animate(p1, p2, p3, p4, p5) --[[ animate | Line: 70 | Upvalues: loadTextures (copy), RunService (copy) ]]
    local v1 = loadTextures(p4)
    local v2 = 1
    local v3 = #v1
    local v4 = 1 / p3
    local v5 = tick()
    local v6 = nil

    v6 = RunService.Heartbeat:Connect(function() --[[ Line: 80 | Upvalues: v5 (ref), v4 (copy), p5 (copy), v1 (copy), v2 (ref), p1 (copy), p2 (copy), v3 (copy), v6 (ref) ]]
        local v12 = tick()

        if not (v4 <= v12 - v5) then
            return
        end

        if p5 then
            p5.TextureId = v1[v2].Texture
        else
            p1.Texture = v1[v2].Texture
            v5 = v12
        end

        if p2 then
            v2 = v2 % v3 + 1

            return
        end

        v2 = v2 + 1

        if not (v3 < v2) then
            return
        end

        v6:Disconnect()
    end)
end

return t
