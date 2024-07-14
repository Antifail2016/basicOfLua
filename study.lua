local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ninjaEvent = LocalPlayer:WaitForChild("ninjaEvent")
local weapon = "swingKatana"
local con = false
local count = 1

while wait() do
    ninjaEvent:FireServer(weapon)
    print(count)
	count+=1
end