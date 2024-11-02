--This is for the 2000 Coins Developer Product.

local MarketplaceService = game:GetService("MarketplaceService")
local player = game.Players.LocalPlayer

script.Parent.Activated:Connect(function()
	MarketplaceService:PromptProductPurchase(player, 1158601071)
end)
