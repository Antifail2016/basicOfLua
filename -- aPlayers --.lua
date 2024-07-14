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
local UserLv = LocalId.Level.Value
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local ToServer = Remotes:WaitForChild("ToServer")
local Quest = ToServer:WaitForChild("Quest")

-- Enemie Bandit-- 
local NPC = Workspace:WaitForChild("NPC")
local Folder_Fight = NPC:WaitForChild("Fight")

-- Quest Woppa -- 
local Talk = NPC:WaitForChild("Talk")
local Woppa = Talk:WaitForChild("Woppa")
local Info = Woppa:WaitForChild("Info")

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
            {"Quest"} = "Defeat 5 Bandits",
            {"GuestGiverPosition"} = CFrame.new(172, 41, -1151),
            {"QuestGiverNPC"} = "Woppa",
            {"EntityFolder"} = "Bandits",
            {"EntityName"} = "Bandit",
        }
    end
end

while (UserLv < 100) and (task.wait()) do
    UserLv = LocalId.Level.Value
    if (UserLv >= 1 and UserLv < 100)  then
        if LocalId.Quest.Value == "Defeat 5 Bandits" then
            print("Quest Already !")
            local Enimies = GetEnimies("Bandits", "Bandit")
            local Bandit_Leader = Leader("Bandits", "Bandit Leader") 
            if Enimies ~= nil then  
                LocalPlayer.Character.HumanoidRootPart.CFrame = Enimies.HumanoidRootPart.CFrame 
                ServerMove:FireServer("Combat", 0.275, "right", 0.275, "Combat")
            elseif Enimies == nil then
                print("Bandit Leader !!!")
                LocalPlayer.Character.HumanoidRootPart.CFrame = Bandit_Leader.HumanoidRootPart.CFrame
                ServerMove:FireServer("Combat", 0.275, "right", 0.275, "Combat")
            end
        else
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(172, 41, -1151)
            Quest:FireServer(Talk.Woppa.Info)
        end
    end
end