-- Gui to Lua
-- Version: 3.2

-- Instances:

local ROKPrisonLife = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local OpenCloseButton = Instance.new("TextButton")
local Folder = Instance.new("Folder")
local NoclipButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local SpeedButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local UICorner_4 = Instance.new("UICorner")
local Killaura = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local JumpHeightButton = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local TextBox_2 = Instance.new("TextBox")
local UICorner_7 = Instance.new("UICorner")

--Properties:

ROKPrisonLife.Name = "ROKPrisonLife"
ROKPrisonLife.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ROKPrisonLife.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = ROKPrisonLife
MainFrame.BackgroundColor3 = Color3.fromRGB(125, 125, 125)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.720757663, 0, 0, 0)
MainFrame.Size = UDim2.new(0, 200, 0, 300)

UICorner.Parent = MainFrame

OpenCloseButton.Name = "OpenCloseButton"
OpenCloseButton.Parent = MainFrame
OpenCloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OpenCloseButton.BackgroundTransparency = 1.000
OpenCloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
OpenCloseButton.BorderSizePixel = 0
OpenCloseButton.Size = UDim2.new(0, 200, 0, 24)
OpenCloseButton.ZIndex = 2
OpenCloseButton.Font = Enum.Font.FredokaOne
OpenCloseButton.Text = "Scripts"
OpenCloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenCloseButton.TextScaled = true
OpenCloseButton.TextSize = 14.000
OpenCloseButton.TextWrapped = true

Folder.Parent = MainFrame

NoclipButton.Name = "NoclipButton"
NoclipButton.Parent = Folder
NoclipButton.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
NoclipButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
NoclipButton.BorderSizePixel = 0
NoclipButton.Position = UDim2.new(0.0745040923, 0, 0.115000002, 0)
NoclipButton.Size = UDim2.new(0, 169, 0, 42)
NoclipButton.Font = Enum.Font.FredokaOne
NoclipButton.Text = "Noclip - OFF"
NoclipButton.TextColor3 = Color3.fromRGB(255, 255, 255)
NoclipButton.TextScaled = true
NoclipButton.TextSize = 14.000
NoclipButton.TextWrapped = true

UICorner_2.Parent = NoclipButton

SpeedButton.Name = "SpeedButton"
SpeedButton.Parent = Folder
SpeedButton.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
SpeedButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SpeedButton.BorderSizePixel = 0
SpeedButton.Position = UDim2.new(0.0745040923, 0, 0.316666663, 0)
SpeedButton.Size = UDim2.new(0, 84, 0, 51)
SpeedButton.Font = Enum.Font.FredokaOne
SpeedButton.Text = "Set Speed"
SpeedButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedButton.TextScaled = true
SpeedButton.TextSize = 14.000
SpeedButton.TextWrapped = true

UICorner_3.Parent = SpeedButton

TextBox.Parent = SpeedButton
TextBox.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(1.11904836, 0, 0, 0)
TextBox.Size = UDim2.new(0, 75, 0, 51)
TextBox.Font = Enum.Font.FredokaOne
TextBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.PlaceholderText = "Enter Speed"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

UICorner_4.Parent = TextBox

Killaura.Name = "Killaura"
Killaura.Parent = Folder
Killaura.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
Killaura.BorderColor3 = Color3.fromRGB(0, 0, 0)
Killaura.BorderSizePixel = 0
Killaura.Position = UDim2.new(0.0745040923, 0, 0.768333256, 0)
Killaura.Size = UDim2.new(0, 169, 0, 42)
Killaura.Font = Enum.Font.FredokaOne
Killaura.Text = "Kill Aura - OFF"
Killaura.TextColor3 = Color3.fromRGB(255, 255, 255)
Killaura.TextScaled = true
Killaura.TextSize = 14.000
Killaura.TextWrapped = true

UICorner_5.Parent = Killaura

JumpHeightButton.Name = "JumpHeightButton"
JumpHeightButton.Parent = Folder
JumpHeightButton.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
JumpHeightButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
JumpHeightButton.BorderSizePixel = 0
JumpHeightButton.Position = UDim2.new(0.0745040923, 0, 0.523333311, 0)
JumpHeightButton.Size = UDim2.new(0, 84, 0, 51)
JumpHeightButton.Font = Enum.Font.FredokaOne
JumpHeightButton.Text = "Set Jump Height"
JumpHeightButton.TextColor3 = Color3.fromRGB(255, 255, 255)
JumpHeightButton.TextScaled = true
JumpHeightButton.TextSize = 14.000
JumpHeightButton.TextWrapped = true

UICorner_6.Parent = JumpHeightButton

TextBox_2.Parent = JumpHeightButton
TextBox_2.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
TextBox_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox_2.BorderSizePixel = 0
TextBox_2.Position = UDim2.new(1.11904836, 0, 0, 0)
TextBox_2.Size = UDim2.new(0, 75, 0, 51)
TextBox_2.Font = Enum.Font.FredokaOne
TextBox_2.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
TextBox_2.PlaceholderText = "Enter Jump Height"
TextBox_2.Text = ""
TextBox_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox_2.TextScaled = true
TextBox_2.TextSize = 14.000
TextBox_2.TextWrapped = true

UICorner_7.Parent = TextBox_2

-- Scripts:

local function ZRAIS_fake_script() -- OpenCloseButton.LocalScript 
	local script = Instance.new('LocalScript', OpenCloseButton)

	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(0.7, Enum.EasingStyle.Circular, Enum.EasingDirection.InOut, 0, false)
	local so = UDim2.new(0, 200, 0, 300)
	local sc = UDim2.new(0, 200, 0, 24)
	local open = true
	function open2()
		open = false
		local tween = ts:Create(script.Parent.Parent, ti, {Size = so})
		tween:Play()
		tween.Completed:Wait()
		for i,guiItem in pairs(script.Parent.Parent.Folder:GetDescendants()) do
			if guiItem:IsA("TextButton") or guiItem:IsA("TextBox") then
				guiItem.Transparency = 0
			end	
		end
	end
	
	function close()
		open = true
		local tween = ts:Create(script.Parent.Parent, ti, {Size = sc})
		for i,guiItem in pairs(script.Parent.Parent.Folder:GetDescendants()) do
			if guiItem:IsA("TextButton") or guiItem:IsA("TextBox") then
				guiItem.Transparency = 100
			end	
		end
		tween:Play()
		tween.Completed:Wait()
	end
	
	close()
	
	script.Parent.Activated:Connect(function()
		if open == true then
			open2()
		else
			close()
		end
	end)
end
coroutine.wrap(ZRAIS_fake_script)()
local function OSCT_fake_script() -- NoclipButton.LocalScript 
	local script = Instance.new('LocalScript', NoclipButton)

	local c = workspace.CurrentCamera
	local player = game.Players.LocalPlayer
	local userInput = game:GetService("UserInputService")
	local rs = game:GetService("RunService")
	local starterPlayer = game:GetService("StarterPlayer")
	
	local alreadySelec = false
	
	local selected = false
	local speed = 60
	local lastUpdate = 0
	
	function getNextMovement(deltaTime)
		local nextMove = Vector3.new()
		-- Left/Right
		if userInput:IsKeyDown("A") or userInput:IsKeyDown("Left") then
			nextMove = Vector3.new(-1,0,0)
		elseif userInput:IsKeyDown("D") or userInput:IsKeyDown("Right") then
			nextMove = Vector3.new(1,0,0)
		end
		-- Forward/Back
		if userInput:IsKeyDown("W") or userInput:IsKeyDown("Up") then
			nextMove = nextMove + Vector3.new(0,0,-1)
		elseif userInput:IsKeyDown("S") or userInput:IsKeyDown("Down") then
			nextMove = nextMove + Vector3.new(0,0,1)
		end
		-- Up/Down
		if userInput:IsKeyDown("Space") then
			nextMove = nextMove + Vector3.new(0,1,0)
		elseif userInput:IsKeyDown("LeftControl") then
			nextMove = nextMove + Vector3.new(0,-1,0)
		end
		return CFrame.new( nextMove * (speed * deltaTime) )
	end
	
	function onSelected(selecVal)
		local char = player.Character
		if char then
			local humanoid = char:WaitForChild("Humanoid")
			local root = char:WaitForChild("HumanoidRootPart")
			local currentPos = root.Position
			selected = selecVal
			root.Anchored = true
			lastUpdate = tick()
			humanoid.PlatformStand = true
			while selected do
				wait()
				local delta = tick()-lastUpdate
				local look = (c.Focus.p-c.CoordinateFrame.p).unit
				local move = getNextMovement(delta)
				local pos = root.Position
				root.CFrame = CFrame.new(pos,pos+look) * move
				lastUpdate = tick()
			end
			root.Anchored = false
			root.Velocity = Vector3.new()
			humanoid.PlatformStand = false
		end
	end
	
	script.Parent.Activated:Connect(function()
		if script.Parent.Transparency == 0 then
			if alreadySelec == true then
				alreadySelec = false
				script.Parent.Text = "Noclip - OFF"
			else
				alreadySelec = true
				script.Parent.Text = "Noclip - ON"
			end
			onSelected(alreadySelec)
		end
	end)
end
coroutine.wrap(OSCT_fake_script)()
local function JFVSYKU_fake_script() -- SpeedButton.LocalScript 
	local script = Instance.new('LocalScript', SpeedButton)

	script.Parent.Activated:Connect(function()
		if script.Parent.Transparency == 0 then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = script.Parent.TextBox.Text
		end
	end)
end
coroutine.wrap(JFVSYKU_fake_script)()
local function SFMUJI_fake_script() -- Killaura.LocalScript 
	local script = Instance.new('LocalScript', Killaura)

	local alreadySelec = false
	local SelfRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
	local SelfName = game.Players.LocalPlayer.Name
	local DamageRemote = game.ReplicatedStorage.meleeEvent
	
	script.Parent.Activated:Connect(function()
		if script.Parent.Transparency == 0 then
			if alreadySelec == true then
				alreadySelec = false
				script.Parent.Text = "Kill Aura - OFF"
			else
				alreadySelec = true
				script.Parent.Text = "Kill Aura - ON"
			end
		end
	end)
	
	while wait() do
		for i,v in ipairs(game.Players:GetChildren()) do
			local Char = v.Character
			if Char then
				local Name = v.Name
				local Root = Char:WaitForChild("HumanoidRootPart")
	
				local TargetRootPos = Root.Position
				local SelfRootPos = Root.Position
	
				local Distance = math.abs((TargetRootPos - SelfRootPos).magnitude)
	
				if Distance < 10 then
					if v.Name ~= SelfName then
						if alreadySelec == true then
							DamageRemote:FireServer(v)
						end
					end
				end
			end
		end
	end
end
coroutine.wrap(SFMUJI_fake_script)()
local function XCEIO_fake_script() -- JumpHeightButton.LocalScript 
	local script = Instance.new('LocalScript', JumpHeightButton)

	script.Parent.Activated:Connect(function()
		if script.Parent.Transparency == 0 then
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = script.Parent.TextBox.Text
		end
	end)
end
coroutine.wrap(XCEIO_fake_script)()
