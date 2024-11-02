local Players = game:GetService("Players")
local Trail = "RainbowTrail"
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")
local TrailEvent = Events:WaitForChild("TrailEvent")
local BooleanEvent3 = Events:WaitForChild("BooleanEvent3")

local RainbowTrailForDatastoreEvent2 = Events:WaitForChild("RainbowTrailForDatastoreEvent2")
local amount = 100
local button = script.Parent
local currencyname = "Coins"
local TrailForDatastoreEvent = Events:WaitForChild("TrailForDatastoreEvent")

local function whatdoicallthisfunctionversion11(stringvalue)
	if stringvalue == "Equip" then
		button.Parent.ImageColor3 = Color3.fromRGB(252, 1, 7)
		button.Text = "Equip"
	elseif stringvalue == "Unequip" then
		button.Parent.ImageColor3 = Color3.fromRGB(252, 1, 7)
		button.Text = "Unequip"
		TrailEvent:FireServer(Trail, true)
	end
end

button.MouseButton1Down:Connect(function()
	local player = game.Players.LocalPlayer
	print(player)
	if button.Text == "Equip" then
		if script.Parent.Parent.Parent.Parent.Template1.BuyButton.OrangeTrail.Text == "Unequip" then
			script.Parent.Parent.Parent.Parent.Template1.BuyButton.OrangeTrail.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template2.BuyButton.YellowTrail.Text == "Unequip" then
			script.Parent.Parent.Parent.Parent.Template2.BuyButton.YellowTrail.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template3.BuyButton.GreenTrail.Text == "Unequip" then
			script.Parent.Parent.Parent.Parent.Template3.BuyButton.GreenTrail.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template4.BuyButton.BlueTrail.Text == "Unequip" then
			script.Parent.Parent.Parent.Parent.Template4.BuyButton.BlueTrail.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template5.BuyButton.PurpleTrail.Text == "Unequip" then
			script.Parent.Parent.Parent.Parent.Template5.BuyButton.PurpleTrail.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template.BuyButton.RedTrail.Text == "Unequip" then
			script.Parent.Parent.Parent.Parent.Template.BuyButton.RedTrail.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template6.BuyButton.AquaTrail.Text == "Unequip" then
			script.Parent.Parent.Parent.Parent.Template6.BuyButton.AquaTrail.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template7.BuyButton.PinkTrail.Text == "Unequip" then
			script.Parent.Parent.Parent.Parent.Template7.BuyButton.PinkTrail.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template8.BuyButton.WhiteTrail.Text == "Unequip" then
			script.Parent.Parent.Parent.Parent.Template8.BuyButton.WhiteTrail.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template10.BuyButton.FireTrail.Text == "Unequip" then
			script.Parent.Parent.Parent.Parent.Template10.BuyButton.FireTrail.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template11.BuyButton.OceanTrail.Text == "Unequip" then
			script.Parent.Parent.Parent.Parent.Template11.BuyButton.OceanTrail.Text = "Equip"
		else
			button.Text = "Unequip"
			TrailEvent:FireServer(Trail, true)
		end
		
	elseif button.Text == "Unequip" then
		if player.Character.Head:FindFirstChild("Attachment0") and player.Character.UpperTorso:FindFirstChild("Attachment1") then
		player.Character.Head.Attachment0:Destroy()
		player.Character.UpperTorso.Attachment1:Destroy()
		else
			button.Text = "Equip"
		end
		wait()
		button.Text = "Equip"
	elseif player.leaderstats.Coins.Value >= 50 and button.Text == "Buy" then
		BooleanEvent3:FireServer(game.Players.LocalPlayer)
		button.Parent.ImageColor3 = Color3.fromRGB(252, 1, 7)
		button.Text = "Trail Purchased!"
		game.Workspace:WaitForChild("ChaChing"):Play()
		wait(2)
		button.Text = "Equip"
		TrailForDatastoreEvent:FireServer(10, player)
	elseif player.leaderstats.Coins.Value < 50 and button.Text == "Buy" then
		button.Text = "You Need More Coins!"
		wait(2)
		script.Parent.Parent.Parent.Parent.Parent:TweenPosition(
			UDim2.new(0.5, 0, -0.5, 0),
			"Out",
			"Quad",
			0.5,
			false,
			nil
		)
		script.Parent.Parent.Parent.Parent.Parent.Parent.Parent.DevScreenGui.DevFrame_12:TweenPosition(
			UDim2.new(0.5, 0, 0.5, 0),
			"Out",
			"Quad",
			0.5,
			false,
			nil
		)
		button.Text = "Buy"
	end
end)
RainbowTrailForDatastoreEvent2.OnClientEvent:Connect(whatdoicallthisfunctionversion11)