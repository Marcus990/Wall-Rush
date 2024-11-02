local Players = game:GetService("Players")
local CustomHalo = "BlueHalo"
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")
local FirstHaloCoinHandler = Events:WaitForChild("FirstHaloCoinHandler")

local BlueHaloForDatastoreEvent2 = Events:WaitForChild("BlueHaloForDatastoreEvent2")
local HaloEvent = Events:WaitForChild("HaloEvent")
local button = script.Parent
local currencyname = "Coins"
local TrailForDatastoreEvent = Events:WaitForChild("TrailForDatastoreEvent")

local function whatdoicallthisfunctionversion5(stringvalue)
	if stringvalue == "Equip" then
		button.Parent.ImageColor3 = Color3.fromRGB(252, 1, 7)
		button.Text = "Equip"
	elseif stringvalue == "Unequip" then
		button.Parent.ImageColor3 = Color3.fromRGB(252, 1, 7)
		button.Text = "Unequip"
		HaloEvent:FireServer(CustomHalo, true)
	end
end

button.MouseButton1Down:Connect(function()
	local player = game.Players.LocalPlayer
	print(player)
	if button.Text == "Equip" then
		if script.Parent.Parent.Parent.Parent.Template1.BuyButton.OrangeHalo.Text == "Unequip" then
			player.Character.OrangeHalo:Destroy()
			script.Parent.Parent.Parent.Parent.Template1.BuyButton.OrangeHalo.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template2.BuyButton.YellowHalo.Text == "Unequip" then
			player.Character.YellowHalo:Destroy()
			script.Parent.Parent.Parent.Parent.Template2.BuyButton.YellowHalo.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template3.BuyButton.GreenHalo.Text == "Unequip" then
			player.Character.GreenHalo:Destroy()
			script.Parent.Parent.Parent.Parent.Template3.BuyButton.GreenHalo.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template.BuyButton.RedHalo.Text == "Unequip" then
			player.Character.RedHalo:Destroy()
			script.Parent.Parent.Parent.Parent.Template.BuyButton.RedHalo.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template5.BuyButton.PurpleHalo.Text == "Unequip" then
			player.Character.PurpleHalo:Destroy()
			script.Parent.Parent.Parent.Parent.Template5.BuyButton.PurpleHalo.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template6.BuyButton.AquaHalo.Text == "Unequip" then
			player.Character.AquaHalo:Destroy()
			script.Parent.Parent.Parent.Parent.Template6.BuyButton.AquaHalo.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template7.BuyButton.PinkHalo.Text == "Unequip" then
			player.Character.PinkHalo:Destroy()
			script.Parent.Parent.Parent.Parent.Template7.BuyButton.PinkHalo.Text = "Equip"
		elseif script.Parent.Parent.Parent.Parent.Template8.BuyButton.WhiteHalo.Text == "Unequip" then
			player.Character.WhiteHalo:Destroy()
			script.Parent.Parent.Parent.Parent.Template8.BuyButton.WhiteHalo.Text = "Equip"
		else
		end
		button.Text = "Unequip"
		HaloEvent:FireServer(CustomHalo, true)
	elseif button.Text == "Unequip" then
		if player.Character:FindFirstChild("BlueHalo") then
		player.Character.BlueHalo:Destroy()
		else
			button.Text = "Equip"
		end
		wait()
		button.Text = "Equip"
		
	elseif player.leaderstats.Coins.Value >= 50 and button.Text == "Buy" then
		FirstHaloCoinHandler:FireServer(game.Players.LocalPlayer)
		button.Parent.ImageColor3 = Color3.fromRGB(252, 1, 7)
		button.Text = "Halo Purchased!"
		game.Workspace:WaitForChild("ChaChing"):Play()
		wait(2)
		button.Text = "Equip"
		TrailForDatastoreEvent:FireServer(17, player)
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
BlueHaloForDatastoreEvent2.OnClientEvent:Connect(whatdoicallthisfunctionversion5)