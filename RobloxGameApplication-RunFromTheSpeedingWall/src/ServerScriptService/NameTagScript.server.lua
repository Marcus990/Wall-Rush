--Made by Sheasu

--Variables
local rep = game:GetService("ReplicatedStorage") --You can change this to ServerStorage for more security.
local nametag = rep.NameTag 
local nametagevent = rep.Events:WaitForChild("nametagevent")

--Functions
game.Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function(char)
		--Varibles
		local head = char.Head
		local newtext = nametag:Clone() --Cloning the text.
		local uppertext = newtext.UpperText
		local lowertext = newtext.LowerText
		newtext.Name = "newtext"
		local humanoid = char.Humanoid
		
		humanoid.DisplayDistanceType = "None"
		
		--Main Text
		newtext.Parent = head
		newtext.Adornee = head
		uppertext.Text = player.Name --Changes the text to the player's name.
		
		--"If" Statements
		--You can add as many of these as you wish, just change it to the player's name.
		if player.Name == "Alphenumeric" then
			lowertext.Text = "Owner" --This is that the text will say.
			lowertext.TextColor3 = Color3.fromRGB(85, 182, 255) --This is what the color of the text will be.
		end
	end)
end)


nametagevent.OnServerEvent:Connect(function(plr, CustomNametag, textstring)
	if CustomNametag == "RedNametag" then
		if textstring == true then
			plr.Character.Head:FindFirstChild("newtext").UpperText.TextColor3 = Color3.fromRGB(252, 1, 7)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template1.BuyButton.RedNametag.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template1.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			print("text is set to unequip after respawn")
		elseif textstring == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template1.BuyButton.RedNametag.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template1.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			print("text is set to equip after respawn")
		end
	elseif CustomNametag == "OrangeNametag" then
		if textstring == true then
			plr.Character.Head:FindFirstChild("newtext").UpperText.TextColor3 = Color3.fromRGB(253, 128, 8)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template2.BuyButton.OrangeNametag.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template2.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			print("text is set to unequip after respawn")
		elseif textstring == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template2.BuyButton.OrangeNametag.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template2.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			print("text is set to equip after respawn")
		end
	elseif CustomNametag == "YellowNametag" then
		if textstring == true then
			plr.Character.Head:FindFirstChild("newtext").UpperText.TextColor3 = Color3.fromRGB(255, 255, 10)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template3.BuyButton.YellowNametag.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template3.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			print("text is set to unequip after respawn")
		elseif textstring == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template3.BuyButton.YellowNametag.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template3.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			print("text is set to equip after respawn")
		end
	elseif CustomNametag == "GreenNametag" then
		if textstring == true then
			plr.Character.Head:FindFirstChild("newtext").UpperText.TextColor3 = Color3.fromRGB(33, 255, 6)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template4.BuyButton.GreenNametag.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template4.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			print("text is set to unequip after respawn")
		elseif textstring == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template4.BuyButton.GreenNametag.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template4.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			print("text is set to equip after respawn")
		end
	elseif CustomNametag == "BlueNametag" then
		if textstring == true then
			plr.Character.Head:FindFirstChild("newtext").UpperText.TextColor3 = Color3.fromRGB(0, 0, 255)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template5.BuyButton.BlueNametag.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template5.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			print("text is set to unequip after respawn")
		elseif textstring == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template5.BuyButton.BlueNametag.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template5.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			print("text is set to equip after respawn")
		end
	elseif CustomNametag == "PurpleNametag" then
		if textstring == true then
			plr.Character.Head:FindFirstChild("newtext").UpperText.TextColor3 = Color3.fromRGB(128, 0, 128)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template6.BuyButton.PurpleNametag.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template6.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			print("text is set to unequip after respawn")
		elseif textstring == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template6.BuyButton.PurpleNametag.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template6.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			print("text is set to equip after respawn")
		end
	elseif CustomNametag == "AquaNametag" then
		if textstring == true then
			plr.Character.Head:FindFirstChild("newtext").UpperText.TextColor3 = Color3.fromRGB(32, 255, 255)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template7.BuyButton.AquaNametag.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template7.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			print("text is set to unequip after respawn")
		elseif textstring == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template7.BuyButton.AquaNametag.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template7.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			print("text is set to equip after respawn")
		end
	elseif CustomNametag == "PinkNametag" then
		if textstring == true then
			plr.Character.Head:FindFirstChild("newtext").UpperText.TextColor3 = Color3.fromRGB(253, 111, 207)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template8.BuyButton.PinkNametag.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template8.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			print("text is set to unequip after respawn")
		elseif textstring == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template8.BuyButton.PinkNametag.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template8.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			print("text is set to equip after respawn")
		end
	elseif CustomNametag == "MagentaNametag" then
		if textstring == true then
			plr.Character.Head:FindFirstChild("newtext").UpperText.TextColor3 = Color3.fromRGB(252, 2, 255)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template9.BuyButton.MagentaNametag.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template9.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			print("text is set to unequip after respawn")
		elseif textstring == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template9.BuyButton.MagentaNametag.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template9.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			print("text is set to equip after respawn")
		end
	end
end)

