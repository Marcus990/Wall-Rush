local plr = game.Players.LocalPlayer

local char = plr.Character or plr.CharacterAdded:Wait()
char:WaitForChild("HumanoidRootPart").Anchored = true


local mouse = plr:GetMouse()


local camera = workspace.CurrentCamera

local RunService = game:GetService("RunService")
if camera.CameraSubject == nil then
	repeat RunService.RenderStepped:Wait() until camera.CameraSubject ~= nil
end
camera.CameraType = Enum.CameraType.Scriptable
--camera.CameraType = Enum.CameraType.Scriptable
camera.CFrame = workspace.CameraStartPosition.CFrame


local tweenService = game:GetService("TweenService")


local mainMenuGui = script.Parent


local mainMenuBG = mainMenuGui:WaitForChild("MainMenuBackground")

local playBtn = mainMenuBG:WaitForChild("PlayButton")
local creditsBtn = mainMenuBG:WaitForChild("CreditsButton")

local creditsBG = mainMenuBG:WaitForChild("CreditsBackground")


local loadingScreenBG = mainMenuGui:WaitForChild("LoadingScreenBackground")

local logo = loadingScreenBG:WaitForChild("Logo")

local loadingBarBG = loadingScreenBG:WaitForChild("LoadingBarBG")
local clippingFrame = loadingBarBG:WaitForChild("ClippingFrame")
local loadingBar = clippingFrame:WaitForChild("LoadingBar")


clippingFrame.Size = UDim2.new(0, 0, 1, 0)

clippingFrame:TweenSize(UDim2.new(1, 0, 1, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 5)


clippingFrame:GetPropertyChangedSignal("Size"):Connect(function()	
	
	loadingBar.Size = UDim2.new(1/clippingFrame.Size.X.Scale, 0, 1, 0)
end)


repeat wait() until clippingFrame.Size == UDim2.new(1, 0, 1, 0)


local loadingScreenFade = tweenService:Create(loadingScreenBG, TweenInfo.new(3, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {BackgroundTransparency = 1})
loadingScreenFade:Play()

logo:TweenPosition(UDim2.new(0.5, 0, -0.5, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 2)
loadingBarBG:TweenPosition(UDim2.new(0.5, 0, 1.5, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 2)



local originalCFrame = camera.CFrame
local scaleFactor = 1000


game:GetService("RunService").RenderStepped:Connect(function()
	
	
	local centreOfScreen = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
	
	local mouseDistanceFromCentre = Vector3.new((-mouse.X - centreOfScreen.X) / scaleFactor, (mouse.Y - centreOfScreen.Y) / scaleFactor, 0)
	
	
	camera.CFrame = originalCFrame * CFrame.new(originalCFrame.LookVector + mouseDistanceFromCentre)
end)


local playButtonClicked = false

playBtn.MouseButton1Click:Connect(function()
	
	if playButtonClicked then return end
	playButtonClicked = true
	
	
	
	creditsBG:TweenPosition(UDim2.new(-0.5, 0, 0.5, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 1, true)
	
	mainMenuBG:TweenPosition(UDim2.new(-1, 0, 0, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 3, true)
	
	
	wait(3)
	
	
	char.HumanoidRootPart.Anchored = false
	char.HumanoidRootPart.CFrame = workspace.SpawnPart.CFrame
	
	camera.CameraType = Enum.CameraType.Custom
	
	mainMenuGui:Destroy()
end)


local creditsOpen = false

creditsBtn.MouseButton1Click:Connect(function()
	
	
	if playButtonClicked then return end
	
	
	if creditsOpen then
		creditsBG:TweenPosition(UDim2.new(-0.5, 0, 0.5, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 1, true)
		
	else
		creditsBG:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quint, 1, true)
	end
	
	creditsOpen = not creditsOpen
end)


local function hoverOnButton(btn)
	
	if playButtonClicked then return end
	
	local colourDarken = tweenService:Create(btn, TweenInfo.new(0.1, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {ImageColor3 = Color3.fromRGB(221, 221, 221)})
	colourDarken:Play()
end

local function hoverOffButton(btn)
	
	if playButtonClicked then return end
	
	local colourNormal = tweenService:Create(btn, TweenInfo.new(0.1, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {ImageColor3 = Color3.fromRGB(255, 255, 255)})
	colourNormal:Play()
end


playBtn.MouseEnter:Connect(function()
	
	hoverOnButton(playBtn)
end)
creditsBtn.MouseEnter:Connect(function()
	
	hoverOnButton(creditsBtn)
end)

playBtn.MouseLeave:Connect(function()
	
	hoverOffButton(playBtn)
end)
creditsBtn.MouseLeave:Connect(function()
	
	hoverOffButton(creditsBtn)
end)