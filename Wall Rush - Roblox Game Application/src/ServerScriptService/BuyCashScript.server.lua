local MarketplaceService = game:GetService("MarketplaceService")
local DatastoreService = game:GetService("DataStoreService")
local PreviousPurchases = DatastoreService:GetDataStore("PreviousPurchases")
local ONE_HUNDRED_COINS = 1158596613
local TWO_HUNDRED_FIFTY_COINS = 1158599503
local FIVE_HUNDRED_COINS = 1158599666
local SEVEN_HUNDRED_FIFTY_COINS = 1158600736
local ONE_THOUSAND_COINS = 1158600848
local TWO_THOUSAND_COINS = 1158601071
local skipstage = 1163827989
local currencyname = "Coins"
MarketplaceService.ProcessReceipt = function(receipt)
	--Receipt has PurchaseId, PlayerId, ProductId, CurrencySpentValue, CurrencyType, PlaceIdWherePurchased
	local ID = receipt.PlayerId.."-"..receipt.PurchaseId
	local success = nil
	pcall(function()
		success = PreviousPurchases:GetAsync(ID)
	end)
	if success then  --Has it already been bought?
		--Then purchase has already been done
		return Enum.ProductPurchaseDecision.PurchaseGranted
	end
	local player = game.Players:GetPlayerByUserId(receipt.PlayerId)
	if not player then
		--The player either left or disconnected
		return Enum.ProductPurchaseDecision.NotProcessedYet
	else 
		--If there are multiple developer products, then you will have to repeat the following code however number of times that is equal with how many developer products you have. 
		if receipt.ProductId == ONE_HUNDRED_COINS then
			--We know they've bought 100 cash if this if statement is triggered
			player.leaderstats[currencyname].Value = player.leaderstats[currencyname].Value + 100
		end
		if receipt.ProductId == TWO_HUNDRED_FIFTY_COINS then
			--We know they've bought 250 cash if this if statement is triggered
			player.leaderstats[currencyname].Value = player.leaderstats[currencyname].Value + 250
		end
		if receipt.ProductId == FIVE_HUNDRED_COINS then
			--We know they've bought 500 cash if this if statement is triggered
			player.leaderstats[currencyname].Value = player.leaderstats[currencyname].Value + 500
		end
		if receipt.ProductId == SEVEN_HUNDRED_FIFTY_COINS then
			--We know they've bought 750 cash if this if statement is triggered
			player.leaderstats[currencyname].Value = player.leaderstats[currencyname].Value + 750
		end
		if receipt.ProductId == ONE_THOUSAND_COINS then
			--We know they've bought 1000 cash if this if statement is triggered
			player.leaderstats[currencyname].Value = player.leaderstats[currencyname].Value + 1000
		end
		if receipt.ProductId == TWO_THOUSAND_COINS then
			--We know they've bought 2000 cash if this if statement is triggered
			player.leaderstats[currencyname].Value = player.leaderstats[currencyname].Value + 2000
		end
		if receipt.ProductId == skipstage then
			game.ReplicatedStorage.Events.SkipStageProductBought:FireClient(player)
			print(player)
		end
		pcall(function()
			PreviousPurchases:SetAsync(ID, true)
		end)
		return Enum.ProductPurchaseDecision.PurchaseGranted
	end
end