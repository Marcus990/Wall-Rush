local player = game.Players.LocalPlayer
local rep = game:GetService("ReplicatedStorage")
local Events = rep:WaitForChild("Events")
local nametagevent = Events:WaitForChild("nametagevent")

player.CharacterAdded:Connect(function(char)
	local humanoid = char:WaitForChild("Humanoid")
	humanoid:GetPropertyChangedSignal("Health"):Connect(function()
		if humanoid.Health <= 0 then
			local text
			------------
			if player:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template3.BuyButton.YellowNametag.Text == "Unequip" then 
				------------
				print("Button text was equal to unequip.") 
				text = true
				------------
			elseif player:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template3.BuyButton.YellowNametag.Text == "Equip" then
				------------
				text = false
			end
			player.CharacterAdded:Wait()
			print("Respawned")
			if text == false then
				------------
				nametagevent:FireServer("YellowNametag", text)
				------------
				print("text was false")
				text = false
			elseif text == true then
				------------
				nametagevent:FireServer("YellowNametag", text)
				------------
				print("text was true")
				text = false
			end
		end
	end)
end)