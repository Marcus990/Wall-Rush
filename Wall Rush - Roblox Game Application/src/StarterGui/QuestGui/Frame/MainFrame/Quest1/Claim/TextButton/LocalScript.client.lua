script.Parent.MouseButton1Up:Connect(function()
	if script.Parent.Parent.Parent.CoinAmount.Text == "10/10" then
		game.ReplicatedStorage.Events.CoinQuestCoinHandler:FireServer()
		game.ReplicatedStorage.Events.UpdateCoinQuestAfterClaimed:FireServer()
		game.Workspace:WaitForChild("LevelFinishedSound"):Play()
		local value = 0
		local percent = value/10
		local positionvalue = 0.05*value
		script.Parent.Parent.Parent.Bar.Bar.Size = UDim2.new(percent, 0, 1, 0)
		script.Parent.Parent.Parent.Bar.Bar.Position = UDim2.new(positionvalue, 0, 0.5, 0)
	else
		script.Parent.Parent.CoinAmount.Text = "Quest Not Completed!"
		script.Parent.Parent.ImageColor3 = Color3.fromRGB(252, 1, 7)
		wait(2)
		script.Parent.Parent.CoinAmount.Text = "CLAIM"
		script.Parent.Parent.ImageColor3 = Color3.fromRGB(33, 255, 6)
	end
end)
