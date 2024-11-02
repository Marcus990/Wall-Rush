local TextButton = script.Parent
local NametagsShopFrame = script.Parent.Parent
local CrateShopFrame = script.Parent.Parent.Parent.CrateShopFrame
TextButton.MouseButton1Down:Connect(function()
	if NametagsShopFrame.Position == UDim2.new(0.5, 0, 0.5, 0) then
		NametagsShopFrame:TweenPosition(
			UDim2.new(0.5, 0, -0.5, 0), 
			"In", 
			"Quad", 
			0.5, 
			false, 
			nil
		)
		CrateShopFrame:TweenPosition(
			UDim2.new(0.5, 0, 0.5, 0), 
			"Out", 
			"Quad", 
			0.5, 
			false, 
			nil
		)
	end

end)
