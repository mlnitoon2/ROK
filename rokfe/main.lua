print("discord.gg/vJBTAxvHG3")

task.wait(5)

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local startTime = tick()

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local camera = workspace.CurrentCamera

local R6parts={ 
	head={Name="Head"},
	torso={Name="Torso"},
	root={Name="HumanoidRootPart"},
	leftArm={Name="Left Arm"},
	rightArm={Name="Right Arm"},
	leftLeg={Name="Left Leg"},
	rightLeg={Name="Right Leg"}
}

local limbs = {
	{
		part = R6parts.rightArm,
		meshid = "90736849096372",
		texture = "79186624401216",
		jointname = "Right Shoulder",
		Size = Vector3.new(1,2,1)
	},
	{
		part = R6parts.leftArm,
		meshid = "14255522247",
		texture = "14255543546",
		jointname = "Left Shoulder",
		Size = Vector3.new(1,2,1)
	},
	{
		part = R6parts.rightLeg,
		meshid = "11159370334",
		texture = "11159284657", 
		jointname = "Right Hip",
		Size = Vector3.new(1,2,1)
	},
	{
		part = R6parts.leftLeg,
		meshid = "11159370334", 
		texture = "11159285454", 
		jointname = "Left Hip",
		Size = Vector3.new(1,2,1)
	},
	{
		part = R6parts.head,
		meshid = "12876378389", 
		texture = "11159285454", 
		jointname = "Neck",
		Size = Vector3.new(2,1,1)
	},
	{
		part = R6parts.torso,
		meshid = "127552124837034", 
		texture = "131014325980101", 
		jointname = "RootJoint",
		Size = Vector3.new(2,2,1)
	},
}

local joints = {
	{
		Part0 = R6parts.torso,
		Part1 = R6parts.rightArm,
		jointname = "Right Shoulder",
		c0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0), 
		c1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0),
		ac0 = CFrame.new(-1,0,0) * CFrame.fromOrientation(math.rad(90), math.rad(-90), math.rad(0)),
		ac1 = CFrame.new(0,1,0) * CFrame.fromOrientation(math.rad(0), math.rad(90), math.rad(0))
	},
	{
		Part0 = R6parts.torso,
		Part1 = R6parts.leftArm,
		jointname = "Left Shoulder",
		c0 = CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0),
		c1 = CFrame.new(0.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0),
		ac0 = CFrame.new(-1,0,0) * CFrame.fromOrientation(math.rad(90), math.rad(-90), math.rad(0)),
		ac1 = CFrame.new(0,1,0) * CFrame.fromOrientation(math.rad(0), math.rad(90), math.rad(0))
	},
	{
		Part0 = R6parts.root,
		Part1 = R6parts.torso, 
		jointname = "RootJoint",
		c0 = CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0),
		c1 = CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0),
		ac0 = CFrame.new(0,0.6,0)
	},
	{
		Part0 = R6parts.torso,
		Part1 = R6parts.rightLeg,
		jointname = "Right Hip",
		c0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0),
		c1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0),
		ac0 = CFrame.new(0.5,0,0) * CFrame.fromOrientation(math.rad(90), math.rad(90), math.rad(0)),
		ac1 = CFrame.new(0,0.6,0) * CFrame.fromOrientation(math.rad(0), math.rad(90), math.rad(0))
	},
	{
		Part0 = R6parts.torso, 
		Part1 = R6parts.leftLeg,
		jointname = "Left Hip", 
		c0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0), 
		c1 = CFrame.new(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0),
		ac0 = CFrame.new(0.5,0,0) * CFrame.fromOrientation(math.rad(90), math.rad(90), math.rad(0)),
		ac1 = CFrame.new(0,0.6,0) * CFrame.fromOrientation(math.rad(0), math.rad(90), math.rad(0))
	},
	{
		Part0 = R6parts.torso,
		Part1 = R6parts.head,
		jointname = "Neck",
		c0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0),
		c1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0),
		ac0 = CFrame.new(0,0.5,0),
	},
}

local limbSpawnPos = {
	["Head"] = CFrame.new(3, 4.5, 27.5),
	["Torso"] = CFrame.new(3, 3, 27.5),
	["Left Arm"] = CFrame.new(1.5, 3, 27.5),
	["Right Arm"] = CFrame.new(4.5, 3, 27.5),
	["Left Leg"] = CFrame.new(2.5, 1, 27.5),
	["Right Leg"] = CFrame.new(3.5, 1, 27.5)
}

local fakehandlesrealhandles = {}

character.Archivable = true

local fakeRig

local fakeLimbs = {}

local whirSounds = {
	9116982661,
	9116982909,
	9116979302,
}

function createFakeRig()
	fakeRig = Instance.new("Model")

	fakeRig.Name = "FakeRig"
	fakeRig.Parent = workspace
	
	local humanoid = Instance.new("Humanoid")
	humanoid.Parent = fakeRig

	local s = Instance.new("Shirt")
	s.Parent = fakeRig

	local p = Instance.new("Pants")
	p.Parent = fakeRig

	local sg = Instance.new("ShirtGraphic")
	sg.Parent = fakeRig

	local health = Instance.new("Script")
	health.Name = "Health"
	health.Parent = fakeRig

	local animate = Instance.new("Script")
	animate.Name = "Animate"
	animate.Parent = fakeRig

	local createdLimbs = {}
	
	local sound = Instance.new("Sound")
	sound.SoundId = "rbxassetid://" .. tostring(whirSounds[math.random(1, #whirSounds)])
	
	sound.Parent = fakeRig
	
	player.Character = fakeRig

	camera.CameraSubject = fakeRig.Humanoid
	
	sound:Play()

	for _, limb in limbs do
		if createdLimbs[limb] then continue end
		local fakeLimb = Instance.new("Part")
		
		local name = limb.part["Name"]

		fakeLimb.Size = limb.Size
		fakeLimb.Name = name
		fakeLimb.Parent = fakeRig
		
		fakeLimb.Anchored = true
		
		local spawnPos = limbSpawnPos[name]
		
		fakeLimb.CFrame = CFrame.new(spawnPos.X + math.random(-5, 5), spawnPos.Y + math.random(5, 15), spawnPos.Z + math.random(-5, 5))
		
		local tween = TweenService:Create(fakeLimb, TweenInfo.new(5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {CFrame = spawnPos})
		tween:Play()
		
		tween.Completed:Connect(function()
			fakeLimb.Anchored = false
		end)
		
		if name == "Head" then
			local decal = Instance.new("Decal")

			decal.Face = Enum.NormalId.Front
			decal.Texture = "rbxasset://textures/face.png"
			decal.Parent = fakeLimb
		end

		table.insert(fakeLimbs, fakeLimb)
		table.insert(createdLimbs, limb)
	end
	
	local hrp = fakeRig.Torso:Clone()
	hrp.Name = "HumanoidRootPart"
	
	for _, joint in joints do
		local part0name = joint.Part0["Name"]
		local part1name = joint.Part1["Name"]
		
		local part0 = fakeRig:FindFirstChild(part0name)
		local part1 = fakeRig:FindFirstChild(part1name)
		
		if part0 == nil or part1 == nil then continue end
		
		local jointname = joint.jointname
		
		local motor6d = Instance.new("Motor6D")
		motor6d.Name = jointname
		
		motor6d.Part0 = part0
		motor6d.Part1 = part1
		
		motor6d.C0 = joint.c0
		motor6d.C1 = joint.c1
		
		motor6d.Parent = part0
	end
end

createFakeRig()

--[[for _, v in pairs(fakeRig:GetChildren()) do
	if v:IsA("BasePart") or v:IsA("Decal") then
		v.Transparency = 1
	elseif v:IsA("Accessory") then
		v:Destroy()
	end
end]]

function sendNotification(...)
	game:GetService("StarterGui"):SetCore("SendNotification", ...)
end
function doesntSupportNotification()
	sendNotification({
		Title = "Get a different executor :P",
		Text = "Your executor doesn't support setclipboard!",
		Icon = "rbxassetid://86374083744758",
	})
end

local ownedAccessorys = 0

local setFakeLimbs = {}

for _, v in pairs(fakeRig.Torso:GetChildren()) do
	if not v:IsA("Motor6D") then continue end
	
	for _, joint in joints do
		if joint.jointname ~= v.Name then continue end
		
		for _, accessory in pairs(character:GetChildren()) do
			if not accessory:IsA("Accessory") then continue end
			
			if table.find(setFakeLimbs, accessory) then continue end
			
			for _, v in limbs do
				if v.jointname == joint.jointname then
					limb = v
				end
			end
			
			if accessory:WaitForChild("Handle"):WaitForChild("SpecialMesh").MeshId ~= "rbxassetid://" .. limb.meshid then continue end 
			
			ownedAccessorys += 1
			
			local fakeAccessory = accessory:Clone()
			fakeAccessory.Parent = fakeRig

			local handle = fakeAccessory:WaitForChild("Handle")
			local aWeld = handle:WaitForChild("AccessoryWeld")
			local mesh = handle:WaitForChild("SpecialMesh")
			
			if accessory:WaitForChild("Handle"):WaitForChild("SpecialMesh").TextureId ~= "rbxassetid://" .. limb.texture then continue end 
			
			handle.CFrame = v.Part1.CFrame
			
			table.insert(setFakeLimbs, accessory)
			
			handle.CanCollide = false
			
			aWeld.Part0 = v.Part1
			aWeld.Part1 = handle
			
			aWeld.C0 = joint.ac0
			aWeld.C1 = joint.ac1
		end
	end
end

--[[for _, v in pairs(character:GetDescendants()) do
	if not v:IsA("Motor6D") then continue end
	
	for _, joint in joints do
		if joint.jointname ~= v.Name then continue end
		
		for _, accessory in pairs(character:GetChildren()) do
			if not accessory:IsA("Accessory") then continue end
			
			local handle = accessory:WaitForChild("Handle")
			local weld = handle:FindFirstChild("AccessoryWeld")

			local mesh

			if handle:IsA("MeshPart") then
				mesh = handle
			elseif handle:FindFirstChildOfClass("SpecialMesh") then
				mesh = handle:FindFirstChildOfClass("SpecialMesh")
			else
				continue
			end

			if not mesh then continue end
			
			local limb

			for _, v in limbs do
				if v.jointname == joint.jointname then
					limb = v
				end
			end
			if mesh.MeshId ~= "rbxassetid://" .. limb.meshid then continue end 
			
			ownedAccessorys += 1
			local fakeAccessory = accessory:Clone()
			fakeAccessory.Parent = fakeRig

			local fakeHandle = fakeAccessory.Handle
			local fakeWeld = fakeHandle.AccessoryWeld

			local parent = v.Parent--fakeRig:FindFirstChild(v.Parent.Name)

			if not parent then
				warn("Can't find parent")

				local Bindable = Instance.new("BindableFunction")
				
				function Copy()
					if setclipboard then
						setclipboard("https://discord.gg/3Qr97C4BDn")
					else
						doesntSupportNotification()
					end
					Bindable:Destroy()
				end

				Bindable.OnInvoke = Copy

				sendNotification({
					Title = "An error occured!",
					Text = "Error occured! Error code [1]",
					Icon = "rbxassetid://86374083744758",
					Duration = 10,
					Callback = Bindable,
					Button1 = "Report it here"
				})
				return
			end

			fakeHandle.CFrame = parent:FindFirstChild(joint.jointname).Part1.CFrame

			fakeWeld.Part0 = fakeHandle
			fakeWeld.Part1 = parent:FindFirstChild(joint.jointname).Part1

			fakeWeld.C0 = joint.c0

			table.insert(fakehandlesrealhandles, {fakeHandle, handle})
		end
	end
end]]

if ownedAccessorys < #joints then
	sendNotification({
		Title = "Missing Accessories!",
		Text = "You are missing " .. #joints - ownedAccessorys .. " accessories!",
		Icon = "rbxassetid://86374083744758",
	})
end

print("ROK FE loaded in " .. tick() - startTime .. " seconds!")

local Bindable = Instance.new("BindableFunction")

local creditsData = {
	{
		Title = "GenesisFE",
		Text = "GenesisFE - inspiration and help (I borrowed some of their code)",
		Icon = "rbxassetid://126577800636631",
		Duration = 6
	},
	{
		Title = "GelatekReanimate",
		Text = "GelatekReanimate - helping (I borrowed some of their code)",
		Icon = "rbxassetid://78114933403999",
		Duration = 6
	},
	{
		Title = "Noc",
		Text = "Noc - inspiration",
		Icon = "rbxassetid://14624363602",
		Duration = 6
	},
}

local function Credits()
	for i, v in ipairs(creditsData) do
		sendNotification(v)
		task.wait(1)
	end
	Bindable:Destroy()
end
Bindable.OnInvoke = Credits

sendNotification({
	Title = "Loaded!",
	Text = "ROK FE loaded in " .. math.round(tick() - startTime) .. " seconds!",
	Icon = "rbxassetid://86374083744758",
	Callback = Bindable,
	Button1 = "Credits"
})

task.wait(1)

local Bindable2 = Instance.new("BindableFunction")

function Copy()
	if setclipboard then
		setclipboard("https://discord.gg/3Qr97C4BDn")
	else
		doesntSupportNotification()
	end
	Bindable:Destroy()
end

Bindable2.OnInvoke = Copy

sendNotification({
	Title = "Join our discord server!",
	Text = "Click copy to get the invite link to our server!",
	Icon = "rbxassetid://86374083744758",
	Duration = 10,
	Callback = Bindable2,
	Button1 = "Copy"
})

--[[RunService.Heartbeat:Connect(function(delta)
	for _, data in fakehandlesrealhandles do
		local fake = data[1]
		local real = data[2]
		real.CFrame = fake.CFrame
	end
end)]]
