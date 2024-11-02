local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")
local TrailEvent = Events:WaitForChild("TrailEvent")
local TrailForDatastoreEvent = Events:WaitForChild("TrailForDatastoreEvent")
script.Parent.Parent.CrateShopFrame.Template3.BuyButton.NametagCrate.MouseButton1Down:Connect(function()
	local player = game.Players.LocalPlayer
	if player.leaderstats.Coins.Value >= 100 and script.Parent.Parent.CrateShopFrame.Template3.BuyButton.NametagCrate.Text == "Buy" then
		script.Parent.Visible = true
		script.Parent.Parent.CrateShopFrame.Visible = false
		local randomNumber = math.random(1, 9)
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
		if randomNumber == 1 then
			script.Parent.EndResult.Text = "Red Nametag"
			script.Parent.Parent.NametagsShopFrame.ScrollingFrame.Template1.BuyButton.RedNametag.Text = "Equip"
			script.Parent.Parent.NametagsShopFrame.ScrollingFrame.Template1.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(22, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 2 then
			script.Parent.EndResult.Text = "Orange Nametag"
			script.Parent.Parent.NametagsShopFrame.ScrollingFrame.Template2.BuyButton.OrangeNametag.Text = "Equip"
			script.Parent.Parent.NametagsShopFrame.ScrollingFrame.Template2.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(23, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 3 then
			script.Parent.EndResult.Text = "Yellow Nametag"
			script.Parent.Parent.NametagsShopFrame.ScrollingFrame.Template3.BuyButton.YellowNametag.Text = "Equip"
			script.Parent.Parent.NametagsShopFrame.ScrollingFrame.Template3.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(24, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 4 then
			script.Parent.EndResult.Text = "Green Nametag"
			script.Parent.Parent.NametagsShopFrame.ScrollingFrame.Template4.BuyButton.GreenNametag.Text = "Equip"
			script.Parent.Parent.NametagsShopFrame.ScrollingFrame.Template4.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(25, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 5 then
			script.Parent.EndResult.Text = "Blue Nametag"
			script.Parent.Parent.NametagsShopFrame.ScrollingFrame.Template5.BuyButton.BlueNametag.Text = "Equip"
			script.Parent.Parent.NametagsShopFrame.ScrollingFrame.Template5.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(26, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 6 then
			script.Parent.EndResult.Text = "Purple Nametag"
			script.Parent.Parent.NametagsShopFrame.ScrollingFrame.Template6.BuyButton.PurpleNametag.Text = "Equip"
			script.Parent.Parent.NametagsShopFrame.ScrollingFrame.Template6.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(27, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 7 then
			script.Parent.EndResult.Text = "Aqua Nametag"
			script.Parent.Parent.NametagsShopFrame.ScrollingFrame.Template7.BuyButton.AquaNametag.Text = "Equip"
			script.Parent.Parent.NametagsShopFrame.ScrollingFrame.Template7.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(28, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 8 then
			script.Parent.EndResult.Text = "Pink Nametag"
			script.Parent.Parent.NametagsShopFrame.ScrollingFrame.Template8.BuyButton.PinkNametag.Text = "Equip"
			script.Parent.Parent.NametagsShopFrame.ScrollingFrame.Template8.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(29, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 9 then
			script.Parent.EndResult.Text = "Magenta Nametag"
			script.Parent.Parent.NametagsShopFrame.ScrollingFrame.Template9.BuyButton.WhiteNametag.Text = "Equip"
			script.Parent.Parent.NametagsShopFrame.ScrollingFrame.Template9.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(30, player)
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
