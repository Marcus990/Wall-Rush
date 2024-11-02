local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")
local RedTrailForDatastoreEvent2 = Events:WaitForChild("RedTrailForDatastoreEvent2")
local OrangeTrailForDatastoreEvent2 = Events:WaitForChild("OrangeTrailForDatastoreEvent2")
local YellowTrailForDatastoreEvent2 = Events:WaitForChild("YellowTrailForDatastoreEvent2")
local GreenTrailForDatastoreEvent2 = Events:WaitForChild("GreenTrailForDatastoreEvent2")
local BlueTrailForDatastoreEvent2 = Events:WaitForChild("BlueTrailForDatastoreEvent2")
local PurpleTrailForDatastoreEvent2 = Events:WaitForChild("PurpleTrailForDatastoreEvent2")
local AquaTrailForDatastoreEvent2 = Events:WaitForChild("AquaTrailForDatastoreEvent2")
local PinkTrailForDatastoreEvent2 = Events:WaitForChild("PinkTrailForDatastoreEvent2")
local WhiteTrailForDatastoreEvent2 = Events:WaitForChild("WhiteTrailForDatastoreEvent2")
local RainbowTrailForDatastoreEvent2 = Events:WaitForChild("RainbowTrailForDatastoreEvent2")
local FireTrailForDatastoreEvent2 = Events:WaitForChild("FireTrailForDatastoreEvent2")
local OceanTrailForDatastoreEvent2 = Events:WaitForChild("OceanTrailForDatastoreEvent2")
local RedHaloForDatastoreEvent2 = Events:WaitForChild("RedHaloForDatastoreEvent2")
local OrangeHaloForDatastoreEvent2 = Events:WaitForChild("OrangeHaloForDatastoreEvent2")
local YellowHaloForDatastoreEvent2 = Events:WaitForChild("YellowHaloForDatastoreEvent2")
local GreenHaloForDatastoreEvent2 = Events:WaitForChild("GreenHaloForDatastoreEvent2")
local BlueHaloForDatastoreEvent2 = Events:WaitForChild("BlueHaloForDatastoreEvent2")
local PurpleHaloForDatastoreEvent2 = Events:WaitForChild("PurpleHaloForDatastoreEvent2")
local AquaHaloForDatastoreEvent2 = Events:WaitForChild("AquaHaloForDatastoreEvent2")
local PinkHaloForDatastoreEvent2 = Events:WaitForChild("PinkHaloForDatastoreEvent2")
local WhiteHaloForDatastoreEvent2 = Events:WaitForChild("WhiteHaloForDatastoreEvent2")
local RedNametagForDatastoreEvent = Events:WaitForChild("RedNametagForDatastoreEvent")
local OrangeNametagForDatastoreEvent = Events:WaitForChild("OrangeNametagForDatastoreEvent")
local YellowNametagForDatastoreEvent = Events:WaitForChild("YellowNametagForDatastoreEvent")
local GreenNametagForDatastoreEvent = Events:WaitForChild("GreenNametagForDatastoreEvent")
local BlueNametagForDatastoreEvent = Events:WaitForChild("BlueNametagForDatastoreEvent")
local PurpleNametagForDatastoreEvent = Events:WaitForChild("PurpleNametagForDatastoreEvent")
local AquaNametagForDatastoreEvent = Events:WaitForChild("AquaNametagForDatastoreEvent")
local PinkNametagForDatastoreEvent = Events:WaitForChild("PinkNametagForDatastoreEvent")
local MagentaNametagForDatastoreEvent = Events:WaitForChild("MagentaNametagForDatastoreEvent")
local currencyName = "Coins"
local Players = game:GetService("Players")
local DataStore = game:GetService("DataStoreService"):GetDataStore("TestDataStore")
local DataStoreService = game:GetService("DataStoreService")
local TrailForDatastoreEvent = Events:WaitForChild("TrailForDatastoreEvent")
local ItemsDatastore = DataStoreService:GetDataStore("Items")
local CoinsDatastore = DataStoreService:GetDataStore("CoinQuest")
local QuestDatastore = DataStoreService:GetDataStore("Quest")


remotetrailevents = {RedTrailForDatastoreEvent2, OrangeTrailForDatastoreEvent2, YellowTrailForDatastoreEvent2, GreenTrailForDatastoreEvent2, BlueTrailForDatastoreEvent2, PurpleTrailForDatastoreEvent2, AquaTrailForDatastoreEvent2, PinkTrailForDatastoreEvent2, WhiteTrailForDatastoreEvent2, RainbowTrailForDatastoreEvent2, FireTrailForDatastoreEvent2, OceanTrailForDatastoreEvent2, RedHaloForDatastoreEvent2, OrangeHaloForDatastoreEvent2, YellowHaloForDatastoreEvent2, GreenHaloForDatastoreEvent2, BlueHaloForDatastoreEvent2, PurpleHaloForDatastoreEvent2,AquaHaloForDatastoreEvent2, PinkHaloForDatastoreEvent2, WhiteHaloForDatastoreEvent2, RedNametagForDatastoreEvent, OrangeNametagForDatastoreEvent, YellowNametagForDatastoreEvent, GreenNametagForDatastoreEvent, BlueNametagForDatastoreEvent, PurpleNametagForDatastoreEvent, AquaNametagForDatastoreEvent, PinkNametagForDatastoreEvent, MagentaNametagForDatastoreEvent}

game:GetService("Players").PlayerAdded:Connect(function(player)
	print("wsp")
	local QuestGui = player.PlayerGui:WaitForChild("QuestGui")
	items = {}
	for i=1, 1000, 1 do
		table.insert(items, false)
	end
	
	local folder = Instance.new("Folder")
	folder.Name = "leaderstats"
	folder.Parent = player	
	
	local currency = Instance.new("IntValue")
	currency.Name = "Coins"
	currency.Parent = folder
	------------------------------------
	local savedData
	getdatastore = nil
	local coinsquestdata
	
	local success, err = pcall(function()
		savedData = DataStore:GetAsync(player.UserId)
		return savedData
	end)
	
	if savedData ~= nil then
		currency.Value = savedData
		print(savedData)
	else
			-- New player
		currency.Value = 0
		print("New player to the game")
	end
	
	local success, err = pcall(function()
		coinsquestdata = CoinsDatastore:GetAsync(player.UserId)
		return coinsquestdata
	end)
	
	if coinsquestdata ~= nil then
		QuestGui.Frame.MainFrame.Quest1.CoinAmount.Text = coinsquestdata
	else
		QuestGui.Frame.MainFrame.Quest1.CoinAmount.Text = "0/10"
	end
	
	local success, err = pcall(function()
		questdata = QuestDatastore:GetAsync(player.UserId)
		return questdata
	end)
	
	if questdata ~= nil then
		QuestGui.Frame.MainFrame.Quest2.CoinAmount.Text = questdata
		print("data was loaded")
	else
		QuestGui.Frame.MainFrame.Quest2.CoinAmount.Text = "0/1"
		print("data was not properly loaded")
	end
	
	game.ReplicatedStorage.Events:WaitForChild("QuestDataLoaded"):FireClient(player)
	
	local success, err = pcall(function()
		getdatastore = ItemsDatastore:GetAsync(player.UserId)
		return getdatastore
	end)
	
local function loadinshopgui(player, getdatastore)
		for i, v in pairs(getdatastore) do
			if getdatastore[i] == true then
				if remotetrailevents[i] then
					local stringvalue = "Equip"
					remotetrailevents[i]:FireClient(player, stringvalue)
				end
			elseif getdatastore[i] == "Unequip" then
				local stringvalue = "Unequip"
				remotetrailevents[i]:FireClient(player, stringvalue)
			end
		end
	end
	
	if success then
		if getdatastore then
				if getdatastore ~= nil then
		loadinshopgui(player, getdatastore)
		end
			end
		else
			warn(err)
	end
	
	while true do
		wait(10)
		game.ReplicatedStorage.Events.AutosaveEvent:FireClient(player)
		game.ReplicatedStorage.Events.AutosaveEventFireback.OnServerEvent:Connect(function(player, accessguitable)
			for i, v in pairs(accessguitable) do
				if accessguitable[i] == "Unequip" then
					getdatastore[i] = "Unequip"
					getdatastore[i] = true
				end
			end
		end)
		
		local coinquestdata = player.PlayerGui:WaitForChild("QuestGui").Frame.MainFrame.Quest1.CoinAmount.Text
		local success, err = pcall(function()
			CoinsDatastore:SetAsync(player.UserId, coinquestdata)
			ItemsDatastore:SetAsync(player.UserId, getdatastore)
		end)
		wait()
		if success then
			print("Autosaved. Autosaving again in the next 10 seconds.")
		else
			print("Did not autosave. Will try 3 more times.")
			for i = 1, 3, 1 do
				local success, err = pcall(function()
					CoinsDatastore:SetAsync(player.UserId, coinquestdata)
					ItemsDatastore:SetAsync(player.UserId, getdatastore)
				end)
				if success then
					print("Successfully autosaved after retrying.")
					break
				end
			end
		end
	end
	
end)

game.Players.PlayerRemoving:Connect(function(player)
	local generaldata = player.leaderstats["Coins"].Value
	local success, error = pcall(function()
		DataStore:SetAsync(player.UserId, generaldata)
	end)
end)


game:BindToClose(function()
	-- When game is ready to shutdown
	for _,Player in pairs(game.Players:GetPlayers())do
		local generaldata = Player.leaderstats["Coins"].Value
		local success, error = pcall(function()
			DataStore:SetAsync(Player.UserId, generaldata)
		end)
	end
end)

TrailForDatastoreEvent.OnServerEvent:Connect(function(player, index) 
	getdatastore[index] = true
	ItemsDatastore:SetAsync(player.UserId, getdatastore)
end)



