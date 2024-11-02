local Players = game:GetService("Players")
function onTouch(hit)
	if hit and hit.Parent and hit.Parent:FindFirstChildOfClass("Humanoid") then
		local player = Players:GetPlayerFromCharacter(hit.Parent)
		game.ReplicatedStorage.Events:WaitForChild("TeleportedEvent"):FireClient(player)
		wait(2)
		local LowerTorso = player.Character.LowerTorso
		LowerTorso.CFrame = game.Workspace.TriggerButton4Start.CFrame
	end
end

script.Parent.Touched:Connect(onTouch)
