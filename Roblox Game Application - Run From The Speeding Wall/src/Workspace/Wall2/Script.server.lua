local Wall2 = script.Parent

Wall2.Touched:Connect(function(hit)

if hit.Parent:FindFirstChild("Humanoid")then
	hit.Parent:BreakJoints()
end
end)



