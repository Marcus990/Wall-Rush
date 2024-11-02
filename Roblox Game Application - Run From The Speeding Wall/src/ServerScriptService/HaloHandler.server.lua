local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")
local HaloEvent = Events:WaitForChild("HaloEvent")
local Halos = ReplicatedStorage:WaitForChild("Halos")

function makeHalo(plr, CustomHalo)
	local Haloc = Halos:WaitForChild(CustomHalo):Clone()
	Haloc.Parent = plr.Character
	Haloc.Name = CustomHalo
end

HaloEvent.OnServerEvent:Connect(function(plr, CustomHalo, text)
	if CustomHalo == "RedHalo" then
		if text == true then
			makeHalo(plr, CustomHalo)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template.BuyButton.RedHalo.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		elseif text == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template.BuyButton.RedHalo.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		end
	elseif CustomHalo == "OrangeHalo" then
		if text == true then
			makeHalo(plr, CustomHalo)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template1.BuyButton.OrangeHalo.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template1.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		elseif text == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template1.BuyButton.OrangeHalo.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template1.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		end
	elseif CustomHalo == "YellowHalo" then
		if text == true then
			makeHalo(plr, CustomHalo)
		plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template2.BuyButton.YellowHalo.Text = "Unequip"
		plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template2.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		elseif text == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template2.BuyButton.YellowHalo.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template2.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		end
	elseif CustomHalo == "GreenHalo" then
		if text == true then
			makeHalo(plr, CustomHalo)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template3.BuyButton.GreenHalo.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template3.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		elseif text == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template3.BuyButton.GreenHalo.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template3.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		end
	elseif CustomHalo == "BlueHalo" then
		if text == true then
			makeHalo(plr, CustomHalo)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template4.BuyButton.BlueHalo.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template4.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		elseif text == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template4.BuyButton.BlueHalo.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template4.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		end
	elseif CustomHalo == "PurpleHalo" then
		if text == true then
			makeHalo(plr, CustomHalo)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template5.BuyButton.PurpleHalo.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template5.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		elseif text == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template5.BuyButton.PurpleHalo.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template5.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		end
	elseif CustomHalo == "AquaHalo" then
		if text == true then
			makeHalo(plr, CustomHalo)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template6.BuyButton.AquaHalo.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template6.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		elseif text == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template6.BuyButton.AquaHalo.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template6.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		end
	elseif CustomHalo == "PinkHalo" then
		if text == true then
			makeHalo(plr, CustomHalo)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template7.BuyButton.PinkHalo.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template7.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		elseif text == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template7.BuyButton.PinkHalo.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template7.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		end
	elseif CustomHalo == "WhiteHalo" then
		if text == true then
			makeHalo(plr, CustomHalo)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template8.BuyButton.WhiteHalo.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template8.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		elseif text == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template8.BuyButton.WhiteHalo.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template8.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		end
	end
end)

