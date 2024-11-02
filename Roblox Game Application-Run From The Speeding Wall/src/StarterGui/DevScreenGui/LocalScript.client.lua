local ImageButton = script.Parent.JustTheBackground.ShopButton.ImageButton
local DevFrame = script.Parent.DevFrame_12
ImageButton.MouseButton1Down:Connect(function()
	print("first")
	if DevFrame.Position == UDim2.new(0.5, 0, -0.5, 0) then
		script.Parent.Parent.StageGui.Enabled = false
	DevFrame:TweenPosition(
		UDim2.new(0.5, 0, 0.5, 0),
		"Out", 
		"Quad", 
		0.5,
		false, 
		nil
	)
		print("last")
	end
	if DevFrame.Position == UDim2.new(0.5, 0, 0.5, 0) then
		script.Parent.Parent.StageGui.Enabled = true
	DevFrame:TweenPosition(
	    UDim2.new(0.5, 0, -0.5, 0), 
		"In", 
		"Quad",  
		0.5, 
		false,
		nil)
			
	end
end)