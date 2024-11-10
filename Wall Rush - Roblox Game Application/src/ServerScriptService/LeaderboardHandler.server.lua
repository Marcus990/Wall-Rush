local DatastoreService = game:GetService("DataStoreService")
local CoinsLeaderboard = DatastoreService:GetOrderedDataStore("CoinsLeaderboard")
local function updateleaderboard()
	local success, error = pcall(function()
		local Data = CoinsLeaderboard:GetSortedAsync(false,5)
		local CoinsPage = Data:GetCurrentPage()
		for rank, data in ipairs(CoinsPage) do
			local username = game.Players:GetNameFromUserIdAsync(tonumber(data.key))
			local name = username
			local Coins = data.value
			local isOnLeaderboard = false
			for i,v in pairs(game.Workspace.GlobalLeaderboard.Base.LeaderboardGui.Holder:GetChildren()) do
				if v.Player.Text == name then
					isOnLeaderboard = true
					break
				end
			end
			if Coins and isOnLeaderboard == false then
				local newleaderboardframe = game.ReplicatedStorage:WaitForChild("LeaderboardFrame"):Clone()
				newleaderboardframe.Player.Text = name
				newleaderboardframe.Coins.Text = Coins
				newleaderboardframe.Rank.Text = "#"..rank
				newleaderboardframe.Parent = game.Workspace.GlobalLeaderboard.Base.LeaderboardGui.Holder
				newleaderboardframe.Position = UDim2.new(0,0, (0.1*#game.Workspace.GlobalLeaderboard.Base.LeaderboardGui.Holder:GetChildren()),0)
			end
		end
	end)
	if not success then
		print(error)
	end
end

while true do
	for _, player in pairs(game.Players:GetPlayers()) do
		CoinsLeaderboard:SetAsync(player.UserId, player.leaderstats.Coins.Value)
	end
	for _, frame in pairs(game.Workspace.GlobalLeaderboard.Base.LeaderboardGui.Holder:GetChildren()) do
		frame:Destroy()
	end
	updateleaderboard()
	print("UpdatedLeaderboard")
	wait(60)
end