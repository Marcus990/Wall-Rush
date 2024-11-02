local Players = game:GetService("Players")
local Trail = "OrangeTrail"
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")
local TrailEvent = Events:WaitForChild("TrailEvent")
local BooleanEvent = Events:WaitForChild("BooleanEvent")
local TrailForDatastoreEvent = Events:WaitForChild("TrailForDatastoreEvent")
local button = script.Parent

button.MouseButton1Down:Connect(function()
	local player = game.Players.LocalPlayer
	if player.leaderstats.Coins.Value >= 50 and button.Text == "Buy" then
		BooleanEvent:FireServer(game.Players.LocalPlayer)
		button.Text = "Crate Purchased!"
		game.Workspace:WaitForChild("ChaChing"):Play()
		script.Parent.Parent.Parent.Parent.Parent.UnboxingCrate3.Visible = true
		wait(3)
		button.Text = "Buy"
	elseif player.leaderstats.Coins.Value < 50 and button.Text == "Buy" then
		button.Text = "You Need More Coins!"
		wait(2)
		script.Parent.Parent.Parent.Parent:TweenPosition(
			UDim2.new(0.5, 0, -0.5, 0),
			"Out",
			"Quad",
			0.5,
			false,
			nil
		)
		script.Parent.Parent.Parent.Parent.Parent.Parent.DevScreenGui.DevFrame_12:TweenPosition(
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
