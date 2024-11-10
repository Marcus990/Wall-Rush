local player = game.Players.LocalPlayer
local HaloEvent = game.ReplicatedStorage.Events:WaitForChild("HaloEvent")
local CustomHalo = "GreenHalo"
player.CharacterAdded:Connect(function(char)
	local humanoid = char:WaitForChild("Humanoid")
	humanoid:GetPropertyChangedSignal("Health"):Connect(function()
		local text
		if player:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template3.BuyButton.GreenHalo.Text == "Unequip" then 
			text = true
		elseif player:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template3.BuyButton.GreenHalo.Text == "Equip" then
			text = false
		end
		if char:FindFirstChild("GreenHalo") then char:FindFirstChild("GreenHalo"):Destroy() end
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
