
local GravityCoilGamepassId = 15799522
local MarketplaceService = game:GetService("MarketplaceService")

local player = game.Players.LocalPlayer
local Players = game:GetService("Players")

script.Parent.MouseButton1Down:Connect(function()
	local success, message = pcall(function()
		hasPass = MarketplaceService:UserOwnsGamePassAsync(player.UserId, GravityCoilGamepassId)
	end)


	if hasPass then
		print("you already have the gp")

	else 
		MarketplaceService:PromptGamePassPurchase(player, GravityCoilGamepassId)
	end

end)



