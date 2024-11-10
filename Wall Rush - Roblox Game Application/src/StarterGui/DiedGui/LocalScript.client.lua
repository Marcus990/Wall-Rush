
game.ReplicatedStorage.Events.DiedEvent.OnClientEvent:Connect(function()
	
	script.Parent.Frame:TweenPosition(
		UDim2.new(0.5, 0, 0.5, 0),
		"Out",
		"Quad",
		0.5,
		false,
		nil
	)
	script.Parent.RedScreen:TweenPosition(
		UDim2.new(0.5, 0, 0.5, 0),
		"Out",
		"Quad",
		0.5,
		false,
		nil
	)
	script.Parent.Parent.StageGui.Enabled = false
	script.Parent.Parent.DevScreenGui.Enabled = false
	script.Parent.Parent.ScreenGui2.Enabled = false
	script.Parent.Parent.ShopGui.Enabled = false
	script.Parent.Parent.QuestGui.Enabled = false
	script.Parent.Parent.ReturnToLobby.Enabled = false
	script.Parent.Parent.BuyAdmin.Enabled = false

	script.Parent.Frame.Yes.TextButton.MouseButton1Down:Connect(function()
		game.ReplicatedStorage.Events.LoadCharacterEvent:FireServer()
		
		script.Parent.Frame:TweenPosition(
			UDim2.new(0.5, 0, -0.5, 0),
			"Out",
			"Quad",
			0.5,
			false,
			nil
		)
		script.Parent.RedScreen:TweenPosition(
			UDim2.new(0.5, 0, -2, 0),
			"Out",
			"Quad",
			0.5,
			false,
			nil
		)
		script.Parent.Parent.StageGui.Enabled = true
		script.Parent.Parent.DevScreenGui.Enabled = true
		script.Parent.Parent.ScreenGui2.Enabled = true
		script.Parent.Parent.ShopGui.Enabled = true
		script.Parent.Parent.QuestGui.Enabled = true
		script.Parent.Parent.ReturnToLobby.Enabled = true
		script.Parent.Parent.BuyAdmin.Enabled =  true
	end)
	script.Parent.Frame.No.TextButton.MouseButton1Down:Connect(function()
		game.ReplicatedStorage.Events.LoadCharacterEventNo:FireServer()
		script.Parent.Frame:TweenPosition(
			UDim2.new(0.5, 0, -0.5, 0),
			"Out",
			"Quad",
			0.5,
			false,
			nil
		)
		script.Parent.RedScreen:TweenPosition(
			UDim2.new(0.5, 0, -2, 0),
			"Out",
			"Quad",
			0.5,
			false,
			nil
		)
		script.Parent.Parent.StageGui.Enabled = true
		script.Parent.Parent.DevScreenGui.Enabled = true
		script.Parent.Parent.ScreenGui2.Enabled = true
		script.Parent.Parent.ShopGui.Enabled = true
		script.Parent.Parent.QuestGui.Enabled = true
	end)
	wait(10)
	if not game.Players.LocalPlayer.Character then
	game.ReplicatedStorage.Events.LoadCharacterEventNo:FireServer()
	script.Parent.Frame:TweenPosition(
		UDim2.new(0.5, 0, -0.5, 0),
		"Out",
		"Quad",
		0.5,
		false,
		nil
		)
		script.Parent.RedScreen:TweenPosition(
			UDim2.new(0.5, 0, -2, 0),
			"Out",
			"Quad",
			0.5,
			false,
			nil
		)
		script.Parent.Parent.StageGui.Enabled = true
		script.Parent.Parent.DevScreenGui.Enabled = true
		script.Parent.Parent.ScreenGui2.Enabled = true
		script.Parent.Parent.ShopGui.Enabled = true
		script.Parent.Parent.QuestGui.Enabled = true
end
end)

game.ReplicatedStorage.Events.LoadCharacterEventFireback.OnClientEvent:Connect(function()
	script.Parent.Parent.StageGui.Enabled = false
	script.Parent.Parent.ScreenGui2.Frame:TweenPosition(
		UDim2.new(0.5, 0, 0.5, 0),
		"Out",
		"Quad",
		0.5,
		false,
		nil
	)
end)
