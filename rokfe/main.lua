--[[
	Free Version:
	https://www.roblox.com/catalog/4645404679/International-Fedora-Thailand
	https://www.roblox.com/catalog/3662265036/International-Fedora-Indonesia
	https://www.roblox.com/catalog/4622081834/International-Fedora-China
	https://www.roblox.com/catalog/3992084515/International-Fedora-Vietnam
	https://www.roblox.com/catalog/4819740796/Robox

	Accurate Version:
	https://www.roblox.com/catalog/14255560646/Extra-Left-Tan-Arm
	https://www.roblox.com/catalog/14255562939/Extra-Right-Tan-Arm
	https://www.roblox.com/catalog/17374846953/Extra-Right-Black-Arm
	https://www.roblox.com/catalog/17374851733/Extra-Left-Black-Arm
	https://www.roblox.com/catalog/13421786478/Extra-Torso-Blocky
]]

local rolibwaita = loadstring(game:HttpGet("https://codeberg.org/Blukez/rolibwaita/raw/branch/master/Source.lua"))()

local Window = rolibwaita:NewWindow({
	Name = "ROK FE", -- Name of window | string, required
	Keybind = "RightShift", -- Keybind to open and close this window | string, required
	UseCoreGui = false, -- Whether to use coregui / gethui as the gui parent | bool, optional
	PrintCredits = true -- Whether to print ui library credits and info in the console | bool, optional
})

local SettingsTab = Window:NewTab({
	Name = "Settings", -- Name of the tab | string, required
	Icon = "rbxassetid://7245838712" -- Icon for the tab button | string, optional
})

local MainTab = Window:NewTab({
	Name = "Main", -- Name of the tab | string, required
	Icon = "rbxassetid://7245838712" -- Icon for the tab button | string, optional
})

local SettingsSection = SettingsTab:NewSection({
	Name = "Settings", -- Name of the section | string, required
	Description = "Customize your settings before you reanimate", -- Description of the section | string, optional 
})

local MainSection = MainTab:NewSection({
	Name = "Main", -- Name of the section | string, required
	Description = "Main Stuff", -- Description of the section | string, optional 
})

Configuration = {
	ReturnOnDeath = true,
	Flinging = true,
	PresetFling = true, -- if set to false, KadeAPI.CallFling() won't do anything.
	Animations = true,
	WaitTime = 0.22,
	TeleportOffsetRadius = 20,
	NoCollisions = true,
	AntiVoiding = true,
	SetSimulationRadius = true,
	DisableCharacterScripts = true,
	RigName = "ROKFE",
	AccessoryFallbackDefaults = true,
	OverlayFakeCharacter = false,

	Hats = nil, -- Set to nil if you want to use defaults.
}

local FlingToggle = SettingsSection:NewToggle({
	Name = "Fling", -- Name of the toggle 
	Description = "Uses your server rig to fling people, use left mouse button",  -- Description of the toggle | string, optional 
	CurrentState = false, -- default state of the toggle | bool, optional
	Callback = function(value) -- code executed on interaction with the element | function,  optional
		Configuration.Flinging = value
	end,
})

local WaitTimeSlider = SettingsSection:NewSlider({
	Name = "Wait Time", -- Name of the dropdown | string, required
	Description = "The wait time in between loading and reanimating.",  -- Description of the dropdown | string, optional 
	MinMax = {"0.10", "1"}, -- the minimum and maximum states of the slider | table, required
	Increment = 0.05, -- the increment the slider increases by | number required
	CurrentValue = 0.25, -- default value | number, required
	Callback = function(value) -- code executed on interaction with the element | function,  optional
		Configuration.WaitTime = value
	end,
})

local NoCollisionToggle = SettingsSection:NewToggle({
	Name = "No Collision", -- Name of the toggle | string, required
	Description = "(May cause you to fall out of the map) Disables collisions, allowing you to click through walls",  -- Description of the toggle | string, optional 
	CurrentState = false, -- default state of the toggle | bool, optional
	Callback = function(value) -- code executed on interaction with the element | function,  optional
		Configuration.NoCollisions = value
	end,
})

local AntiVoidToggle = SettingsSection:NewToggle({
	Name = "Anti Void", -- Name of the toggle | string, required
	Description = "Prevents falling into the void by teleporting above the void",  -- Description of the toggle | string, optional 
	CurrentState = true, -- default state of the toggle | bool, optional
	Callback = function(value) -- code executed on interaction with the element | function,  optional
		Configuration.AntiVoiding = value
	end,
})

local DisableScriptsToggle = SettingsSection:NewToggle({
	Name = "Disable Character Scripts", -- Name of the toggle | string, required
	Description = "Disables server scripts on your rig to prevent interference",  -- Description of the toggle | string, optional 
	CurrentState = false, -- default state of the toggle | bool, optional
	Callback = function(value) -- code executed on interaction with the element | function,  optional
		Configuration.DisableCharacterScripts = value
	end,
})

local OverlayFakeToggle = SettingsSection:NewToggle({
	Name = "Overlay Fake Character", -- Name of the toggle | string, required
	Description = "Shows the baseparts of the client-sided rig, thus setting their Transparency to 0.5.",  -- Description of the toggle | string, optional 
	CurrentState = false, -- default state of the toggle | bool, optional
	Callback = function(value) -- code executed on interaction with the element | function,  optional
		Configuration.OverlayFakeCharacter = value
	end,
})


local ReanimateButton = MainSection:NewButton({
	Name = "Reanimate", -- Name of the button | string, required
	Description = "Reanimates your character using the configured settings",  -- Description of the button | string, optional 
	Callback = function(value) -- code executed on interaction with the element | function,  optional
		        SettingsSection:Remove()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/KadeTheExploiter/Krypton/main/Module.luau"))()
	end,
})

local CreditsButton = MainSection:NewButton({
	Name = "Credits", -- Name of the button | string, required
	Description = "View the credits",  -- Description of the button | string, optional 
	Callback = function(value) -- code executed on interaction with the element | function,  optional
		
	end,
})
