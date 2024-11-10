--This is for the 750 Coins Developer Product.

local MarketplaceService = game:GetService("MarketplaceService")
local player = game.Players.LocalPlayer

script.Parent.Activated:Connect(function()
	MarketplaceService:PromptProductPurchase(player, 1158600736)
end)
