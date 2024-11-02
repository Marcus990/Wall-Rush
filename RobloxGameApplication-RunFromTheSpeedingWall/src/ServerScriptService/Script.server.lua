game:GetService('Players').PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(character)
		character:WaitForChild("Humanoid").Died:Connect(function()
			game.ReplicatedStorage.Events.DiedEvent:FireClient(player)
		end)
	end)
	
end)
game.ReplicatedStorage.Events.LoadCharacterEvent.OnServerEvent:Connect(function(player)
	player:LoadCharacter()
	wait()
	game.ReplicatedStorage.Events.LoadCharacterEventFireback:FireClient(player)
end)
game.ReplicatedStorage.Events.LoadCharacterEventNo.OnServerEvent:Connect(function(player)
	player:LoadCharacter()
end)


