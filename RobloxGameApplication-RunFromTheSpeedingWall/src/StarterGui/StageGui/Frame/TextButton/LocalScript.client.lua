
	local MarketplaceService = game:GetService("MarketplaceService")
local player = game.Players.LocalPlayer
playername = player.Name
script.Parent.Activated:Connect(function()
	if script.Parent.Parent.Parent.TextLabel.Text == "Stage 0" then
		script.Parent.Text = "You can't skip Stage 0"
		wait(2)
		script.Parent.Text = "Skip Stage"
	else
		MarketplaceService:PromptProductPurchase(player, 1163827989)
		end
end)

game.ReplicatedStorage.Events.SkipStageProductBought.OnClientEvent:Connect(function()
	local LowerTorso = player.Character.LowerTorso
	if script.Parent.Parent.Parent.TextLabel.Text == "Stage 1" then
		LowerTorso.CFrame = game.Workspace.Checkpoint2.CFrame
	elseif script.Parent.Parent.Parent.TextLabel.Text == "Stage 2" then
		LowerTorso.CFrame = game.Workspace.Checkpoint3.CFrame
	elseif script.Parent.Parent.Parent.TextLabel.Text == "Stage 3" then
		LowerTorso.CFrame = game.Workspace.Checkpoint4.CFrame
	elseif script.Parent.Parent.Parent.TextLabel.Text == "Stage 4" then
		LowerTorso.CFrame = game.Workspace.Checkpoint5.CFrame
	elseif script.Parent.Parent.Parent.TextLabel.Text == "Stage 5" then
		LowerTorso.CFrame = game.Workspace.Checkpoint6.CFrame
	end
end)

