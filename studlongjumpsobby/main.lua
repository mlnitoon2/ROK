-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local CheckpointsFrame = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local CurrentPosLabel = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")
local ClearCheckpointsButton = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local CreditsLabel = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")
local RebirthFarmButton = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local SaveCurrentPosButton = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Template = Instance.new("Frame")
local UICorner_10 = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local UICorner_11 = Instance.new("UICorner")
local SetClipboardSavedButton = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local ImageButton = Instance.new("ImageButton")
local UICorner_13 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(58, 59, 67)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.499607831, 0, 0.499308407, 0)
MainFrame.Size = UDim2.new(0.451764703, 0, 0.694139183, 0)
MainFrame.Visible = false

UICorner.Parent = MainFrame

TextLabel.Parent = MainFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(74, 76, 90)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(1, 0, 0.131926119, 0)
TextLabel.Font = Enum.Font.Ubuntu
TextLabel.Text = "Stud Long Jumps Obby GUI"
TextLabel.TextColor3 = Color3.fromRGB(132, 133, 157)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(132, 133, 157)
TextLabel.TextWrapped = true

UICorner_2.Parent = TextLabel

CheckpointsFrame.Name = "CheckpointsFrame"
CheckpointsFrame.Parent = MainFrame
CheckpointsFrame.AnchorPoint = Vector2.new(0.5, 0.5)
CheckpointsFrame.BackgroundColor3 = Color3.fromRGB(78, 77, 95)
CheckpointsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
CheckpointsFrame.BorderSizePixel = 0
CheckpointsFrame.Position = UDim2.new(0.215277776, 0, 0.540897071, 0)
CheckpointsFrame.Size = UDim2.new(0.378472209, 0, 0.722955167, 0)

UICorner_3.Parent = CheckpointsFrame

ScrollingFrame.Parent = CheckpointsFrame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0.153284669, 0)
ScrollingFrame.Size = UDim2.new(1, 0, 0.846715331, 0)
ScrollingFrame.ZIndex = 3

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 10)

UIPadding.Parent = ScrollingFrame
UIPadding.PaddingLeft = UDim.new(0.0250000004, 0)
UIPadding.PaddingTop = UDim.new(0.00999999978, 0)

TextLabel_2.Parent = CheckpointsFrame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(82, 82, 99)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(1, 0, 0.131386861, 0)
TextLabel_2.Font = Enum.Font.Ubuntu
TextLabel_2.Text = "Saved Checkpoints"
TextLabel_2.TextColor3 = Color3.fromRGB(132, 133, 157)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextStrokeColor3 = Color3.fromRGB(132, 133, 157)
TextLabel_2.TextWrapped = true

UICorner_4.Parent = TextLabel_2

CurrentPosLabel.Name = "CurrentPosLabel"
CurrentPosLabel.Parent = MainFrame
CurrentPosLabel.BackgroundColor3 = Color3.fromRGB(74, 76, 90)
CurrentPosLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
CurrentPosLabel.BorderSizePixel = 0
CurrentPosLabel.Position = UDim2.new(0.446180552, 0, 0.218997359, 0)
CurrentPosLabel.Size = UDim2.new(0.524305582, 0, 0.131926119, 0)
CurrentPosLabel.Font = Enum.Font.Ubuntu
CurrentPosLabel.Text = "HRP Pos:"
CurrentPosLabel.TextColor3 = Color3.fromRGB(132, 133, 157)
CurrentPosLabel.TextScaled = true
CurrentPosLabel.TextSize = 14.000
CurrentPosLabel.TextStrokeColor3 = Color3.fromRGB(132, 133, 157)
CurrentPosLabel.TextWrapped = true

UICorner_5.Parent = CurrentPosLabel

ClearCheckpointsButton.Name = "ClearCheckpointsButton"
ClearCheckpointsButton.Parent = MainFrame
ClearCheckpointsButton.BackgroundColor3 = Color3.fromRGB(74, 76, 90)
ClearCheckpointsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClearCheckpointsButton.BorderSizePixel = 0
ClearCheckpointsButton.Position = UDim2.new(0.446180552, 0, 0.411609501, 0)
ClearCheckpointsButton.Size = UDim2.new(0.253472209, 0, 0.131926119, 0)
ClearCheckpointsButton.Font = Enum.Font.Ubuntu
ClearCheckpointsButton.Text = "Clear Saved Checkpoints"
ClearCheckpointsButton.TextColor3 = Color3.fromRGB(132, 133, 157)
ClearCheckpointsButton.TextScaled = true
ClearCheckpointsButton.TextSize = 20.000
ClearCheckpointsButton.TextWrapped = true

UICorner_6.Parent = ClearCheckpointsButton

CreditsLabel.Name = "CreditsLabel"
CreditsLabel.Parent = MainFrame
CreditsLabel.BackgroundColor3 = Color3.fromRGB(74, 76, 90)
CreditsLabel.BackgroundTransparency = 1.000
CreditsLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
CreditsLabel.BorderSizePixel = 0
CreditsLabel.Position = UDim2.new(0, 0, 0.920844316, 0)
CreditsLabel.Size = UDim2.new(1, 0, 0.0791556761, 0)
CreditsLabel.Font = Enum.Font.Ubuntu
CreditsLabel.Text = "© 2016 ROK INC"
CreditsLabel.TextColor3 = Color3.fromRGB(132, 133, 157)
CreditsLabel.TextScaled = true
CreditsLabel.TextSize = 14.000
CreditsLabel.TextStrokeColor3 = Color3.fromRGB(132, 133, 157)
CreditsLabel.TextWrapped = true

UICorner_7.Parent = CreditsLabel

RebirthFarmButton.Name = "RebirthFarmButton"
RebirthFarmButton.Parent = MainFrame
RebirthFarmButton.BackgroundColor3 = Color3.fromRGB(74, 76, 90)
RebirthFarmButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
RebirthFarmButton.BorderSizePixel = 0
RebirthFarmButton.Position = UDim2.new(0.446180552, 0, 0.598944604, 0)
RebirthFarmButton.Size = UDim2.new(0.524305582, 0, 0.131926119, 0)
RebirthFarmButton.Font = Enum.Font.Ubuntu
RebirthFarmButton.Text = "Start Rebirth Farming"
RebirthFarmButton.TextColor3 = Color3.fromRGB(132, 133, 157)
RebirthFarmButton.TextScaled = true
RebirthFarmButton.TextSize = 20.000
RebirthFarmButton.TextWrapped = true

UICorner_8.Parent = RebirthFarmButton

SaveCurrentPosButton.Name = "SaveCurrentPosButton"
SaveCurrentPosButton.Parent = MainFrame
SaveCurrentPosButton.BackgroundColor3 = Color3.fromRGB(74, 76, 90)
SaveCurrentPosButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SaveCurrentPosButton.BorderSizePixel = 0
SaveCurrentPosButton.Position = UDim2.new(0.717013896, 0, 0.411609501, 0)
SaveCurrentPosButton.Size = UDim2.new(0.253472209, 0, 0.131926119, 0)
SaveCurrentPosButton.Font = Enum.Font.Ubuntu
SaveCurrentPosButton.Text = "Save Current Pos For Checkpoint"
SaveCurrentPosButton.TextColor3 = Color3.fromRGB(132, 133, 157)
SaveCurrentPosButton.TextScaled = true
SaveCurrentPosButton.TextSize = 20.000
SaveCurrentPosButton.TextWrapped = true

UICorner_9.Parent = SaveCurrentPosButton

Template.Name = "Template"
Template.Parent = ScreenGui.MainFrame
Template.AnchorPoint = Vector2.new(0.5, 0.5)
Template.BackgroundColor3 = Color3.fromRGB(78, 77, 95)
Template.BorderColor3 = Color3.fromRGB(0, 0, 0)
Template.BorderSizePixel = 0
Template.Position = UDim2.new(0.458715558, 0, 0.092128098, 0)
Template.Size = UDim2.new(0.321180552, 0, 0.0949868038, 0)

UICorner_10.Parent = Template

TextLabel_3.Parent = Template
TextLabel_3.BackgroundColor3 = Color3.fromRGB(82, 82, 99)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(-0.000299154752, 0, 0, 0)
TextLabel_3.Size = UDim2.new(INF, 0, INF, 0)
TextLabel_3.Font = Enum.Font.Ubuntu
TextLabel_3.Text = "#1: 6,6,6"
TextLabel_3.TextColor3 = Color3.fromRGB(132, 133, 157)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextStrokeColor3 = Color3.fromRGB(132, 133, 157)
TextLabel_3.TextWrapped = true

UICorner_11.Parent = TextLabel_3

SetClipboardSavedButton.Name = "SetClipboardSavedButton"
SetClipboardSavedButton.Parent = MainFrame
SetClipboardSavedButton.BackgroundColor3 = Color3.fromRGB(74, 76, 90)
SetClipboardSavedButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SetClipboardSavedButton.BorderSizePixel = 0
SetClipboardSavedButton.Position = UDim2.new(0.446180552, 0, 0.753628016, 0)
SetClipboardSavedButton.Size = UDim2.new(0.524305582, 0, 0.131926119, 0)
SetClipboardSavedButton.Font = Enum.Font.Ubuntu
SetClipboardSavedButton.Text = "Save Checkpoints to Clipboard"
SetClipboardSavedButton.TextColor3 = Color3.fromRGB(132, 133, 157)
SetClipboardSavedButton.TextScaled = true
SetClipboardSavedButton.TextSize = 20.000
SetClipboardSavedButton.TextWrapped = true

UICorner_12.Parent = SetClipboardSavedButton

ImageButton.Parent = ScreenGui
ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.161, 0, 0.846, 0)
ImageButton.Size = UDim2.new(0.0784313753, 0, 0.17582418, 0)
ImageButton.Image = "rbxassetid://86374083744758"

UICorner_13.CornerRadius = UDim.new(0, 20)
UICorner_13.Parent = ImageButton

-- Scripts:

local function SUVIQN_fake_script() -- MainFrame.GUIHandler 
	local script = Instance.new('LocalScript', MainFrame)

	local UserInputService = game:GetService("UserInputService")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local TweenService = game:GetService("TweenService")
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local HttpService = game:GetService("HttpService")
	
	local RebirthEvent = ReplicatedStorage:WaitForChild("RebirthEvent")
	
	local MainFrame = script.Parent
	local ClearCheckpointsButton = MainFrame.ClearCheckpointsButton
	local SaveCurrentPosButton = MainFrame.SaveCurrentPosButton
	local RebirthFarmButton = MainFrame.RebirthFarmButton
	local SetClipboardSavedButton = MainFrame.SetClipboardSavedButton
	
	local CurrentPosLabel = MainFrame.CurrentPosLabel
	local CreditsLabel = MainFrame.CreditsLabel
	
	local CheckpointsFrame = MainFrame.CheckpointsFrame
	
	local CheckpointTemplate = Template
	
	local player = Players.LocalPlayer
	
	local Character = player.Character or player.CharacterAdded:Wait()
	local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
	
	local HRPPos = Vector3.zero
	
	local currentPositions = {}
	
	local currentPos = 0
	
	local farming = false
	
	local year = os.date("*t").year
	
	local startTime = tick()
	
	function dragify(Frame)
	    local dragToggle = nil
	    local dragSpeed = 0.25
	    local dragInput = nil
	    local dragStart = nil
		local dragPos = nil
		local startPos = nil
	    local function updateInput(input)
	        local Delta = input.Position - dragStart
	       	local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			TweenService:Create(Frame, TweenInfo.new(0.20, Enum.EasingStyle.Back), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UserInputService:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
		UserInputService.InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	function updateCheckpoints()
		for _, v in pairs(CheckpointsFrame.ScrollingFrame:GetChildren()) do
			if v:IsA("Frame") then
				v:Destroy()
			end
		end
		
		for i, v in ipairs(currentPositions) do
			local frame = CheckpointTemplate:Clone()
			frame.TextLabel.Text = "#" .. i .. ": " .. tostring(v)
			
			frame.Parent = CheckpointsFrame.ScrollingFrame
		end
	end
	
	player.CharacterAdded:Connect(function(newCharacter)
		Character = newCharacter
		HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
	end)
	
	SaveCurrentPosButton.Activated:Connect(function()
		table.insert(currentPositions, HRPPos)
		
		updateCheckpoints()
	end)
	
	ClearCheckpointsButton.Activated:Connect(function()
		table.clear(currentPositions)
		
		updateCheckpoints()
	end)
	
	SetClipboardSavedButton.Activated:Connect(function()
		local string_ = currentPositions[1]
		for i, v in pairs(currentPositions) do
			if i ~= 1 then
				string_ += "," .. v
			end
		end
		setclipboard(tostring(HttpService:JSONEncode(string_)))
	end)
	
	RebirthFarmButton.Activated:Connect(function()
		farming = not farming
		
		RebirthFarmButton.Text = (farming and "Stop" or "Start") .. " Rebirth Farming"
	end)
	
	MainFrame.Parent.ImageButton.Activated:Connect(function()
		MainFrame.Visible = not MainFrame.Visible
	end)
	
	while true do
		task.wait(0.05)
		if Character and HumanoidRootPart then
			if not farming then
				HRPPos = Vector3.new(math.round(HumanoidRootPart.Position.X),math.round(HumanoidRootPart.Position.Y),math.round(HumanoidRootPart.Position.Z))
				CurrentPosLabel.Text = "HRP Pos: " .. tostring(HRPPos)
			else
				if currentPos == #currentPositions then
					RebirthEvent:FireServer()
				end
				currentPos = (currentPos == #currentPositions) and 1 or (currentPos + 1)
				
				Character:PivotTo(CFrame.new(currentPositions[currentPos]))
			end
		end
	end
	
	dragify(script.Parent)
	
	CreditsLabel.Text = "© " .. year .. " ROK INC"
	
	print("GUI Handler loaded in " .. tick() - startTime .. " seconds")
end
coroutine.wrap(SUVIQN_fake_script)()
local function ZPNBNEW_fake_script() -- ImageButton.Dragify 
	local script = Instance.new('LocalScript', ImageButton)

	--This script has been modified by MetaliumWorks (@jgfuhjkkl_2) [mw/ʍɯ]
	
	local UIS = game:GetService("UserInputService")
	function dragify2(Frame)
	    dragToggle = nil
	    dragSpeed = 0.25
	    dragInput = nil
	    dragStart = nil
	    dragPos = nil
	    function updateInput(input)
	        Delta = input.Position - dragStart
	        Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.20, Enum.EasingStyle.Back), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify2(script.Parent)
end
coroutine.wrap(ZPNBNEW_fake_script)()
