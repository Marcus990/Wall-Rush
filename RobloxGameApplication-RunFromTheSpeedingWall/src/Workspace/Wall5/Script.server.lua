local Wall5 = script.Parent

Wall5.Touched:Connect(function(hit)

if hit.Parent:FindFirstChild("Humanoid")then
	hit.Parent:BreakJoints()
end
end)



