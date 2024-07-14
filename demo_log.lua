-- Players --
local Players = game:GetService("Players")

-- Workspace
local Workspace = game:GetService("Workspace")

-- ReplicatedStorage
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local PlayerData = ReplicatedStorage:WaitForChild("PlayerData")
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local ToServer = Remotes:WaitForChild("ToServer")
local Quest = ToServer:WaitForChild("Quest")
local NPC = Workspace:WaitForChild("NPC")
local Talk = NPC:WaitForChild("Talk")

-- NPC_Go_Fight -- 
local Fight = NPC:WaitForChild("Fight")
local ServerMove = Remotes:WaitForChild("ServerMove")

local LocalPlayer = Players.LocalPlayer

local LocalPlayerData = PlayerData:WaitForChild(LocalPlayer.UserId)


function GetEntity(_NameOfFoler_, _NameOfEntity_)
    return Fight[_NameOfFoler_]:FindFirstChild(_NameOfEntity_)
end

function GetQuest() 
    local Level = LocalPlayerData.Level.Value
    if (Level >= 1 and Level < 110) then
        return {
            ["Quest"] = "Defeat 5 Bandits",
            ["GuestGiverPosition"] = CFrame.new(172, 41, -1151),
            ["QuestGiverNPC"] = "Woppa",
            ["EntityFolder"] = "Bandits",
            ["EntityName"] = "Bandit",
        }
    elseif (Level ) then
    end
end

print(GetQuest)

while (task.wait()) do
    pcall(function()
        local Current_Quest = GetQuest()
        if LocalPlayerData.Quest.Value == Current_Quest["Quest"] then
            print("Have quest")
            local Entity = GetEntity(Current_Quest["EntityFolder"], Current_Quest["EntityName"])
            if Entity ~= nil then
                LocalPlayer.Character.HumanoidRootPart.CFrame = Entity.HumanoidRootPart.CFrame * CFrame.new(0,5,0) * CFrame.Angles(math.rad(270),0,0)
                if LocalPlayer.Backpack:FindFirstChild("Combat") then
                    -- Equip Weapon
                    LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack:FindFirstChild("Combat"))
                end
                ServerMove:FireServer("Combat", 0.275, "right", 0.275, "Combat")
            else
                print("No entity")
            end
        else
            print("No quest")
            LocalPlayer.Character.HumanoidRootPart.CFrame = Current_Quest["GuestGiverPosition"]
            Quest:FireServer(Talk[Current_Quest["QuestGiverNPC"]].Info)
        end
    end)
end