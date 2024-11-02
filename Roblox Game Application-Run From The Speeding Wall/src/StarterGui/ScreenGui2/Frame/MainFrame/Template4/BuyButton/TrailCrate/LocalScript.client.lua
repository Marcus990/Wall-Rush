
local FusionCoilGamepassId = 15854093
local MarketplaceService = game:GetService("MarketplaceService")
local player = game.Players.LocalPlayer
local Players = game:GetService("Players")

script.Parent.MouseButton1Down:Connect(function()
	local success, message = pcall(function()
		hasPass = MarketplaceService:UserOwnsGamePassAsync(player.UserId, FusionCoilGamepassId)
	end)


	if hasPass then
		print("you already have the gp")
		
	else 
		MarketplaceService:PromptGamePassPurchase(player, FusionCoilGamepassId)
	end

end)




