local player = game.Players.LocalPlayer
local HaloEvent = game.ReplicatedStorage.Events:WaitForChild("HaloEvent")
local CustomHalo = "BlueHalo"
player.CharacterAdded:Connect(function(char)
	local humanoid = char:WaitForChild("Humanoid")
	humanoid:GetPropertyChangedSignal("Health"):Connect(function()
		local text
		if player:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template4.BuyButton.BlueHalo.Text == "Unequip" then 
			text = true
		elseif player:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template4.BuyButton.BlueHalo.Text == "Equip" then
			text = false
		end
		if char:FindFirstChild("BlueHalo") then char:FindFirstChild("BlueHalo"):Destroy() end
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
