local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

local PlayAnim = {}

local function GetHttpFunc()
    return request or http_request or (syn and syn.request) or (fluxus and fluxus.request)
end

function PlayAnim.Play(AnimationId, Speed)
    local id = tostring(AnimationId):gsub("rbxassetid://", "")
    local player = Players.LocalPlayer
    if not player then return end

    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end

    local animator = humanoid:FindFirstChildOfClass("Animator") or Instance.new("Animator", humanoid)
    local track = nil

    local httpFunc = GetHttpFunc()
    if httpFunc and writefile and getcustomasset then
        local response = httpFunc({
            Url = "https://assetdelivery.roblox.com/v1/asset/?id=" .. id,
            Method = "GET"
        })

        if response and response.Body then
            local fileName = "PlayAnim_" .. id .. ".rbxm"
            writefile(fileName, response.Body)
            local assetUrl = getcustomasset(fileName)

            local anim = Instance.new("Animation")
            anim.AnimationId = assetUrl

            track = animator:LoadAnimation(anim)
        end
    end

    if not track then
        local anim = Instance.new("Animation")
        anim.AnimationId = "rbxassetid://" .. id
        track = animator:LoadAnimation(anim)
    end

    if track then
        track.Priority = Enum.AnimationPriority.Action
        track.Looped = false
        track:Play()
        if Speed then
            track:AdjustSpeed(Speed)
        end
    end

    return track
end

return PlayAnim
