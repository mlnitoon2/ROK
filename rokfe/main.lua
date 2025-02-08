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
	
	Hats = nil, -- Set to nil if you want to use defaults.
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/KadeTheExploiter/Krypton/main/Module.luau"))()
