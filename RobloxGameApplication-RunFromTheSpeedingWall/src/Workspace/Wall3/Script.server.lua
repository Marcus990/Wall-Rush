local Wall3 = script.Parent

Wall3.Touched:Connect(function(hit)

if hit.Parent:FindFirstChild("Humanoid")then
	hit.Parent:BreakJoints()
end
end)



