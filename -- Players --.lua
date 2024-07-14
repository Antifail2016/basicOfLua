-- Players --
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local UserId = LocalPlayer.UserId

-- WorkSpace -- 
local Workspace = game:GetService("Workspace")

-- PlayerData --
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PlayerData = ReplicatedStorage:WaitForChild("PlayerData")

-- LocalPlayer --
local LocalId = PlayerData:WaitForChild(LocalPlayer.UserId)
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local ToServer = Remotes:WaitForChild("ToServer")
local Quest = ToServer:WaitForChild("Quest")

-- Enemie Bandit-- 
local NPC = Workspace:WaitForChild("NPC")
local Folder_Fight = NPC:WaitForChild("Fight")

-- Quest Woppa -- 
local Talk = NPC:WaitForChild("Talk")
-- Combat --
local ServerMove = Remotes:WaitForChild("ServerMove")

-- Function_list_enimes -- 
function GetEnimies(_FolderOfEnimies_, _NameOfEnimies)
    return Folder_Fight[_FolderOfEnimies_]:FindFirstChild(_NameOfEnimies)
end

function Leader (_FolderOfEnimies_, _NameOfEnimies)
    return Folder_Fight[_FolderOfEnimies_]:FindFirstChild(_NameOfEnimies)
end

function GetQuest() 
    local UserLv = LocalId.Level.Value
    if (UserLv >= 1 and UserLv < 110) then
        return {
            ["Quest"] = "Defeat 5 Bandits",
            ["GuestGiverPosition"] = CFrame.new(172, 41, -1151),
            ["QuestGiverNPC"] = "Woppa",
            ["EntityFolder"] = "Bandits",
            ["EntityName"] = "Bandit",
        }
    end
end

print(GetQuest())


while (task.wait()) do
    pcall(function)
        local Current_Quest = GetQuest()
        if (UserLv >= 1 and UserLv < 110)  then
            if LocalId.Quest.Value == Current_Quest["Quest"] then
                print("Quest Already !")
                local Enimies = GetEnimies(Current_Quest["EntityFolder"], Current_Quest["Bandit"])
                local Bandit_Leader = Leader("Bandits", "Bandit Leader") 
                if Enimies ~= nil then  
                    LocalPlayer.Character.HumanoidRootPart.CFrame = Enimies.HumanoidRootPart.CFrame 
                    if LocalPlayer.Backpack:FindFirstChild("Combat") then
                        -- Equip Weapon
                        LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack:FindFirstChild("Combat"))
                    end
                    ServerMove:FireServer("Combat", 0.275, "right", 0.275, "Combat")
                else
                    print("NO")
                end
            else
                LocalPlayer.Character.HumanoidRootPart.CFrame = Current_Quest["GuestGiverPosition"]
                Quest:FireServer(Talk[Current_Quest["QuestGiverNPC"]].Info)
            end
    end
end