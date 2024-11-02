local TextButton = script.Parent
local CrateShopFrame = script.Parent.Parent
local NametagsShopFrame = script.Parent.Parent.Parent.NametagsShopFrame
TextButton.MouseButton1Down:Connect(function()
	if CrateShopFrame.Position == UDim2.new(0.5, 0, 0.5, 0) then
		CrateShopFrame:TweenPosition(
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
