local TextButton = script.Parent
local TrailsShopFrame = script.Parent.Parent
local NametagsShopFrame = script.Parent.Parent.Parent.NametagsShopFrame
TextButton.MouseButton1Down:Connect(function()
	if TrailsShopFrame.Position == UDim2.new(0.5, 0, 0.5, 0) then
		TrailsShopFrame:TweenPosition(
			UDim2.new(0.5, 0, -0.5, 0), 
			"In", 
			"Quad", 
			0.5, 
			false, 
			nil
		)
		NametagsShopFrame:TweenPosition(
			UDim2.new(0.5, 0, 0.5, 0), 
			"Out", 
			"Quad", 
			0.5, 
			false, 
			nil
		)
	end

end)
