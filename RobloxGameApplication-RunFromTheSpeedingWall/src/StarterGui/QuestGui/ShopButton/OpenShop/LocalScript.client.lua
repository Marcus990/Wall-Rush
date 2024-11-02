local OpenShop = script.Parent
OpenShop.MouseButton1Up:Connect(function()
	if OpenShop.Parent.Parent.Frame.Position == UDim2.new(0.5, 0, -0.5, 0) then
		script.Parent.Parent.Parent.Parent.StageGui.Enabled = false
	OpenShop.Parent.Parent.Frame:TweenPosition(
		UDim2.new(0.5, 0, 0.5, 0), 
		"Out", 
		"Quad", 
		0.5, 
		false, 
		nil
		)
	end
	if OpenShop.Parent.Parent.Frame.Position == UDim2.new(0.5, 0, 0.5, 0) then
		script.Parent.Parent.Parent.Parent.StageGui.Enabled = true
		OpenShop.Parent.Parent.Frame:TweenPosition(
			UDim2.new(0.5, 0, -0.5, 0), 
			"In", 
			"Quad", 
			0.5, 
			false, 
			nil
		)
	end
end)
game.ReplicatedStorage.Events:WaitForChild("ShowQuestGui").OnClientEvent:Connect(function()
	if OpenShop.Parent.Parent.Frame.Position == UDim2.new(0.5, 0, -0.5, 0) then
		script.Parent.Parent.Parent.Parent.StageGui.Enabled = false
		OpenShop.Parent.Parent.Frame:TweenPosition(
			UDim2.new(0.5, 0, 0.5, 0), 
			"Out", 
			"Quad", 
			0.5, 
			false, 
			nil
		)
	end
end)

