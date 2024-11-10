game.ReplicatedStorage.Events.ShowGui.OnClientEvent:Connect(function()
	script.Parent.Parent.StageGui.Enabled = false
	script.Parent.CrateShopFrame:TweenPosition(
		UDim2.new(0.5, 0, 0.5, 0), 
		"Out", 
		"Quad", 
		0.5, 
		false,
		nil
	)
	end)

