local Players = game:GetService("Players")
local ServerStorage = game:GetService("ServerStorage")

local checkpoint = script.Parent

function onTouched(hit)
	if hit and hit.Parent and hit.Parent:FindFirstChildOfClass("Humanoid") and not debounce then
		debounce = true
		local player = Players:GetPlayerFromCharacter(hit.Parent)
		game.ReplicatedStorage.Events:WaitForChild("ChangeColorAndPlayFinishedSound"):FireClient(player, "Checkpoint2")
		game.ReplicatedStorage.Events.Checkpoint2Touched:FireClient(player)
		local checkpointData = ServerStorage:FindFirstChild("CheckpointData")
		if not checkpointData then
			checkpointData = Instance.new("Folder")
			checkpointData.Name = "CheckpointData"
			checkpointData.Parent = ServerStorage
		end

		local userIdString = tostring(player.UserId)
		local checkpointValue = checkpointData:FindFirstChild(userIdString)
		if not checkpointValue then
			checkpointValue = Instance.new("ObjectValue")
			checkpointValue.Name = userIdString
			checkpointValue.Parent = checkpointData

			player.CharacterAdded:connect(function(character)
				wait()
				local storedCheckpoint = ServerStorage.CheckpointData[userIdString].Value
				character:MoveTo(storedCheckpoint.Position + Vector3.new(math.random(-4, 4), 4, math.random(-4, 4)))
			end)
		end

		checkpointValue.Value = checkpoint
		debounce = false
	end
end

checkpoint.Touched:Connect(onTouched)