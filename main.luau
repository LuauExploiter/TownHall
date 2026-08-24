local Players = game:GetService("Players")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local Workspace = game:GetService("Workspace")

local BaseUrl = "https://raw.githubusercontent.com/LuauExploiter/TownHall/main/dependencies/"
local Cache = {}

getgenv().LoadModule = function(Name, Inst)
    if Cache[Name] then return Cache[Name] end
    local Src = game:HttpGet(BaseUrl .. Name .. ".luau")
    if not Src or Src == "404: Not Found" then return error("Missing dependency: " .. Name) end
    local Fn = loadstring(string.format("local script = ...; local require = function(m) return getgenv().LoadModule(m.Name, m) end; %s", Src))
    local Res = Fn(Inst or Instance.new("ModuleScript"))
    Cache[Name] = Res
    return Res
end

shared.sfx = shared.sfx or function(p) local s = Instance.new("Sound") s.SoundId = p.SoundId or "" s.Volume = p.Volume or 1 s.Parent = p.Parent or Workspace s:Play() return s end
shared.smartEmit = shared.smartEmit or function(e, c) if e and e:IsA("ParticleEmitter") then e:Emit(c or 5) end end
shared.NerfVfx = shared.NerfVfx or function() end
shared.repfire = shared.repfire or function() end

local CreateFn = loadstring(game:HttpGet(BaseUrl .. "CreateFolder.luau"))
if CreateFn then pcall(CreateFn) end

local Folder = ReplicatedFirst:FindFirstChild("Folder") or ReplicatedFirst:WaitForChild("Folder", 5)
if not Folder then return end

local TownHallInst = Folder:FindFirstChild("TownHall") or Folder:FindFirstChildWhichIsA("ModuleScript")
if not TownHallInst then return end

local Ok, TownHall = pcall(getgenv().LoadModule, "TownHall", TownHallInst)
if not Ok or typeof(TownHall) ~= "function" then return end

local Character = Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()

local function GetHttpFunc()
    return request or http_request or (syn and syn.request) or (fluxus and fluxus.request)
end

local function FetchAsset(id)
    local apiUrl = string.format("https://sound-downloader.onrender.com/api/download?assetid=%s", id)
    local body = nil
    local httpFunc = GetHttpFunc()
    if httpFunc then
        local success, response = pcall(httpFunc, {Url = apiUrl, Method = "GET"})
        if success and response and response.Body and response.Body ~= "" and not string.find(response.Body, '"error"') then
            body = response.Body
        end
    end
    if not body then
        local success, result = pcall(function() return game:HttpGet(apiUrl) end)
        if success and result and result ~= "" and not string.find(result, '"error"') then
            body = result
        end
    end
    if not body or body == "" then return nil end
    if not (writefile and getcustomasset and game.GetObjects) then return nil end
    local fileName = "SD_Asset_" .. id .. ".rbxm"
    local writeOk = pcall(writefile, fileName, body)
    if not writeOk then return nil end
    local assetUrl = getcustomasset(fileName)
    if not assetUrl then return nil end
    local objects = nil
    pcall(function() objects = game:GetObjects(assetUrl) end)
    if objects and #objects > 0 then return objects[1] end
    return nil
end

local function GetKeyframeSequence(id)
    local root = FetchAsset(id)
    if not root then return nil end
    if root:IsA("KeyframeSequence") then return root end
    if root:IsA("Animation") then
        local animIdStr = tostring(root.AnimationId):gsub("rbxassetid://", "")
        local animId = tonumber(animIdStr)
        if animId then
            local ksRoot = FetchAsset(animId)
            if ksRoot and ksRoot:IsA("KeyframeSequence") then return ksRoot end
        end
    end
    return root:FindFirstChildWhichIsA("KeyframeSequence", true)
end

local PlayAnim = getgenv().LoadModule("PlayAnimation")
local Anim = TownHallInst:FindFirstChild("Animation")
if Anim and Anim:IsA("Animation") then
    local animId = tostring(Anim.AnimationId):gsub("rbxassetid://", "")
    local ks = GetKeyframeSequence(animId)
    if ks then
        PlayAnim.Play(Character, ks, 1)
    end
end

task.spawn(function() pcall(TownHall, Character) end)
