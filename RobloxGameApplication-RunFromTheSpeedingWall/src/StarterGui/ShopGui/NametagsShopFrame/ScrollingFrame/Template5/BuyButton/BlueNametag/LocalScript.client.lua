local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")
local FirstNametagCoinHandler = Events:WaitForChild("FirstNametagCoinHandler")
local TrailForDatastoreEvent = Events:WaitForChild("TrailForDatastoreEvent")
local BlueNametagForDatastoreEvent = Events:WaitForChild("BlueNametagForDatastoreEvent")
local nametagevent = Events:WaitForChild("nametagevent")
local button = script.Parent
local currencyname = "Coins"
local player = game.Players.LocalPlayer
local function whatdoicallthisfunctionversion2(stringvalue)
	if stringvalue == "Equip" then
		button.Parent.ImageColor3 = Color3.fromRGB(252, 1, 7)
		button.Text = "Equip"
	elseif stringvalue == "Unequip" then
		button.Parent.ImageColor3 = Color3.fromRGB(252, 1, 7)
		button.Text = "Unequip"
		player.Character.Head:FindFirstChild("newtext").UpperText.TextColor3 = Color3.fromRGB(0, 0, 255)
	end
end

button.MouseButton1Down:Connect(function()
	local player = game.Players.LocalPlayer
	print(player)
	if button.Text == "Equip" then
		if script.Parent.Parent.Parent.Parent.Template1.BuyButton.RedNametag.Text == "Unequip" then
			script.Parent.Parent.Parent.Parent.Template1.BuyButton.RedNametag.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template2.BuyButton.OrangeNametag.Text == "Unequip"then
			script.Parent.Parent.Parent.Parent.Template2.BuyButton.OrangeNametag.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template3.BuyButton.YellowNametag.Text == "Unequip" then
			script.Parent.Parent.Parent.Parent.Template3.BuyButton.YellowNametag.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template4.BuyButton.GreenNametag.Text == "Unequip" then
			script.Parent.Parent.Parent.Parent.Template4.BuyButton.GreenNametag.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template6.BuyButton.PurpleNametag.Text == "Unequip" then
			script.Parent.Parent.Parent.Parent.Template6.BuyButton.PurpleNametag.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template7.BuyButton.AquaNametag.Text == "Unequip" then
			script.Parent.Parent.Parent.Parent.Template7.BuyButton.AquaNametag.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template8.BuyButton.PinkNametag.Text == "Unequip" then
			script.Parent.Parent.Parent.Parent.Template8.BuyButton.PinkNametag.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template9.BuyButton.MagentaNametag.Text == "Unequip" then
			script.Parent.Parent.Parent.Parent.Template9.BuyButton.MagentaNametag.Text = "Equip"
		end
		button.Text = "Unequip"
		player.Character.Head:FindFirstChild("newtext").UpperText.TextColor3 = Color3.fromRGB(0, 0, 255)


	elseif button.Text == "Unequip" then
		if player.Character.Head:FindFirstChild("newtext").UpperText.TextColor3 == Color3.fromRGB(0, 0, 255) then
			player.Character.Head.newtext.UpperText.TextColor3 = Color3.fromRGB(255, 255, 255)
		else
			button.Text = "Equip"
		end
		wait()
		button.Text = "Equip"
	elseif player.leaderstats.Coins.Value >= 50 and button.Text == "Buy" then
		FirstNametagCoinHandler:FireServer(game.Players.LocalPlayer)
		button.Parent.ImageColor3 = Color3.fromRGB(252, 1, 7)
		button.Text = "Nametag Purchased!"
		game.Workspace:WaitForChild("ChaChing"):Play()
		wait(2)
		button.Text = "Equip"
		TrailForDatastoreEvent:FireServer(26, game.Players.LocalPlayer)
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
BlueNametagForDatastoreEvent.OnClientEvent:Connect(whatdoicallthisfunctionversion2)
