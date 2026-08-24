local Players = game:GetService("Players")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local Workspace = game:GetService("Workspace")
local Lighting = game:GetService("Lighting")

local BaseUrl = "https://raw.githubusercontent.com/LuauExploiter/TownHall/main/dependencies/"
local Cache = {}

getgenv().LoadModule = function(Name, Inst)
    if Cache[Name] then return Cache[Name] end
    
    local Src = nil
    local success, result = pcall(function() return game:HttpGet(BaseUrl .. Name .. ".luau") end)
    if success and result and result ~= "404: Not Found" then
        Src = result
    end
    
    if not Src then
        if Inst and Inst:IsA("ModuleScript") then
            local ok, res = pcall(require, Inst)
            if ok then
                Cache[Name] = res
                return res
            end
        end
        return error("Missing dependency: " .. Name)
    end
    
    local Fn = loadstring(string.format("local script = ...; local require = function(m) return getgenv().LoadModule(m.Name, m) end; %s", Src))
    local Res = Fn(Inst or Instance.new("ModuleScript"))
    Cache[Name] = Res
    return Res
end

local function GetHttpFunc()
    return request or http_request or (syn and syn.request) or (fluxus and fluxus.request)
end

local SoundCache = {}
local function FetchSoundAsset(id)
    if SoundCache[id] then return SoundCache[id] end
    local apiUrl = "https://sound-downloader.onrender.com/api/download?assetid=" .. id .. "&format=mp3"
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
    if not (writefile and getcustomasset) then return nil end
    
    local fileName = "SD_Sound_" .. id .. ".mp3"
    pcall(writefile, fileName, body)
    local assetUrl = getcustomasset(fileName)
    if assetUrl then
        SoundCache[id] = assetUrl
        return assetUrl
    end
    return nil
end

shared.sfx = shared.sfx or function(p) 
    local s = Instance.new("Sound")
    local soundIdStr = tostring(p.SoundId or ""):gsub("rbxassetid://", "")
    if soundIdStr ~= "" then
        local customUrl = FetchSoundAsset(soundIdStr)
        if customUrl then
            s.SoundId = customUrl
        else
            s.SoundId = p.SoundId or ""
        end
    end
    s.Volume = p.Volume or 1
    s.RollOffMaxDistance = p.RollOffMaxDistance or 100
    s.Parent = p.Parent or Workspace
    s:Play()
    return s
end

shared.smartEmit = shared.smartEmit or function(e, c) if e and e:IsA("ParticleEmitter") then e:Emit(c or 5) end end
shared.NerfVfx = shared.NerfVfx or function() end
shared.repfire = shared.repfire or function() end
shared.originallighting = shared.originallighting or function() end
shared.SetCore = shared.SetCore or function() end
shared.ismobile = shared.ismobile or false
shared.isconsole = shared.isconsole or false
shared.OnScreen = shared.OnScreen or function() return true end
shared.smoothout = shared.smoothout or function() end

shared.vfx = shared.vfx or {}
shared.vfx.emit = shared.vfx.emit or function(fxObject)
    for _, v in ipairs(fxObject:GetDescendants()) do
        if v:IsA("ParticleEmitter") then
            v:Emit(v:GetAttribute("EmitCount") or 5)
            v.Enabled = true
        elseif v:IsA("Beam") then
            v.Enabled = true
        end
    end
end

_G.ServerRunning = true

if not Workspace:FindFirstChild("Thrown") then
    local ThrownFolder = Instance.new("Folder")
    ThrownFolder.Name = "Thrown"
    ThrownFolder.Parent = Workspace
end

local CreateFn = loadstring(game:HttpGet(BaseUrl .. "CreateFolder.luau"))
if CreateFn then pcall(CreateFn) end

local Folder = ReplicatedFirst:FindFirstChild("Folder") or ReplicatedFirst:WaitForChild("Folder", 5)
if not Folder then return end

local TownHallInst = Folder:FindFirstChild("TownHall") or Folder:FindFirstChildWhichIsA("ModuleScript")
if not TownHallInst then return end

local Ok, TownHall = pcall(getgenv().LoadModule, "TownHall", TownHallInst)
if not Ok or typeof(TownHall) ~= "function" then return end

local Character = Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()

local PlayAnimModule = getgenv().LoadModule("PlayAnimation")
local Anim = TownHallInst:FindFirstChild("Animation")
if Anim and Anim:IsA("Animation") and PlayAnimModule then
    PlayAnimModule.Play(Anim.AnimationId, 1)
end

task.spawn(function()
    pcall(TownHall, Character)
end)
