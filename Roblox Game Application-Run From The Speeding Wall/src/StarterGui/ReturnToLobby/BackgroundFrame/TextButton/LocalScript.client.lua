local player = game.Players.LocalPlayer
script.Parent.MouseButton1Down:Connect(function()
	game.Workspace:WaitForChild("TeleportIn"):Play()
	local function callback(state)
		if state == Enum.TweenStatus.Completed then
			
			wait(0.5)
			script.Parent.Parent.Parent.WhiteScreen:TweenPosition(
				UDim2.new(-1, 0, 0.5, 0),
				Enum.EasingDirection.Out,
				Enum.EasingStyle.Quad,
				1,
				false,
				nil
			)
			local character = player.Character
			local LowerTorso = character.LowerTorso
			LowerTorso.CFrame = game.Workspace.SpawnLocation.CFrame
		end
	end
	script.Parent.Parent.Parent.WhiteScreen:TweenPosition(
		UDim2.new(0.5, 0, 0.5, 0),
		Enum.EasingDirection.Out,
		Enum.EasingStyle.Quad,
		1,
		false,
		callback
	)
end)
