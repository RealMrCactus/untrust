local ServerScriptService = game:GetService("ServerScriptService")
local untrusted = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealMrCactus/untrust/main/index.lua", true))()

local players = game.Players


-- Check if the player is untrusted on join if so give the character a selection box

players:PlayerAdded(function(player)
    if untrusted[player.UserId] then
        local sb = Instance.new("SelectionBox", player.Character)
        sb.Adornee = player.Character
        sb.Color3 = Color3.new(255, 0, 0)
        sb.LineThickness = 0.05
    end
end)

for _, player in pairs(players:GetPlayers()) do
    if untrusted[player.UserId] then
        local sb = Instance.new("SelectionBox", player.Character)
        sb.Adornee = player.Character
        sb.Color3 = Color3.new(255, 0, 0)
        sb.LineThickness = 0.05
    end
end
