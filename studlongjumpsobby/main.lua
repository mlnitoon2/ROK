local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local RebirthEvent = ReplicatedStorage:WaitForChild("RebirthEvent")

local MainFrame = script.Parent
local ClearCheckpointsButton = MainFrame.ClearCheckpointsButton
local SaveCurrentPosButton = MainFrame.SaveCurrentPosButton
local RebirthFarmButton = MainFrame.RebirthFarmButton

local CurrentPosLabel = MainFrame.CurrentPosLabel
local CreditsLabel = MainFrame.CreditsLabel

local CheckpointsFrame = MainFrame.CheckpointsFrame

local CheckpointTemplate = script.Template

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

RebirthFarmButton.Activated:Connect(function()
	farming = not farming
	
	RebirthFarmButton.Text = (farming and "Stop" or "Start") .. " Rebirth Farming"
end)

while true do
	task.wait(0)
	if Character and HumanoidRootPart then
		if not farming then
			HRPPos = Vector3.new(math.round(HumanoidRootPart.Position.X),math.round(HumanoidRootPart.Position.Y),math.round(HumanoidRootPart.Position.Z))
			CurrentPosLabel.Text = "HRP Pos: " .. tostring(HRPPos)
		else
			currentPos = (currentPos >= #currentPositions) and 1 or (currentPos + 1)
			
			task.wait(0.1)
			Character:PivotTo(CFrame.new(currentPositions[currentPos]))
		end
	end
end

dragify(script.Parent)

CreditsLabel.Text = "© " .. year .. " ROK INC"

print("GUI Handler loaded in " .. tick() - startTime .. " seconds")
