local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local startTime = tick()

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local realHumanoid = character:WaitForChild("Humanoid")
local realRoot = character:WaitForChild("HumanoidRootPart")

local fakeHumanoid
local fakeRoot

if not _G.TeleportOffset then _G.TeleportOffset = Vector3.zero end
if not _G.SafeYAxis then _G.SafeYAxis = 35 end
if not _G.ReverseSleep then _G.ReverseSleep = Vector3.zero end

local camera = workspace.CurrentCamera

local speed = 20
local movementDirection = Vector3.new(0, 0, 0)

local PreviousCameraCFrame = camera.CFrame

local MouseDown = nil
local SpaceDown = nil

local KeyInputs = {
	[Enum.KeyCode.W] = {false, 0, -1},  -- Forward
	[Enum.KeyCode.A] = {false, -1, 0},  -- Left
	[Enum.KeyCode.S] = {false, 0, 1},   -- Backward
	[Enum.KeyCode.D] = {false, 1, 0}    -- Right
}

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
		texture = "12876423855", 
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
		ac0 = CFrame.new(0,0.133,0) * CFrame.fromOrientation(math.rad(0), math.rad(-180), math.rad(0)),
		ac1 = CFrame.new(0, 0.6, 0)
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
		ac1 = CFrame.new(0,0.4,0),
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

local fakeAccessories = {}

local creditsData = {
	{
		Title = "Noc",
		Text = "Noc - provided initial inspiration for ROK in 2021",
		Icon = "rbxassetid://14624363602",
		Duration = 7
	},
	{
		Title = "GenesisFE",
		Text = "GenesisFE - provided inspiration, used some of their techniques and some of their code was used",
		Icon = "rbxassetid://126577800636631",
		Duration = 5
	},
	{
		Title = "Gelatekussy",
		Text = "GelatekReanimate - used some of their techniques",
		Icon = "rbxassetid://78114933403999",
		Duration = 4
	},
	{
		Title = "KadeTheExploiter",
		Text = "Krypton Reanimate - used techniques and some of their code was used",
		Icon = "rbxassetid://95273363303236",
		Duration = 6
	},
}

local setFakeLimbs = {}
local texturesAdded = {}

local hats = {}

local whirSounds = {
	9116982661,
	9116982909,
	9116979302,
}

function createFakeRig()
	print("discord.gg/vJBTAxvHG3")

	fakeRig = Instance.new("Model")

	fakeRig.Name = "FakeRig"
	fakeRig.Parent = workspace

	local humanoid = Instance.new("Humanoid")
	humanoid.Parent = fakeRig

	fakeHumanoid = humanoid

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

	character.PrimaryPart.Anchored = true

	--sound:Play()

	for _, limb in limbs do
		if createdLimbs[limb] then continue end
		table.insert(createdLimbs, limb)

		local fakeLimb = Instance.new("Part")

		local name = limb.part["Name"]

		fakeLimb.Size = limb.Size
		fakeLimb.Name = name
		--fakeLimb.Transparency = 1
		fakeLimb.Parent = fakeRig

		--fakeLimb.Anchored = true

		local spawnPos = limbSpawnPos[name]
		--print("Spawning limb:", name, "at position:", limbSpawnPos[name])

		fakeLimb.CFrame = spawnPos--CFrame.new(spawnPos.X + math.random(-5, 5), spawnPos.Y + math.random(5, 15), spawnPos.Z + math.random(-5, 5))

		table.insert(fakeLimbs, fakeLimb)

		--[[local tween = TweenService:Create(fakeLimb, TweenInfo.new(5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {CFrame = spawnPos})
		tween:Play()
		
		tween.Completed:Connect(function()
			fakeLimb.Anchored = false
		end)
		
		if name == "Head" then
			local decal = Instance.new("Decal")

			decal.Face = Enum.NormalId.Front
			decal.Texture = "rbxasset://textures/face.png"
			decal.Parent = fakeLimb
		end]]
	end

	local hrp = fakeRig.Torso:Clone()
	hrp.Name = "HumanoidRootPart"
	hrp.Parent = fakeRig

	fakeRoot = hrp

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

function GetRandomRadius() 
	return Vector3.new(math.random(-12,12), 0.5, math.random(-12,12))
end

if not workspace:FindFirstChild("FakeRig") then
	createFakeRig()

	for _, v in pairs(fakeRig:GetChildren()) do
		if v:IsA("BasePart") then
			v.Transparency = 1
		end
	end

	local ownedAccessorys = 0

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
				local textureId = accessory:WaitForChild("Handle"):WaitForChild("SpecialMesh").TextureId
				if table.find(texturesAdded, textureId) then continue end

				table.insert(texturesAdded, textureId)

				ownedAccessorys += 1

				local fakeAccessory = accessory:Clone()
				fakeAccessory.Parent = fakeRig

				local handle = fakeAccessory:WaitForChild("Handle")
				local aWeld = handle:WaitForChild("AccessoryWeld")
				local mesh = handle:WaitForChild("SpecialMesh")

				handle.CFrame = v.Part1.CFrame

				table.insert(setFakeLimbs, accessory)

				handle.CanCollide = false

				aWeld.Part0 = v.Part1
				aWeld.Part1 = handle

				aWeld.C0 = joint.ac0
				aWeld.C1 = joint.ac1
				
				table.insert(hats, {real = accessory, fake = fakeAccessory})
			end
		end
	end

	if ownedAccessorys < #joints and ownedAccessorys ~= 0 then
		sendNotification({
			Title = "Missing Accessories!",
			Text = "You are missing " .. #joints - ownedAccessorys .. " accessories!",
			Icon = "rbxassetid://86374083744758",
		})
	end

	if ownedAccessorys == 0 then
		sendNotification({
			Title = "Missing All Accessories!",
			Text = "You are missing all accessories needed! The script will NOT work without atleast one them!!",
			Icon = "rbxassetid://86374083744758",
		})

		return
	end

	local Bindable = Instance.new("BindableFunction")

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
else
	fakeRig = workspace.FakeRig
	fakeRoot = fakeRig.HumanoidRootPart
	fakeHumanoid = fakeRig.Humanoid
end

function IsNetworkOwner(Part)
	return Part and Part.ReceiveAge == 0
end

function connectHats(data)
	local real = data[1]
	local fake = data[2]
	
	local realHandle = real:WaitForChild("Handle")
	local fakeHandle = fake:WaitForChild("Handle")
	
	local realWeld = real:WaitForChild("AccessoryWeld")
	local fakeWeld = fake:WaitForChild("AccessoryWeld")
	
	local part0 = realWeld.Part0
	local part1 = realWeld.Part1
	
	print(IsNetworkOwner(part0))
	
	if IsNetworkOwner(part0) then
		local Part1Magnitude = part1.Size.Magnitude
		local Part1Velocity = part1.AssemblyLinearVelocity * Part1Magnitude
		local CalculatedVel = Part1Velocity * 2.5

		local ClampedAxisY = math.clamp(Part1Velocity.Y, _G.SafeYAxis, 512)
		local Velocity = Vector3.new(CalculatedVel.X, ClampedAxisY, CalculatedVel.Z)

		local CFrameOffset = part1.CFrame * realWeld.C0

		part0.AssemblyLinearVelocity = Velocity
		part0.AssemblyAngularVelocity = part1.AssemblyAngularVelocity
		part0.CFrame = fakeWeld.Part0

		--realWeld.C0 = fakeWeld.C0
	end
end

function onInputBegan(input, gameProcessed, bool)
	if gameProcessed then return end

	--[[if input.KeyCode == Enum.KeyCode.W then
		movementDirection += Vector3.new(0, 0, 1)
	elseif input.KeyCode == Enum.KeyCode.S then
		movementDirection += Vector3.new(0, 0, -1)
	elseif input.KeyCode == Enum.KeyCode.A then
		movementDirection += Vector3.new(-1, 0, 0)
	elseif input.KeyCode == Enum.KeyCode.D then
		movementDirection += Vector3.new(1, 0, 0)
	end]]

	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		print("Mouse down")
		MouseDown = bool
	end

	if input.KeyCode == Enum.KeyCode.Space then
		print("Space down")
		SpaceDown = bool
	end

	for MyInput, Table in KeyInputs do
		if input.KeyCode == MyInput then
			Table[1] = bool
		end
	end
end

function SetCameraTarget()
	PreviousCameraCFrame = camera.CFrame
	camera.CameraSubject = fakeHumanoid

	RunService.PreRender:Wait()
	camera.CFrame = PreviousCameraCFrame
end

function dead()
	print("Died")
	_G.dead = true
end

function onPreSimulation()
	--[[if movementDirection.Magnitude > 0 then
		local forward = fakeRoot.CFrame.LookVector
		local right = fakeRoot.CFrame.RightVector
		local moveVector = (forward * movementDirection.Z) + (right * movementDirection.X)

		if moveVector.Magnitude > 0 then
			moveVector = moveVector.Unit
			local newPosition = fakeRoot.CFrame.Position + (moveVector * speed * RunService.RenderStepped:Wait())
			fakeRoot:PivotTo(CFrame.new(newPosition) * CFrame.Angles(0, fakeRoot.CFrame:ToEulerAnglesYXZ()))
		end
	end]]

	local Shiftlock = UserInputService.MouseBehavior == Enum.MouseBehavior.LockCenter
	local MovementVector = Vector3.zero

	fakeHumanoid.AutoRotate = not Shiftlock
	fakeHumanoid.Jump = SpaceDown

	for input, Table in KeyInputs do
		if Table[1] then
			local X, Z = MovementVector.X, MovementVector.Z

			MovementVector = Vector3.new(X + Table[2], 0, Z + Table[3])
		end
	end

	if Shiftlock then
		local LookVector = camera.CFrame.LookVector

		fakeRoot.CFrame = CFrame.new(fakeRoot.Position) * CFrame.Angles(0, math.atan2(-LookVector.X, -LookVector.Z), 0)
	end
	
	fakeHumanoid:Move(MovementVector, true)
end

function OnPostSimulation()
	--StarterGui:SetCore("ResetButtonCallback", RespawnEvent)
	if _G.dead == true then return end
	_G.ReverseSleep = Vector3.new(0.0075 * math.sin(os.clock() * 7), 0, 0.0065 * math.cos(os.clock() * 3))
	_G.SafeYAxis = 35 - 3 * math.sin(os.clock() * 10)

	for _, data in hats do
		connectHats(data)
	end
end

function characterAdded()
	character = player.Character
	
	for _, data in hats do
		local name = data[2].Name
		for _, v in pairs(character:GetChildren()) do
			if v.Name == name then
				data[1] = v
			end
		end
	end
	
	_G.dead = false

	SetCameraTarget()

	realHumanoid = character:WaitForChild("Humanoid")
	realRoot = character:WaitForChild("HumanoidRootPart")

	realHumanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
	realHumanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
	
	_G.TeleportOffset = realRoot.Position + GetRandomRadius()

	realRoot.AssemblyLinearVelocity = Vector3.zero
	realRoot.AssemblyAngularVelocity = Vector3.zero
	realRoot.CFrame = CFrame.new(_G.TeleportOffset)
	
	task.wait(0.1)

	realHumanoid:ChangeState(Enum.HumanoidStateType.Dead)
	character:BreakJoints()
end

realHumanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
realHumanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, true)
realHumanoid:ChangeState(Enum.HumanoidStateType.Dead)

SetCameraTarget()

UserInputService.InputBegan:Connect(function(input, gameProcessed)
	onInputBegan(input, gameProcessed, true)
end)
UserInputService.InputEnded:Connect(function(input, gameProcessed)
	onInputBegan(input, gameProcessed, nil)
end)

RunService.PreSimulation:Connect(onPreSimulation)
RunService.PostSimulation:Connect(OnPostSimulation)
player.CharacterAdded:Connect(characterAdded)
realHumanoid.Died:Connect(dead)

print("ROK FE loaded in " .. tick() - startTime .. " seconds!")

--[[RunService.Heartbeat:Connect(function(delta)
	for _, data in fakehandlesrealhandles do
		local fake = data[1]
		local real = data[2]
		real.CFrame = fake.CFrame
	end
end)]]
