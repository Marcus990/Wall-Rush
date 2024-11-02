local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")
local TrailEvent = Events:WaitForChild("TrailEvent")
local TrailForDatastoreEvent = Events:WaitForChild("TrailForDatastoreEvent")
script.Parent.Parent.CrateShopFrame.Template1.BuyButton.TrailCrate.MouseButton1Down:Connect(function()
	local player = game.Players.LocalPlayer
	if player.leaderstats.Coins.Value >= 100 and script.Parent.Parent.CrateShopFrame.Template1.BuyButton.TrailCrate.Text == "Buy" then
		script.Parent.Visible = true
		script.Parent.Parent.CrateShopFrame.Visible = false
		local randomNumber = math.random(1, 12)
		wait(3)
		script.Parent.Parent.ImageLabel.Visible = true
		print("will tween")
			script.Parent.Parent.ImageLabel:TweenSize(
			    UDim2.new(1.2, 0, 1.7, 0), 
			    "Out",
			    "Elastic",
				2.5, 
				false,
				nil
		)
		print("did it tween?")
		
		if randomNumber == 1 then

			script.Parent.EndResult.Text = "Red Trail"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template.BuyButton.RedTrail.Text = "Equip"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(1, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 2 then
			
			script.Parent.EndResult.Text = "Orange Trail"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template1.BuyButton.OrangeTrail.Text = "Equip"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template1.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(2, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 3 then
			
			script.Parent.EndResult.Text = "Yellow Trail"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template2.BuyButton.YellowTrail.Text = "Equip"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template2.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(3, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 4 then
			
			script.Parent.EndResult.Text = "Green Trail"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template3.BuyButton.GreenTrail.Text = "Equip"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template3.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(4, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 5 then
			
			script.Parent.EndResult.Text = "Blue Trail"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template4.BuyButton.BlueTrail.Text = "Equip"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template4.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(5, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 6 then
			
			script.Parent.EndResult.Text = "Purple Trail"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template5.BuyButton.PurpleTrail.Text = "Equip"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template5.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(6, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 7 then
			
			script.Parent.EndResult.Text = "Aqua Trail"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template6.BuyButton.AquaTrail.Text = "Equip"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template6.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(7, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 8 then
			
			script.Parent.EndResult.Text = "Pink Trail"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template7.BuyButton.PinkTrail.Text = "Equip"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template7.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(8, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 9 then
			
			script.Parent.EndResult.Text = "White Trail"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template8.BuyButton.WhiteTrail.Text = "Equip"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template8.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(9, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 10 then
			
			script.Parent.EndResult.Text = "Rainbow Trail"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template9.BuyButton.RainbowTrail.Text = "Equip"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template9.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(10, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 11 then
			
			script.Parent.EndResult.Text = "Fire Trail"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template10.BuyButton.FireTrail.Text = "Equip"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template10.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(11, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 12 then
			
			script.Parent.EndResult.Text = "Ocean Trail"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template11.BuyButton.OceanTrail.Text = "Equip"
			script.Parent.Parent.TrailsShopFrame.ScrollingFrame.Template11.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(12, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		end
	end
end)
