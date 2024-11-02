local Close = script.Parent
local DevFrame = Close.Parent
Close.MouseButton1Up:Connect(function()
	if DevFrame.Position == UDim2.new(0.5, 0, 0.5, 0) then
		script.Parent.Parent.Parent.Parent.StageGui.Enabled = true
		DevFrame:TweenPosition(
			UDim2.new(0.5, 0, -0.5, 0), 
			"In", 
			"Quad",  
			0.5, 
			false,
			nil)
	end
end)