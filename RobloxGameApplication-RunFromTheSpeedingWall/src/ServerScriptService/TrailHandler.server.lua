local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")
local TrailEvent = Events:WaitForChild("TrailEvent")
local Trails = ReplicatedStorage:WaitForChild("Trails")
local button = script.Parent.Parent.StarterGui.ShopGui.TrailsShopFrame.ScrollingFrame.Template.BuyButton.RedTrail
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")
local TrailEvent = Events:WaitForChild("TrailEvent")

function makeTrail(plr, Trail)
	local Trailc = Trails:WaitForChild(Trail):Clone()
	Trailc.Parent = plr.Character.Head
	local at0 = Instance.new("Attachment", plr.Character.Head)
	at0.Name = "Attachment0"
	local at1 = Instance.new("Attachment", plr.Character.UpperTorso)
	at1.Name = "Attachment1"
	Trailc.Attachment0 = at0
	Trailc.Attachment1 = at1
end

TrailEvent.OnServerEvent:Connect(function(plr, Trail, text)
	if Trail == "RedTrail" then
		if text == true then
			makeTrail(plr, Trail)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template.BuyButton.RedTrail.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		elseif text == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template.BuyButton.RedTrail.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		end
	elseif Trail == "OrangeTrail" then
		if text == true then
			makeTrail(plr, Trail)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template1.BuyButton.OrangeTrail.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template1.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		elseif text == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template1.BuyButton.OrangeTrail.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template1.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		end
	elseif Trail == "YellowTrail" then
		if text == true then
			makeTrail(plr, Trail)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template2.BuyButton.YellowTrail.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template2.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		elseif text == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template2.BuyButton.YellowTrail.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template2.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		end
	elseif Trail == "GreenTrail" then
		if text == true then
			makeTrail(plr, Trail)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template3.BuyButton.GreenTrail.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template3.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		elseif text == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template3.BuyButton.GreenTrail.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template3.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		end
	elseif Trail == "BlueTrail" then
		if text == true then
			makeTrail(plr, Trail)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template4.BuyButton.BlueTrail.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template4.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		elseif text == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template4.BuyButton.BlueTrail.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template4.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		end
	elseif Trail == "PurpleTrail" then
		if text == true then
			makeTrail(plr, Trail)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template5.BuyButton.PurpleTrail.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template5.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		elseif text == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template5.BuyButton.PurpleTrail.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template5.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		end
	elseif Trail == "AquaTrail" then
		if text == true then
			makeTrail(plr, Trail)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template6.BuyButton.AquaTrail.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template6.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		elseif text == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template6.BuyButton.AquaTrail.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template6.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		end
	elseif Trail == "PinkTrail" then
		if text == true then
			makeTrail(plr, Trail)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template7.BuyButton.PinkTrail.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template7.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		elseif text == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template7.BuyButton.PinkTrail.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template7.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		end
	elseif Trail == "WhiteTrail" then
		if text == true then
			makeTrail(plr, Trail)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template8.BuyButton.WhiteTrail.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template8.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		elseif text == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template8.BuyButton.WhiteTrail.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template8.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		end
	elseif Trail == "RainbowTrail" then
		if text == true then
			makeTrail(plr, Trail)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template9.BuyButton.RainbowTrail.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template9.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		elseif text == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template9.BuyButton.RainbowTrail.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template9.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		end
	elseif Trail == "FireTrail" then
		if text == true then
			makeTrail(plr, Trail)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template10.BuyButton.FireTrail.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template10.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		elseif text == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template10.BuyButton.FireTrail.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template10.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		end
	elseif Trail == "OceanTrail" then
		if text == true then
			makeTrail(plr, Trail)
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template11.BuyButton.OceanTrail.Text = "Unequip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template11.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		elseif text == false then
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template11.BuyButton.OceanTrail.Text = "Equip"
			plr:WaitForChild("PlayerGui"):WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template11.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
		end
	end
end)

