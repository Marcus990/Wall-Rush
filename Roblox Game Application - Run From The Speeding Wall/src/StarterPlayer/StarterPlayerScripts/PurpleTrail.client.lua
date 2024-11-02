local player = game.Players.LocalPlayer
local TrailEvent = game.ReplicatedStorage.Events:WaitForChild("TrailEvent")
local Trail = "PurpleTrail"
player.CharacterAdded:Connect(function(char)
	local humanoid = char:WaitForChild("Humanoid")
	humanoid:GetPropertyChangedSignal("Health"):Connect(function()
		if humanoid.Health <= 0 then
			local text
			if player:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template5.BuyButton.PurpleTrail.Text == "Unequip" then 
				text = true
			elseif player:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template5.BuyButton.PurpleTrail.Text == "Equip" then
				text = false
			end
			if char.Head:FindFirstChild("Attachment0") and char.UpperTorso:FindFirstChild("Attachment1") then 
				char.Head:FindFirstChild("Attachment0"):Destroy() 
				char.UpperTorso:FindFirstChild("Attachment1"):Destroy()
			end
			print("Died")
			player.CharacterAdded:Wait()
			if text == false then
				TrailEvent:FireServer(Trail, text)
			elseif text == true then
				TrailEvent:FireServer(Trail, text)
			end
			print("Respawned")
		end
	end)
end)