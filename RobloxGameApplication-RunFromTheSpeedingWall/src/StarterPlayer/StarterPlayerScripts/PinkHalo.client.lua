local player = game.Players.LocalPlayer
local HaloEvent = game.ReplicatedStorage.Events:WaitForChild("HaloEvent")
local CustomHalo = "PinkHalo"
player.CharacterAdded:Connect(function(char)
	local humanoid = char:WaitForChild("Humanoid")
	humanoid:GetPropertyChangedSignal("Health"):Connect(function()
		local text
		if player:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template7.BuyButton.PinkHalo.Text == "Unequip" then 
			text = true
		elseif player:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template7.BuyButton.PinkHalo.Text == "Equip" then
			text = false
		end
		if char:FindFirstChild("PinkHalo") then char:FindFirstChild("PinkHalo"):Destroy() end
		print("Died")
		player.CharacterAdded:Wait()
		if text == false then
			HaloEvent:FireServer(CustomHalo, text)
			text = false
		elseif text == true then
			HaloEvent:FireServer(CustomHalo, text)
			text = false
		end
		print("Respawned")
	end)
end)
