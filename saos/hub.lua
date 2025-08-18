local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
	Name = "Steal an Object Show Hub",
	Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
	LoadingTitle = "Steal an Object Show",
	LoadingSubtitle = "by ROK",
	ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
	Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

	ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

	DisableRayfieldPrompts = false,
	DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "SAOS Hub"
	},

	Discord = {
		Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
		Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
		RememberJoins = true -- Set this to false to make them join the discord every time they load it up
	},

	KeySystem = false,
})

local repeatAmounts = 5

function stealAll()
	for _, plot in pairs(workspace.Plots:GetChildren()) do
		local plr = game.Players.LocalPlayer
		local char = plr.Character or plr.CharacterAdded:Wait()
		local hrp = char:WaitForChild("HumanoidRootPart")

		local myplot = workspace.Plots:FindFirstChild(plr.Name)
		local mypivot = myplot.Pivot

		if plot.Name == plr.Name then continue end
		for _, object in pairs(plot.Objects:GetChildren()) do
			if object:IsA("Model") and game.ReplicatedStorage.Objects:FindFirstChild(object.Name) then
				local billboard = object.Body:FindFirstChild("CharacterBillboard")
				if not billboard then continue end
				local isGood = billboard.RarityLabel.Text == "Secret" or billboard.RarityLabel.Text == "Special"
				if not isGood then continue end
				local function addtobase()
					hrp.CFrame = object.PrimaryPart.CFrame
					task.wait(0.3)
					game.ReplicatedStorage.Functions.StealEvent:InvokeServer(object)
					task.wait(0.3)
					hrp.CFrame = mypivot.CFrame * CFrame.new(0, 3, 0)
					task.wait(0.3)
				end

				local nn = object.Name
				
				local attempts = 0
				local failedToAdd = false

				repeat
					addtobase()
					attempts += 1
				until myplot.Objects:FindFirstChild(nn) or attempts == repeatAmounts

				if not myplot.Objects:FindFirstChild(nn) then
					failedToAdd = true
				end
				
				if failedToAdd then
					Rayfield:Notify({
						Title = "Unable to steal",
						Content = `Unable to steal {nn} after 5 attempts`,
						Duration = 1,
						Image = 0,
					})
				end
			end
		end
	end
end

local StealTab = Window:CreateTab("Stealing", 0)

local StealSection = StealTab:CreateSection("Stealing")

local Button = StealTab:CreateButton({
	Name = "Steal all Secrets/Specials",
	Callback = function()
		stealAll()
	end,
})
