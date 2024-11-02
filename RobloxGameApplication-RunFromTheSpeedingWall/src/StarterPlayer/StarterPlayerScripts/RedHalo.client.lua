local player = game.Players.LocalPlayer
local HaloEvent = game.ReplicatedStorage.Events:WaitForChild("HaloEvent")
local CustomHalo = "RedHalo"
player.CharacterAdded:Connect(function(char)
	local humanoid = char:WaitForChild("Humanoid")
	humanoid:GetPropertyChangedSignal("Health"):Connect(function()
		if humanoid.Health <= 0 then
			local text
			if player:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template.BuyButton.RedHalo.Text == "Unequip" then 
				text = true
			elseif player:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template.BuyButton.RedHalo.Text == "Equip" then
				text = false
			end
			local RedHalo = char:FindFirstChild("RedHalo")
			if RedHalo then RedHalo:Destroy() end
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
		end
	end)
	end)