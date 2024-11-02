local Part = game.Workspace.LvlFinishedWall

local function onTouch(otherPart)
	local player = game.Players:FindFirstChild(otherPart.Parent.Name)
	local value = player.leaderstats.Coins.Value
	wait(0.5)
	if value ~= player.leaderstats.Coins.Value then 
		script.Parent.Enabled = true
		wait(3)
		script.Parent.Enabled = false
	end

end



Part.Touched:Connect(onTouch)





			