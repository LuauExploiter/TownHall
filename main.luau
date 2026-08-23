local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
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

local Folder = ReplicatedFirst:FindFirstChild("Folder") or ReplicatedFirst:WaitForChild("Folder", 5) or ReplicatedStorage:FindFirstChild("Folder")
if not Folder then return warn("Folder not found") end

local TownHallInst = Folder:FindFirstChild("TownHall") or Folder:FindFirstChildWhichIsA("ModuleScript")
if not TownHallInst then return warn("TownHall instance not found") end

local Ok, TownHall = pcall(getgenv().LoadModule, "TownHall", TownHallInst)
if not Ok or typeof(TownHall) ~= "function" then return warn("Failed to load TownHall: " .. tostring(TownHall)) end

local Character = Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()
local PlayAnim = getgenv().LoadModule("PlayAnimation")
local Anim = TownHallInst:FindFirstChild("Animation")
if Anim and PlayAnim then PlayAnim.Play(Anim.AnimationId, 1) end

task.spawn(function() pcall(TownHall, Character) end)
