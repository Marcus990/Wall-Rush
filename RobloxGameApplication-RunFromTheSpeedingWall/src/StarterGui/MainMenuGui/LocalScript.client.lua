local Player = game.Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local StageGui = PlayerGui:WaitForChild("StageGui")
if script.Parent.LoadingScreenBackground.Visible == true or script.Parent.MainMenuBackground.Visible == true then
	print("false")
	script.Parent.Parent.StageGui.Enabled = false
	script.Parent.Parent.DevScreenGui.Enabled = false
	script.Parent.Parent.ScreenGui2.Enabled = false
	script.Parent.Parent.ShopGui.Enabled = false
	script.Parent.Parent.QuestGui.Enabled = false
	script.Parent.Parent.ReturnToLobby.Enabled = false
	script.Parent.Parent.BuyAdmin.Enabled = false
	print("set to false")

end

script.Parent.MainMenuBackground.PlayButton.MouseButton1Click:Connect(function()
wait(2.5)
print("true")
script.Parent.Parent.StageGui.Enabled = true
script.Parent.Parent.ShopGui.Enabled = true
script.Parent.Parent.DevScreenGui.Enabled = true
	script.Parent.Parent.ScreenGui2.Enabled = true
	script.Parent.Parent.QuestGui.Enabled = true
	script.Parent.Parent.ReturnToLobby.Enabled = true
	script.Parent.Parent.BuyAdmin.Enabled = true
end)
