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
	AccessoryFallbackDefaults = true,
	OverlayFakeCharacter = false,
	
	Hats = {
	["Right Arm"] = {
		{Texture = "14255544465", Mesh = "14255522247", Name = "RARM", Offset = CFrame.Angles(0, 0, math.rad(90))},
		{Texture = "4645402630", Mesh = "3030546036", Name = "International Fedora", Offset = CFrame.Angles(math.rad(-90), 0, math.rad(90))}
	},

	["Left Arm"] = {
		{Texture = "14255544465", Mesh = "14255522247", Name = "LARM", Offset = CFrame.Angles(0, 0, math.rad(90))},
		{Texture = "3650139425", Mesh = "3030546036", Name = "International Fedora", Offset = CFrame.Angles(math.rad(-90), 0, math.rad(-90))}
	},

	["Right Leg"] = {
		{Texture = "17374768001", Mesh = "17374767929", Name = "Accessory (RARM)", Offset = CFrame.Angles(0, 0, math.rad(90))},
		{Texture = "4622077774", Mesh = "3030546036", Name = "International Fedora", Offset = CFrame.Angles(math.rad(-90), 0, math.rad(90))}
	},

	["Left Leg"] = {
		{Texture = "17374768001", Mesh = "17374767929", Name = "Accessory (LARM)", Offset = CFrame.Angles(0, 0, math.rad(90))},
		{Texture = "3860099469", Mesh = "3030546036", Name = "InternationalFedora", Offset = CFrame.Angles(math.rad(-90), 0, math.rad(-90))}
	},	

	["Torso"] = {
		{Texture = "131014325980101", Mesh = "127552124837034", Name = "Accessory (Toorso)", Offset = CFrame.new(0,0.133,0) * CFrame.fromOrientation(math.rad(0), math.rad(-180), math.rad(0))},
		{Texture = "4819722776", Mesh = "4819720316", Name = "MeshPartAccessory", Offset = CFrame.Angles(0, 0, math.rad(-15))}
	},
}, -- Set to nil if you want to use defaults.
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/KadeTheExploiter/Krypton/main/Module.luau"))()
