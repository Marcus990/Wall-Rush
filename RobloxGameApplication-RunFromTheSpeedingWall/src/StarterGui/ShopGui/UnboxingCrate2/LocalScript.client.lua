local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")
local TrailEvent = Events:WaitForChild("TrailEvent")
local TrailForDatastoreEvent = Events:WaitForChild("TrailForDatastoreEvent")
script.Parent.Parent.CrateShopFrame.Template2.BuyButton.HaloCrate.MouseButton1Down:Connect(function()
	local player = game.Players.LocalPlayer
	if player.leaderstats.Coins.Value >= 100 and script.Parent.Parent.CrateShopFrame.Template2.BuyButton.HaloCrate.Text == "Buy" then
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
		print("did it tween?")
		if randomNumber == 1 then
			script.Parent.EndResult.Text = "Red Halo"
			script.Parent.Parent.HalosShopFrame.ScrollingFrame.Template.BuyButton.RedHalo.Text = "Equip"
			script.Parent.Parent.HalosShopFrame.ScrollingFrame.Template.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(13, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 2 then
			script.Parent.EndResult.Text = "Orange Halo"
			script.Parent.Parent.HalosShopFrame.ScrollingFrame.Template1.BuyButton.OrangeHalo.Text = "Equip"
			script.Parent.Parent.HalosShopFrame.ScrollingFrame.Template1.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(14, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 3 then
			script.Parent.EndResult.Text = "Yellow Halo"
			script.Parent.Parent.HalosShopFrame.ScrollingFrame.Template2.BuyButton.YellowHalo.Text = "Equip"
			script.Parent.Parent.HalosShopFrame.ScrollingFrame.Template2.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(15, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 4 then
			script.Parent.EndResult.Text = "Green Halo"
			script.Parent.Parent.HalosShopFrame.ScrollingFrame.Template3.BuyButton.GreenHalo.Text = "Equip"
			script.Parent.Parent.HalosShopFrame.ScrollingFrame.Template3.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(16, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 5 then
			script.Parent.EndResult.Text = "Blue Halo"
			script.Parent.Parent.HalosShopFrame.ScrollingFrame.Template4.BuyButton.BlueHalo.Text = "Equip"
			script.Parent.Parent.HalosShopFrame.ScrollingFrame.Template4.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(17, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 6 then
			script.Parent.EndResult.Text = "Purple Halo"
			script.Parent.Parent.HalosShopFrame.ScrollingFrame.Template5.BuyButton.PurpleHalo.Text = "Equip"
			script.Parent.Parent.HalosShopFrame.ScrollingFrame.Template5.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(18, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 7 then
			script.Parent.EndResult.Text = "Aqua Halo"
			script.Parent.Parent.HalosShopFrame.ScrollingFrame.Template6.BuyButton.AquaHalo.Text = "Equip"
			script.Parent.Parent.HalosShopFrame.ScrollingFrame.Template6.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(19, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 8 then
			script.Parent.EndResult.Text = "Pink Halo"
			script.Parent.Parent.HalosShopFrame.ScrollingFrame.Template7.BuyButton.PinkHalo.Text = "Equip"
			script.Parent.Parent.HalosShopFrame.ScrollingFrame.Template7.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(20, player)
			wait(3)
			script.Parent.Parent.ImageLabel.Size = UDim2.new(0.586, 0, 0.911, 0)
			script.Parent.Parent.ImageLabel.Visible = false
			script.Parent.Visible = false
			wait()
			script.Parent.Parent.CrateShopFrame.Visible = true
			wait()
			script.Parent.EndResult.Text = ""
		elseif randomNumber == 9 then
			script.Parent.EndResult.Text = "White Halo"
			script.Parent.Parent.HalosShopFrame.ScrollingFrame.Template8.BuyButton.WhiteHalo.Text = "Equip"
			script.Parent.Parent.HalosShopFrame.ScrollingFrame.Template8.BuyButton.ImageColor3 = Color3.fromRGB(252, 1, 7)
			TrailForDatastoreEvent:FireServer(21, player)
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
