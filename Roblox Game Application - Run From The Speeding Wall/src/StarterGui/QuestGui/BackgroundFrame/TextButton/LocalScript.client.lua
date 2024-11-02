game.ReplicatedStorage.BindableEvents:WaitForChild("QuestFinished").Event:Connect(function()
if script.Parent.Parent.Parent.Frame.MainFrame.Quest1.CoinAmount.Text == "10/10" then
	script.Parent.Parent.QuestCompleted.Text = "Collect 10 Coins Quest Completed!"
	script.Parent.Parent.ClaimYourReward.Text = "Click to Claim your 50 Coins Reward!"
	script.Parent.Parent:TweenPosition(UDim2.new(0.506, 0, 0.892, 0), "Out", "Quad", 0.5, false, nil)
	wait(5)
	script.Parent.Parent:TweenPosition(UDim2.new(0.506, 0, 2, 0), "Out", "Quad", 0.5, false, nil)
elseif script.Parent.Parent.Parent.Frame.MainFrame.Quest2.CoinAmount.Text == "1/1" then
	script.Parent.Parent.QuestCompleted.Text = "Finish A Level Quest Completed!"
	script.Parent.Parent.ClaimYourReward.Text = "Click to Claim your 30 Coins Reward!"
	script.Parent.Parent:TweenPosition(UDim2.new(0.506, 0, 0.892, 0), "Out", "Quad", 0.5, false, nil)
	wait(5)
	script.Parent.Parent:TweenPosition(UDim2.new(0.506, 0, 2, 0), "Out", "Quad", 0.5, false, nil)	
end
end)
script.Parent.MouseButton1Down:Connect(function()
	script.Parent.Parent.Parent.Parent.StageGui.Enabled = false
	script.Parent.Parent:TweenPosition(UDim2.new(0.506, 0, 2, 0), "Out", "Quad", 0.5, false, nil)
	script.Parent.Parent.Parent.Frame:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), "Out", "Quad", 0.5, false, nil)
end)
