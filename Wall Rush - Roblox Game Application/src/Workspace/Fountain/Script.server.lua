local Part = script.Parent
local DatastoreService = game:GetService("DataStoreService")
local QuestDatastore = DatastoreService:GetDataStore("Quest")

 local function onTouch(otherPart)
	local humanoid = otherPart.Parent:FindFirstChild("Humanoid")
	if humanoid then
		local player = game.Players:FindFirstChild(otherPart.Parent.Name)
		if player and not debounce then
			debounce = true
			wait(0.1)
			game.ReplicatedStorage.Events:WaitForChild("PlayFinishedSound"):FireClient(player)
			if player.PlayerGui.QuestGui.Frame.MainFrame.Quest2.CoinAmount.Text == "0/1" then
				player.PlayerGui.QuestGui.Frame.MainFrame.Quest2.CoinAmount.Text = "1/1"
				game.ReplicatedStorage.Events.LevelTouchedQuest:FireClient(player)
				QuestDatastore:SetAsync(player.UserId, player.PlayerGui.QuestGui.Frame.MainFrame.Quest2.CoinAmount.Text)
			end
			wait(5)
			debounce = false

		end
	end
	end

Part.Touched:Connect(onTouch)
