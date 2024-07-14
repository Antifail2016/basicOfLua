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

-- Cancel Quest --
local AbandonQuest = ToServer:WaitForChild("AbandonQuest")


function GetEntity(_NameOfFoler_, _NameOfEntity_)
    return Fight[_NameOfFoler_]:FindFirstChild(_NameOfEntity_)
end

function GetEntity_Leader(_NameOfFoler_, _NameOfEntity_)
    return Fight[_NameOfFoler_]:FindFirstChild(_NameOfEntity_)
end

function GetEntity_Leader_Multi(_NameOfFoler_, _NameOfEntity_)
    return Fight[_NameOfFoler_]:FindFirstChild(_NameOfEntity_)
end



function GetQuest() 
    local Level = LocalPlayerData.Level.Value
    if (Level >= 1 and Level < 1) then
        return {
            ["Quest"] = "Defeat 5 Bandits",
            ["GuestGiverPosition"] = CFrame.new(172, 41, -1151),
            ["QuestGiverNPC"] = "Woppa",
            ["EntityFolder"] = "Bandits",
            ["EntityName"] = "Bandit",
        }
    elseif (Level >= 70 and Level < 1) then
        return {
            ["Quest"] = "Kill 5 Of Reiner's Subordinates",
            ["GuestGiverPosition"] = CFrame.new(-15, 37, -824),
            ["QuestGiverNPC"] = "Boss",
            ["EntityFolder"] = "Reiner",
            ["EntityName"] = "Reiner's Subordinate",
        }
    elseif (Level >= 100 and Level < 1) then
        return {
            ["Quest"] = "Defeat 6 Orange Pirates",
            ["GuestGiverPosition"] = CFrame.new(-2064, 25, -2350),
            ["QuestGiverNPC"] = "Unrio",
            ["EntityFolder"] = "Buggy",
            ["EntityName"] = "Orange Pirate",
        }
    elseif (Level >= 100 and Level < 1) then
        return {
            ["Quest"] = "Kill 5 Monkeys",
            ["GuestGiverPosition"] = CFrame.new(-1148, 35, 2067),
            ["QuestGiverNPC"] = "Zet",
            ["EntityFolder"] = "Gorillas",
            ["EntityName"] = "Monkey",
        }
    elseif (Level >= 100 and Level < 1) then
        return {
            ["Quest"] = "Defeat 6 Chefs",
            ["GuestGiverPosition"] = CFrame.new(1980, 26, 1635),
            ["QuestGiverNPC"] = "Dyna",
            ["EntityFolder"] = "Baratie",
            ["EntityName"] = "Angry Chef",
        }
    elseif (Level >= 100 and Level < 1) then
        return {
            ["Quest"] = "Defeat 6 Krieg Pirates",
            ["GuestGiverPosition"] = CFrame.new(2022, 64, 1640),
            ["QuestGiverNPC"] = "Viz",
            ["EntityFolder"] = "Baratie",
            ["EntityName"] = "Krieg Pirate",
        }
    elseif (Level >= 100 and Level < 1) then
        return {
            ["Quest"] = "Defeat 7 Desert Brigands",
            ["GuestGiverPosition"] = CFrame.new(-6507, 167, -4530),
            ["QuestGiverNPC"] = "Wise",
            ["EntityFolder"] = "Sandora",
            ["EntityName"] = "Desert Brigand",
        }
    elseif (Level >= 100 and Level < 1) then
        return {
            ["Quest"] = "Defeat 7 Sand Pirates",
            ["GuestGiverPosition"] = CFrame.new(-6333, 41, -4795),
            ["QuestGiverNPC"] = "Cellierin",
            ["EntityFolder"] = "Sandora",
            ["EntityName"] = "Sand Pirate",
        }
    elseif (Level >= 100 and Level < 1) then
        return {
            ["Quest"] = "Defeat 7 Fishmen",
            ["GuestGiverPosition"] = CFrame.new(-1624, 29, -6094),
            ["QuestGiverNPC"] = "Bope",
            ["EntityFolder"] = "Fishmen",
            ["EntityName"] = "Fishman",
        }
    elseif (Level >= 100 and Level < 1) then
        return {
            ["Quest"] = "Defeat 8 Graverobbers",
            ["GuestGiverPosition"] = CFrame.new(-1644, 29, -6242),
            ["QuestGiverNPC"] = "Zeno",
            ["EntityFolder"] = "Fishmen",
            ["EntityName"] = "Graverobber",
        }
    
        -- skypia 1--
    elseif (Level >= 100 and Level < 1) then
        return {
            ["Quest"] = "Defeat 8 Graverobbers",
            ["GuestGiverPosition"] = CFrame.new(-1644, 29, -6242),
            ["QuestGiverNPC"] = "Zeno",
            ["EntityFolder"] = "Fishmen",
            ["EntityName"] = "Graverobber",
        }
        -- skypia 1--
    elseif (Level >= 100 and Level < 666) then
        return {
            ["Quest"] = "Defeat 10 Divine Guardians",
            ["GuestGiverPosition"] = CFrame.new(5133, 1235, -9151),
            ["QuestGiverNPC"] = "Sofen",
            ["EntityFolder"] = "SkyNpcs",
            ["EntityName"] = "Divine Guardian",
        }
    elseif (Level >= 100 and Level < 1) then
        return {
            ["Quest"] = "Defeat Enel",
            ["GuestGiverPosition"] = CFrame.new(4893, 1263, -9680),
            ["QuestGiverNPC"] = "Jovahn",
            ["EntityFolder"] = "Enel",
            ["EntityName"] = "Thunder God",
        }
    end 
end

function GetQuest_Leader()
    local Level = LocalPlayerData.Level.Value
    if (Level >= 1 and Level < 1) then
        return {
            ["Quest"] = "Defeat The Leader of the Bandits",
            ["GuestGiverPosition"] = CFrame.new(171, 38, -937),
            ["QuestGiverNPC"] = "Abu",
            ["EntityFolder"] = "Bandits",
            ["EntityName"] = "Bandit Leader",
        }
    elseif (Level >= 70 and Level < 1) then
        return {
            ["Quest"] = "Defeat The Devious Reiner",
            ["GuestGiverPosition"] = CFrame.new(213, 147, -711),
            ["QuestGiverNPC"] = "Zak",
            ["EntityFolder"] = "Reiner",
            ["EntityName"] = "Reiner",
        }
    elseif (Level >= 70 and Level < 1) then
        return {
            ["Quest"] = "Defeat Buggy",
            ["GuestGiverPosition"] = CFrame.new(-2093, 32, -2348),
            ["QuestGiverNPC"] = "King",
            ["EntityFolder"] = "Buggy",
            ["EntityName"] = "Buggy",
        }
    elseif (Level >= 70 and Level < 1) then
        return {
            ["Quest"] = "Defeat King Abu",
            ["GuestGiverPosition"] = CFrame.new(-1769, 29, 2313),
            ["QuestGiverNPC"] = "Monkey Hunter",
            ["EntityFolder"] = "Gorillas",
            ["EntityName"] = "King Abu",
        }
    elseif (Level >= 100 and Level < 1) then
        return {
            ["Quest"] = "Defeat 6 Chefs",
            ["GuestGiverPosition"] = CFrame.new(1980, 26, 1635),
            ["QuestGiverNPC"] = "Dyna",
            ["EntityFolder"] = "Baratie",
            ["EntityName"] = "Angry Chef",
        }
    elseif (Level >= 100 and Level < 1) then
        return {
            ["Quest"] = "Defeat 6 Krieg Pirates",
            ["GuestGiverPosition"] = CFrame.new(2022, 64, 1640),
            ["QuestGiverNPC"] = "Viz",
            ["EntityFolder"] = "Baratie",
            ["EntityName"] = "Krieg Pirate",
        }
    elseif (Level >= 100 and Level < 1) then
        return {
            ["Quest"] = "Defeat 7 Sand Pirates",
            ["GuestGiverPosition"] = CFrame.new(-6333, 41, -4795),
            ["QuestGiverNPC"] = "Cellierin",
            ["EntityFolder"] = "Sandora",
            ["EntityName"] = "Sand Pirate",
        }
    elseif (Level >= 100 and Level < 1) then
        return {
            ["Quest"] = "Defeat 7 Desert Brigands",
            ["GuestGiverPosition"] = CFrame.new(-6507, 167, -4530),
            ["QuestGiverNPC"] = "Wise",
            ["EntityFolder"] = "Sandora",
            ["EntityName"] = "Desert Brigand",
        }
    elseif (Level >= 100 and Level < 1) then
        return {
            ["Quest"] = "Defeat The Desert King",
            ["GuestGiverPosition"] = CFrame.new(-7526, 240, -4429),
            ["QuestGiverNPC"] = "Vivi",
            ["EntityFolder"] = "Croc",
            ["EntityName"] = "Desert King",
        }
    elseif (Level >= 100 and Level < 1) then
        return {
            ["Quest"] = "Defeat 7 Fishmen",
            ["GuestGiverPosition"] = CFrame.new(-1624, 29, -6094),
            ["QuestGiverNPC"] = "Bope",
            ["EntityFolder"] = "Fishmen",
            ["EntityName"] = "Fishman",
        }
    elseif (Level >= 100 and Level < 1) then
        return {
            ["Quest"] = "Defeat Arlong",
            ["GuestGiverPosition"] = CFrame.new(-1932, 28, -6187),
            ["QuestGiverNPC"] = "Little Boy",
            ["EntityFolder"] = "Fishmen",
            ["EntityName"] = "Arlong",
        }
    elseif (Level >= 100 and Level < 666) then
        return {
            ["Quest"] = "Defeat 10 Divine Guardians",
            ["GuestGiverPosition"] = CFrame.new(5133, 1235, -9151),
            ["QuestGiverNPC"] = "Sofen",
            ["EntityFolder"] = "SkyNpcs",
            ["EntityName"] = "Divine Guardian",
        }
    elseif (Level >= 100 and Level < 1) then
        return {
            ["Quest"] = "Defeat Enel",
            ["GuestGiverPosition"] = CFrame.new(4893, 1263, -9680),
            ["QuestGiverNPC"] = "Jovahn",
            ["EntityFolder"] = "Enel",
            ["EntityName"] = "Thunder God",
        }
    elseif (Level >= 100 and Level < 1) then
        return {
            ["Quest"] = "Defeat Enel",
            ["GuestGiverPosition"] = CFrame.new(-11215, 2069, 17482),
            ["QuestGiverNPC"] = "Jovahn",
            ["EntityFolder"] = "Kuma",
            ["EntityName"] = "Kuma",
        }
    end
end

function Sword_flow()
    return {"left", "right"}
end
function Sword_flow_real()
    return {"one", "two", "three"}
end

while (task.wait()) do
    pcall(function()
    -- weapon --
       -- Get Quest --
    local Current_Quest = GetQuest()
    local Current_Quest_Leader = GetQuest_Leader()


    -- Weapon Flow --
    local Sword_stroke = Sword_flow()
    local Sword_real = Sword_flow_real()

    -- Entity Figh --
    local Entity_Leader = GetEntity_Leader(Current_Quest_Leader["EntityFolder"], Current_Quest_Leader["EntityName"])
    if LocalPlayerData.Quest.Value == Current_Quest["Quest"] then
        local Entity = GetEntity(Current_Quest["EntityFolder"], Current_Quest["EntityName"])
        if (Entity ~= nil) then
            LocalPlayer.Character.HumanoidRootPart.CFrame = Entity.HumanoidRootPart.CFrame * CFrame.new(0,0,5)
            if LocalPlayer.Backpack:FindFirstChild("Skyborne Lance") then
                -- Equip Weapon
                LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack:FindFirstChild("Skyborne Lance"))
            end
            ServerMove:FireServer("SwordCombat", 0, "one", 0, Players.LocalPlayer.Character:WaitForChild("Skyborne LanceM"))
        end
    elseif (Entity_Leader ~= nil) then
        LocalPlayer.Character.HumanoidRootPart.CFrame = Current_Quest_Leader["GuestGiverPosition"]
        Quest:FireServer(Talk[Current_Quest_Leader["QuestGiverNPC"]].Info)
        if (LocalPlayerData.Quest.Value == Current_Quest_Leader["Quest"]) then
            LocalPlayer.Character.HumanoidRootPart.CFrame = Entity_Leader.HumanoidRootPart.CFrame * CFrame.new(0,0,5) 
            if LocalPlayer.Backpack:FindFirstChild("Skyborne Lance") then
                -- Equip Weapon
                LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack:FindFirstChild("Skyborne Lance"))
            end
            ServerMove:FireServer("SwordCombat", 0, "one", 0, Players.LocalPlayer.Character:WaitForChild("Skyborne LanceM"))
        end
    else
        print("No quest")
        LocalPlayer.Character.HumanoidRootPart.CFrame = Current_Quest["GuestGiverPosition"]
        Quest:FireServer(Talk[Current_Quest["QuestGiverNPC"]].Info)
    end
    end)
end