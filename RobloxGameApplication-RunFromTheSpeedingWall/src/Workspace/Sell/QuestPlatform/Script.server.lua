local Players = game:GetService("Players")
local debounce = false
game.Players.PlayerAdded:Connect(function(plr)
	local function onPartTouched(otherPart)
		print("part was touched")
		local partparent = otherPart.Parent
		local humanoid = partparent:FindFirstChildWhichIsA("Humanoid")
		if humanoid and not debounce then
			debounce = true
			local player = Players:GetPlayerFromCharacter(partparent)
			print("it was a humanoid")
			game.ReplicatedStorage.Events.ShowQuestGui:FireClient(player)
			debounce = false
		end
	end
	game.Workspace.Sell.QuestPlatform.Touched:Connect(onPartTouched)
end)