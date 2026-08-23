local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

local BaseUrl = "https://raw.githubusercontent.com/LuauExploiter/TownHall/main/"

local function LoadUrl(FileName)
    local Success, Result = pcall(function()
        return loadstring(game:HttpGet(BaseUrl .. FileName))()
    end)
    return Success and Result or nil
end

shared.sfx = shared.sfx or function(Properties)
    local Sound = Instance.new("Sound")
    Sound.SoundId = Properties.SoundId or ""
    Sound.Volume = Properties.Volume or 1
    Sound.RollOffMaxDistance = Properties.RollOffMaxDistance or 100
    Sound.Parent = Properties.Parent or Workspace
    Sound:Play()
    return Sound
end

shared.smartEmit = shared.smartEmit or function(Emitter, Count)
    if Emitter and Emitter:IsA("ParticleEmitter") then
        Emitter:Emit(Count or 5)
    end
end

shared.NerfVfx = shared.NerfVfx or function() end
shared.repfire = shared.repfire or function() end

pcall(LoadUrl, "CreateFolder.lua")

local PlayAnimation = LoadUrl("PlayAnimation.lua")
local Folder = ReplicatedStorage:WaitForChild("Folder", 5)

if not Folder then return end

local TownHallModule = Folder:FindFirstChild("TownHall") or Folder:FindFirstChildWhichIsA("ModuleScript")
if not TownHallModule then return end

local Success, TownHall = pcall(require, TownHallModule)
if not Success or typeof(TownHall) ~= "function" then return end

local Character = Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()

local Animation = TownHallModule:FindFirstChild("Animation")
if Animation and Animation:IsA("Animation") and PlayAnimation then
    PlayAnimation.Play(Animation.AnimationId, 1)
end

task.spawn(function()
    pcall(TownHall, Character)
end)
