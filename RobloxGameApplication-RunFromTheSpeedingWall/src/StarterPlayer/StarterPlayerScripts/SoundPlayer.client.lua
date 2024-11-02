game.ReplicatedStorage.Events:WaitForChild("PlayCoinSound").OnClientEvent:Connect(function()
	game.Workspace:WaitForChild("Sound"):Play()
end)

game.ReplicatedStorage.Events:WaitForChild("PlayFinishedSound").OnClientEvent:Connect(function()
	game.Workspace:WaitForChild("LevelFinishedSound"):Play()
end)

game.ReplicatedStorage.Events:WaitForChild("TeleportedEvent").OnClientEvent:Connect(function()
	game.Workspace:WaitForChild("TeleportIn"):Play()
end)

game.ReplicatedStorage.Events:WaitForChild("ChangeColorAndPlayFinishedSound").OnClientEvent:Connect(function(Checkpoint)
	if Checkpoint == "Checkpoint1" then
		if game.Workspace:WaitForChild("Checkpoint1").BrickColor == BrickColor.new("Lime green") then
			print("its green")
		else
			game.Workspace:WaitForChild("LevelFinishedSound"):Play()
			game.Workspace:WaitForChild("Checkpoint1").BrickColor = BrickColor.new("Lime green")
		end
	elseif Checkpoint == "Checkpoint2" then
		if game.Workspace:WaitForChild("Checkpoint2").BrickColor == BrickColor.new("Lime green") then
			print("its green")
		else
			game.Workspace:WaitForChild("LevelFinishedSound"):Play()
			game.Workspace:WaitForChild("Checkpoint2").BrickColor = BrickColor.new("Lime green")
		end
	elseif Checkpoint == "Checkpoint3" then
		if game.Workspace:WaitForChild("Checkpoint3").BrickColor == BrickColor.new("Lime green") then
			print("its green")
		else
			game.Workspace:WaitForChild("LevelFinishedSound"):Play()
			game.Workspace:WaitForChild("Checkpoint3").BrickColor = BrickColor.new("Lime green")
		end
	elseif Checkpoint == "Checkpoint4" then
		if game.Workspace:WaitForChild("Checkpoint4").BrickColor == BrickColor.new("Lime green") then
			print("its green")
		else
			game.Workspace:WaitForChild("LevelFinishedSound"):Play()
			game.Workspace:WaitForChild("Checkpoint4").BrickColor = BrickColor.new("Lime green")
		end
	elseif Checkpoint == "Checkpoint5" then
		if game.Workspace:WaitForChild("Checkpoint5").BrickColor == BrickColor.new("Lime green") then
			print("its green")
		else
			game.Workspace:WaitForChild("LevelFinishedSound"):Play()
			game.Workspace:WaitForChild("Checkpoint5").BrickColor = BrickColor.new("Lime green")
		end
	elseif Checkpoint == "Checkpoint6" then
		if game.Workspace:WaitForChild("Checkpoint6").BrickColor == BrickColor.new("Lime green") then
			print("its green")
		else
			game.Workspace:WaitForChild("LevelFinishedSound"):Play()
			game.Workspace:WaitForChild("Checkpoint6").BrickColor = BrickColor.new("Lime green")
		end
	end
end)
	
	
