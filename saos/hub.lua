local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local TextChatService = game:GetService("TextChatService")
local generalChannel = TextChatService:WaitForChild("TextChannels").RBXGeneral

local Window = Rayfield:CreateWindow({
	Name = "Steal an Object Show Hub",
	Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
	LoadingTitle = "Steal an Object Show Hub",
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

local player = game.Players.LocalPlayer

function stealAll(rarity)
	for _, plot in pairs(workspace.Plots:GetChildren()) do
		local pp = plot.Name
		local char = player.Character or player.CharacterAdded:Wait()
		local hrp = char:WaitForChild("HumanoidRootPart")

		local myplot = workspace.Plots:FindFirstChild(player.Name)
		local mypivot = myplot.Pivot

		if plot.Name == player.Name then continue end
		for _, object in pairs(plot.Objects:GetChildren()) do
			if not plot then
				Rayfield:Notify({
					Title = "Player left",
					Content = `Player {pp} who you were stealing from left the game`,
					Duration = 3,
					Image = 0,
				})
				continue
			end
			if object:IsA("Model") and game.ReplicatedStorage.Objects:FindFirstChild(object.Name) then
				local billboard = object.Body:FindFirstChild("CharacterBillboard")
				if not billboard then continue end
				local isGood = billboard.RarityLabel.Text == rarity
				if not isGood then continue end
				local function addtobase()
					hrp.CFrame = object.PrimaryPart.CFrame
					task.wait(0.3)
					game.ReplicatedStorage.Functions.StealEvent:InvokeServer(object, true)
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
						Content = `Unable to steal {nn} from {plot.Name} after 5 attempts`,
						Duration = 3,
						Image = 0,
					})
				else
					--generalChannel:SendAsync("mine now")
				end
			end
		end
	end
end

local StealTab = Window:CreateTab("Objects", 0)

local StealAll1 = StealTab:CreateButton({
	Name = "Steal all Commons",
	Callback = function()
		stealAll("Common")
	end,
})
local StealAll2 = StealTab:CreateButton({
	Name = "Steal all Uncommons",
	Callback = function()
		stealAll("Uncommon")
	end,
})
local StealAll3 = StealTab:CreateButton({
	Name = "Steal all Rares",
	Callback = function()
		stealAll("Rare")
	end,
})
local StealAll4 = StealTab:CreateButton({
	Name = "Steal all Epics",
	Callback = function()
		stealAll("Epic")
	end,
})
local StealAll5 = StealTab:CreateButton({
	Name = "Steal all Legendarys",
	Callback = function()
		stealAll("Legendary")
	end,
})local StealAll6 = StealTab:CreateButton({
	Name = "Steal all Mythics",
	Callback = function()
		stealAll("Mythic")
	end,
})
local StealAll7 = StealTab:CreateButton({
	Name = "Steal all Secrets",
	Callback = function()
		stealAll("Secret")
	end,
})

local StealAll8 = StealTab:CreateButton({
	Name = "Steal all Specials",
	Callback = function()
		stealAll("Special")
	end,
})

local SellAll = StealTab:CreateButton({
	Name = "Sell all",
	Callback = function()
		for _, object in pairs(workspace.Plots:FindFirstChild(player.Name).Objects:GetChildren()) do
			print(`trying to sell {object.Name}`)
			local sold = game.ReplicatedStorage.Functions.SellEvent:InvokeServer(object)
			
			if not sold then
				Rayfield:Notify({
					Title = "Unable to sell",
					Content = `Unable to sell {object.Name}`,
					Duration = 2,
					Image = 0,
				}) 
			end
			task.wait(0.1)
		end
	end,
})
