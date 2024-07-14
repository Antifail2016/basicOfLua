local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PlayerData = ReplicatedStorage:WaitForChild("PlayerData")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local ToServer = Remotes:WaitForChild("ToServer")
local Quest = ToServer:WaitForChild("Quest")
local NPC = Workspace:WaitForChild("NPC")
local Talk = NPC:WaitForChild("Talk")
local Fight = NPC:WaitForChild("Fight")
local ServerMove = Remotes:WaitForChild("ServerMove")

local LocalPlayer = Players.LocalPlayer

local OwnedPlayerData = PlayerData:WaitForChild(LocalPlayer.UserId)

local Level = OwnedPlayerData.Level.Value

function GetEntity(_NameOfFoler_, _NameOfEntity_)
    return Fight[_NameOfFoler_]:FindFirstChild(_NameOfEntity_)
end

while (Level < 20) and (task.wait()) do
    Level = OwnedPlayerData.Level.Value
    if Level >= 1 and Level < 20 then
        if OwnedPlayerData.Quest.Value == "Defeat 5 Bandits" then
            print("Have quest")
            local Entity = GetEntity("Bandits", "Bandit")
            if Entity ~= nil then
                LocalPlayer.Character.HumanoidRootPart.CFrame = Entity.HumanoidRootPart.CFrame * CFrame.new(0,5,0) * CFrame.Angles(math.rad(270),0,0)
                ServerMove:FireServer("Combat", 0.275, "right", 0.275, "Combat")
                if Entity.Humanoid.Health < Entity.Humanoid.MaxHealth then
                    Entity.Humanoid.Health = 0
                end
            else
                print("No entity")
            end
        else
            print("No quest")
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(173, 41, -1150)
            Quest:FireServer(Talk.Woppa.Info)
        end
    end
end