game.ReplicatedStorage.Events:WaitForChild("TeleportedEvent").OnClientEvent:Connect(function()
	local function callback(state)
		if state == Enum.TweenStatus.Completed then
		wait(0.5)
		script.Parent.WhiteScreen:TweenPosition(
			UDim2.new(-1, 0, 0.5, 0),
			Enum.EasingDirection.Out,
			Enum.EasingStyle.Quad,
			1,
			false,
			nil
			)
			end
	end
	
	script.Parent.WhiteScreen:TweenPosition(
		UDim2.new(0.5, 0, 0.5, 0),
		Enum.EasingDirection.Out,
		Enum.EasingStyle.Quad,
		1,
		false,
		callback
	)
end)


