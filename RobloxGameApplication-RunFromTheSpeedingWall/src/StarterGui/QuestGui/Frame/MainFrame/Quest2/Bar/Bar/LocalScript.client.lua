
game.ReplicatedStorage.Events.QuestDataLoaded.OnClientEvent:Connect(function()
	if script.Parent.Parent.Parent.CoinAmount.Text == "0/1" then
		local value = 0
		local percent = value / 10
		local positionvalue = 0.05*value
		script.Parent.Size = UDim2.new(percent, 0, 1, 0)
		script.Parent.Position = UDim2.new(positionvalue, 0, 0.5, 0)
	elseif script.Parent.Parent.Parent.CoinAmount.Text == "1/1" then
		local value = 10
		local percent = value/10
		local positionvalue = 0.05*value
		script.Parent.Size = UDim2.new(percent, 0, 1, 0)
		script.Parent.Position = UDim2.new(positionvalue, 0, 0.5, 0)
	end
end)
game.ReplicatedStorage.Events.LevelTouchedQuest.OnClientEvent:Connect(function()
	if script.Parent.Parent.Parent.CoinAmount.Text == "0/1" then
		local value = 0
		local percent = value / 10
		local positionvalue = 0.05*value
		script.Parent.Size = UDim2.new(percent, 0, 1, 0)
		script.Parent.Position = UDim2.new(positionvalue, 0, 0.5, 0)
	elseif script.Parent.Parent.Parent.CoinAmount.Text == "1/1" then
		local value = 10
		local percent = value/10
		local positionvalue = 0.05*value
		script.Parent.Size = UDim2.new(percent, 0, 1, 0)
		script.Parent.Position = UDim2.new(positionvalue, 0, 0.5, 0)
		game.ReplicatedStorage.BindableEvents:WaitForChild("QuestFinished"):Fire()
	end
end)
