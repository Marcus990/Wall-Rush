local Part = script.Parent
local canGet = true
local MarketplaceService = game:GetService("MarketplaceService")
local DoubleCoinsGamepassId = 15903193
local Players = game:GetService("Players")
local DatastoreService = game:GetService("DataStoreService")
local QuestDatastore = DatastoreService:GetDataStore("Quest")

Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function()
		local success, message = pcall(function()
			hasPass = MarketplaceService:UserOwnsGamePassAsync(player.UserId, DoubleCoinsGamepassId)
		end)
		local function onTouch(otherPart)
			if hasPass then
				print(player.Name.." has the gamepass")

				local humanoid = otherPart.Parent:FindFirstChild("Humanoid")
				if humanoid then
					local player = game.Players:FindFirstChild(otherPart.Parent.Name)
					if player and canGet then
						canGet = false
						game.ReplicatedStorage.Events:WaitForChild("PlayFinishedSound"):FireClient(player)
						
						player.leaderstats.Coins.Value = player.leaderstats.Coins.Value + 20
						if player.PlayerGui.QuestGui.Frame.MainFrame.Quest2.CoinAmount.Text == "0/1" then
							player.PlayerGui.QuestGui.Frame.MainFrame.Quest2.CoinAmount.Text = "1/1"
							game.ReplicatedStorage.Events.LevelTouchedQuest:FireClient(player)
							QuestDatastore:SetAsync(player.UserId, player.PlayerGui.QuestGui.Frame.MainFrame.Quest2.CoinAmount.Text)
						end
						wait(5)

						canGet = true

					end
				end



			else

				print(player.Name .. " does not have the gamepass")

				local humanoid = otherPart.Parent:FindFirstChild("Humanoid")
				if humanoid then
					local player = game.Players:FindFirstChild(otherPart.Parent.Name)
					if player and canGet then
						canGet = false
						wait(0.1)
						game.ReplicatedStorage.Events.LevelTouchedQuest:FireClient(player)
						game.ReplicatedStorage.Events:WaitForChild("PlayFinishedSound"):FireClient(player)
						player.leaderstats.Coins.Value = player.leaderstats.Coins.Value + 10
						if player.PlayerGui.QuestGui.Frame.MainFrame.Quest2.CoinAmount.Text == "0/1" then
							player.PlayerGui.QuestGui.Frame.MainFrame.Quest2.CoinAmount.Text = "1/1"
							QuestDatastore:SetAsync(player.UserId, player.PlayerGui.QuestGui.Frame.MainFrame.Quest2.CoinAmount.Text)
						end
						wait(5)
						canGet = true

					end
				end
			end
		end
		Part.Touched:Connect(onTouch)
	end)
end)







local function onPromptGamePassPurchaseFinished(player, purchasedPassId, purchaseSuccess)
	if purchaseSuccess and purchasedPassId == DoubleCoinsGamepassId then
		print(player.Name.."has purchased the gamepass haha")

	end
end

MarketplaceService.PromptGamePassPurchaseFinished:Connect(onPromptGamePassPurchaseFinished)
--you only need the following block of code in one script of the five lvlfinishedwall scripts. this is so the datastore queue doesn't fill up from the setasync
game.ReplicatedStorage.Events.UpdateLevelQuestAfterClaimed.OnServerEvent:Connect(function(player)
	player.PlayerGui.QuestGui.Frame.MainFrame.Quest2.CoinAmount.Text = "0/1"
	QuestDatastore:SetAsync(player.UserId, player.PlayerGui.QuestGui.Frame.MainFrame.Quest2.CoinAmount.Text)
end)

