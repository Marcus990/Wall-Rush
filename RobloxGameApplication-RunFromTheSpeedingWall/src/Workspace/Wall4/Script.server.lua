local Wall4 = script.Parent

Wall4.Touched:Connect(function(hit)

if hit.Parent:FindFirstChild("Humanoid")then
	hit.Parent:BreakJoints()
end
end)



