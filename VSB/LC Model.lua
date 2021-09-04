-- h/link  : load script in server side
-- hl/link : load script in client side

local Player = game:GetService("Players").ItzNotShadow01
local Character = Player.Character
local mouse = c/NLS([[
	print(game.Players.LocalPlayer:GetMouse())
]], game.Players.ItzNotShadow01.PlayerGui)
local Mouse = mouse
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Humanoid = Character.Humanoid
RootPart = Character.HumanoidRootPart
Torso = Character.Torso
Head = Character.Head
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart.RootJoint
Neck = Torso.Neck
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
MATHR = math.random
FLOOR = math.floor

function ClerpHSC(p170, p171, p172)
	local v4067 = 1
	if 5 > p172 then
		v4067 = p172 * HyperThrot
		local v4071 = math.clamp(v4067, 0, 1)
		if v4071 then
			v4071 = 1
		end
		return p170:lerp(p171, v4071)
	end
end

function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end

local S = IT("Sound")

function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.EmitterSize = 100
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id=" .. ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat
				wait(1)
			until NEWSOUND.Playing == false
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id=" .. MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id=" .. TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function WACKYEFFECT(Table)
	local TYPE = Table.EffectType or "Sphere"
	local SIZE = Table.Size or VT(1, 1, 1)
	local ENDSIZE = Table.Size2 or VT(0, 0, 0)
	local TRANSPARENCY = Table.Transparency or 0
	local ENDTRANSPARENCY = Table.Transparency2 or 1
	local CFRAME = Table.CFrame or Torso.CFrame
	local MOVEDIRECTION = Table.MoveToPos or nil
	local ROTATION1 = Table.RotationX or 0
	local ROTATION2 = Table.RotationY or 0
	local ROTATION3 = Table.RotationZ or 0
	local MATERIAL = Table.Material --or "Neon"
	local COLOR = Table.Color or C3(1, 1, 1)
	local TIME = Table.Time or 45
	local SOUNDID = Table.SoundID or nil
	local SOUNDPITCH = Table.SoundPitch or nil
	local SOUNDVOLUME = Table.SoundVolume or nil
	local USEBOOMERANGMATH = Table.UseBoomerangMath or false
	local BOOMERANG = Table.Boomerang or 0
	local SIZEBOOMERANG = Table.SizeBoomerang or 0
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND
		local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1, 1, 1), true)
		EFFECT.Color = COLOR
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		local MSH
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh", EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0, 0, -SIZE.X / 8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X, SIZE.X, 0.1), VT(0, 0, 0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Star" then 
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "2760116123", "", SIZE, VT(0,0,0))   	
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "450656451", "", SIZE, VT(0, 0, 0))
		end
		coroutine.resume(coroutine.create(function()
			if MSH ~= nil then
				local BOOMR1 = 1 + BOOMERANG / 50
				local BOOMR2 = 1 + SIZEBOOMERANG / 50
				local MOVESPEED = nil
				if MOVEDIRECTION ~= nil then
					MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
				end
				local GROWTH
				if USEBOOMERANGMATH == true then
					GROWTH = (SIZE - ENDSIZE) * (BOOMR2 + 1)
				else
					GROWTH = SIZE - ENDSIZE
				end
				local TRANS = TRANSPARENCY - ENDTRANSPARENCY
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				else
					EFFECT.CFrame = CFRAME
				end
				if USEBOOMERANGMATH == true then
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - VT(GROWTH.X * (1 - LOOP / TIME * BOOMR2), GROWTH.Y * (1 - LOOP / TIME * BOOMR2), GROWTH.Z * (1 - LOOP / TIME * BOOMR2)) * BOOMR2 / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CF(EFFECT.Position, MOVEDIRECTION) * CF(0, 0, -MOVESPEED * (1 - LOOP / TIME * BOOMR1))
							EFFECT.Orientation = ORI
						end
					end
				else
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - GROWTH / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
							EFFECT.Orientation = ORI
						end
					end
				end
				EFFECT.Transparency = 1
				if PLAYSSOUND == false then
					EFFECT:remove()
				else
					repeat
						Swait()
					until EFFECT:FindFirstChildOfClass("Sound") == nil
					EFFECT:remove()
				end
			elseif PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat
					Swait()
				until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end))
		return EFFECT
	end))
end

function EXCEPTWACKYEFFECT(Table)
	local TYPE = Table.EffectType or "Sphere"
	local SIZE = Table.Size or VT(1, 1, 1)
	local ENDSIZE = Table.Size2 or VT(0, 0, 0)
	local TRANSPARENCY = Table.Transparency or 0
	local ENDTRANSPARENCY = Table.Transparency2 or 1
	local CFRAME = Table.CFrame or Torso.CFrame
	local MOVEDIRECTION = Table.MoveToPos or nil
	local ROTATION1 = Table.RotationX or 0
	local ROTATION2 = Table.RotationY or 0
	local ROTATION3 = Table.RotationZ or 0
	local MATERIAL = "Neon"
	local COLOR = Table.Color or C3(1, 1, 1)
	local TIME = Table.Time or 45
	local SOUNDID = Table.SoundID or nil
	local SOUNDPITCH = Table.SoundPitch or nil
	local SOUNDVOLUME = Table.SoundVolume or nil
	local USEBOOMERANGMATH = Table.UseBoomerangMath or false
	local BOOMERANG = Table.Boomerang or 0
	local SIZEBOOMERANG = Table.SizeBoomerang or 0
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND
		local EFFECT = CreatePart(3, ExceptEffects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1, 1, 1), true)
		EFFECT.Color = COLOR
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
		end
		local MSH
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = IT("BlockMesh", EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0, 0, -SIZE.X / 8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X, SIZE.X, 0.1), VT(0, 0, 0))
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "168892432", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0, 0, 0))
		elseif TYPE == "Star" then 
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "2760116123", "", SIZE, VT(0,0,0))   	
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "450656451", "", SIZE, VT(0, 0, 0))
		end
		coroutine.resume(coroutine.create(function()
			if MSH ~= nil then
				local BOOMR1 = 1 + BOOMERANG / 50
				local BOOMR2 = 1 + SIZEBOOMERANG / 50
				local MOVESPEED = nil
				if MOVEDIRECTION ~= nil then
					MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude/TIME
				end
				local GROWTH
				if USEBOOMERANGMATH == true then
					GROWTH = (SIZE - ENDSIZE) * (BOOMR2 + 1)
				else
					GROWTH = SIZE - ENDSIZE
				end
				local TRANS = TRANSPARENCY - ENDTRANSPARENCY
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				else
					EFFECT.CFrame = CFRAME
				end
				if USEBOOMERANGMATH == true then
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - VT(GROWTH.X * (1 - LOOP / TIME * BOOMR2), GROWTH.Y * (1 - LOOP / TIME * BOOMR2), GROWTH.Z * (1 - LOOP / TIME * BOOMR2)) * BOOMR2 / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CF(EFFECT.Position, MOVEDIRECTION) * CF(0, 0, -MOVESPEED * (1 - LOOP / TIME * BOOMR1))
							EFFECT.Orientation = ORI
						end
					end
				else
					for LOOP = 1, TIME + 1 do
						Swait()
						MSH.Scale = MSH.Scale - GROWTH / TIME
						if TYPE == "Wave" then
							MSH.Offset = VT(0, 0, -MSH.Scale.Z / 8)
						end
						EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
						if TYPE == "Block" then
							EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
						else
							EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
						end
						if MOVEDIRECTION ~= nil then
							local ORI = EFFECT.Orientation
							EFFECT.CFrame = CF(EFFECT.Position,MOVEDIRECTION)*CF(0,0,-MOVESPEED)
							EFFECT.Orientation = ORI
						end
					end
				end
				EFFECT.Transparency = 1
				if PLAYSSOUND == false then
					EFFECT:remove()
				else
					repeat
						Swait()
					until EFFECT:FindFirstChildOfClass("Sound") == nil
					EFFECT:remove()
				end
			elseif PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat
					Swait()
				until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end))
		return EFFECT
	end))
end

--[[ Gun = Instance.new("Part", Character)
Gun.Size = Vector3.new(1,1.18,1.35)
Gun.Anchored = false
Gun.CanCollide = true
Gun.BrickColor = BrickColor.new("Black")
Gun.Transparency = 0

GunMesh = Instance.new("SpecialMesh",Gun)
GunMesh.MeshId = "rbxassetid://4615369575"
GunMesh.Scale = Vector3.new(2,2,2) --]]

cors = {}
mas = Instance.new("Folder",Character)
Gun = Instance.new("Part")
GunAdditions = Instance.new("Model")
Part2 = Instance.new("Part")
Part3 = Instance.new("Part")
Part4 = Instance.new("Part")
Part5 = Instance.new("Part")
Part6 = Instance.new("Part")
Part7 = Instance.new("Part")
Part8 = Instance.new("Part")
Part9 = Instance.new("Part")
Part10 = Instance.new("Part")
Part11 = Instance.new("Part")
Part12 = Instance.new("Part")
Part13 = Instance.new("Part")
Part14 = Instance.new("Part")
Part15 = Instance.new("Part")
Part16 = Instance.new("Part")
Part17 = Instance.new("Part")
Part18 = Instance.new("Part")
Part19 = Instance.new("Part")
Part20 = Instance.new("Part")
Part21 = Instance.new("Part")
Part22 = Instance.new("Part")
Part23 = Instance.new("Part")
Part24 = Instance.new("Part")
Part25 = Instance.new("Part")
Part26 = Instance.new("Part")
Part27 = Instance.new("Part")
Part28 = Instance.new("Part")
Part29 = Instance.new("Part")
Part30 = Instance.new("Part")
Part31 = Instance.new("Part")
Part32 = Instance.new("Part")
NeonParts = Instance.new("Model")
Part34 = Instance.new("Part")
Part35 = Instance.new("Part")
Part36 = Instance.new("Part")
Part37 = Instance.new("Part")
Part38 = Instance.new("Part")
Part39 = Instance.new("Part")
Part40 = Instance.new("Part")
Part41 = Instance.new("Part")
Part42 = Instance.new("Part")
Part43 = Instance.new("Part")
Part44 = Instance.new("Part")
Part45 = Instance.new("Part")
Part46 = Instance.new("Part")
Part47 = Instance.new("Part")
Part48 = Instance.new("Part")
Part49 = Instance.new("Part")
Part50 = Instance.new("Part")
Part51 = Instance.new("Part")
Part52 = Instance.new("Part")
Part53 = Instance.new("Part")
Part54 = Instance.new("Part")
Part55 = Instance.new("Part")
Part56 = Instance.new("Part")
Part57 = Instance.new("Part")
Part58 = Instance.new("Part")
WedgePart59 = Instance.new("WedgePart")
WedgePart60 = Instance.new("WedgePart")
WedgePart61 = Instance.new("WedgePart")
WedgePart62 = Instance.new("WedgePart")
WedgePart63 = Instance.new("WedgePart")
WedgePart64 = Instance.new("WedgePart")
WedgePart65 = Instance.new("WedgePart")
WedgePart66 = Instance.new("WedgePart")
WedgePart67 = Instance.new("WedgePart")
WedgePart68 = Instance.new("WedgePart")
WedgePart69 = Instance.new("WedgePart")
WedgePart70 = Instance.new("WedgePart")
WedgePart71 = Instance.new("WedgePart")
WedgePart72 = Instance.new("WedgePart")
WedgePart73 = Instance.new("WedgePart")
WedgePart74 = Instance.new("WedgePart")
WedgePart75 = Instance.new("WedgePart")
WedgePart76 = Instance.new("WedgePart")
WedgePart77 = Instance.new("WedgePart")
WedgePart78 = Instance.new("WedgePart")
WedgePart79 = Instance.new("WedgePart")
WedgePart80 = Instance.new("WedgePart")
WedgePart81 = Instance.new("WedgePart")
WedgePart82 = Instance.new("WedgePart")
WedgePart83 = Instance.new("WedgePart")
WedgePart84 = Instance.new("WedgePart")
WedgePart85 = Instance.new("WedgePart")
WedgePart86 = Instance.new("WedgePart")
WedgePart87 = Instance.new("WedgePart")
WedgePart88 = Instance.new("WedgePart")
WedgePart89 = Instance.new("WedgePart")
WedgePart90 = Instance.new("WedgePart")
WedgePart91 = Instance.new("WedgePart")
WedgePart92 = Instance.new("WedgePart")
Gun.Parent = mas
Gun.CFrame = CFrame.new(19.5114193, 17.4151173, 29.1267776, 0.0766888559, -0.0419792645, 0.996165454, -0.772843122, -0.633737981, 0.0327864662, 0.629938841, -0.772393823, -0.0810419023)
Gun.Orientation = Vector3.new(-1.8799999952316, 94.650001525879, -129.35000610352)
Gun.Position = Vector3.new(19.501419296265, 17.385117263794, 29.076777648926)
Gun.Rotation = Vector3.new(-157.9700012207, 84.980003356934, 28.700000762939)
Gun.Color = Color3.new(0, 0, 0)
Gun.Size = Vector3.new(9.3359508514404 / 10, 8.5937814712524 / 10, 1.4496214389801)
Gun.Anchored = true
Gun.BrickColor = BrickColor.new("Black")
Gun.CanCollide = false
Gun.Locked = false
Gun.Material = Enum.Material.Neon
GunMesh = IT("SpecialMesh",Gun)
GunMesh.MeshId = "rbxassetid://4615369575"
GunMesh.Scale = VT(2.01,2.01,2.01)
GunAdditions.Parent = Gun
GunAdditions.Name = "GunAdditions"
Part2.Parent = GunAdditions
Part2.CFrame = CFrame.new(19.2145634, 16.6421738, 27.6565914, -0.0637066588, -0.0594783835, -0.996194661, 0.908383965, -0.416817188, -0.0332048088, -0.413256198, -0.907042325, 0.0805832073)
Part2.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 114.65000152588)
Part2.Position = Vector3.new(19.214563369751, 16.64217376709, 27.656591415405)
Part2.Rotation = Vector3.new(22.389999389648, -85, 136.9700012207)
Part2.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part2.Size = Vector3.new(0.15661776065826, 0.090356394648552, 0.27307713031769)
Part2.Anchored = true
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.BrickColor = BrickColor.new("Sand green")
Part2.CanCollide = false
Part2.Locked = false
Part2.Material = Enum.Material.Metal
Part2.TopSurface = Enum.SurfaceType.Smooth
Part2.brickColor = BrickColor.new("Sand green")
Part3.Parent = GunAdditions
Part3.CFrame = CFrame.new(19.3688221, 18.9064026, 23.968647, -0.0833633617, 0.722394645, -0.686437607, 0.09322685, -0.680160761, -0.727110922, -0.992148995, -0.124608696, -0.0106459931)
Part3.Orientation = Vector3.new(46.639999389648, -90.889999389648, 172.19999694824)
Part3.Position = Vector3.new(19.368822097778, 18.906402587891, 23.968647003174)
Part3.Rotation = Vector3.new(90.839996337891, -43.349998474121, -96.580001831055)
Part3.Color = Color3.new(1, 1, 1)
Part3.Size = Vector3.new(0.20079199969769, 0.28110834956169, 0.14055448770523)
Part3.Anchored = true
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.BrickColor = BrickColor.new("Institutional white")
Part3.CanCollide = false
Part3.Locked = false
Part3.Material = Enum.Material.Metal
Part3.TopSurface = Enum.SurfaceType.Smooth
Part3.brickColor = BrickColor.new("Institutional white")
Part4.Parent = GunAdditions
Part4.CFrame = CFrame.new(19.761692, 17.2902184, 26.7139797, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part4.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part4.Position = Vector3.new(19.761692047119, 17.290218353271, 26.713979721069)
Part4.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part4.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part4.Size = Vector3.new(0.20079199969769, 0.20079199969769, 0.20079199969769)
Part4.Anchored = true
Part4.BottomSurface = Enum.SurfaceType.Smooth
Part4.BrickColor = BrickColor.new("Sand green")
Part4.CanCollide = false
Part4.Locked = false
Part4.Material = Enum.Material.Metal
Part4.TopSurface = Enum.SurfaceType.Smooth
Part4.brickColor = BrickColor.new("Sand green")
Part4.Shape = Enum.PartType.Ball
Part5.Parent = GunAdditions
Part5.CFrame = CFrame.new(19.834959, 17.6540585, 27.1467686, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part5.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part5.Position = Vector3.new(19.834959030151, 17.654058456421, 27.146768569946)
Part5.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part5.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part5.Size = Vector3.new(0.20079199969769, 0.20079199969769, 0.20079199969769)
Part5.Anchored = true
Part5.BottomSurface = Enum.SurfaceType.Smooth
Part5.BrickColor = BrickColor.new("Sand green")
Part5.CanCollide = false
Part5.Locked = false
Part5.Material = Enum.Material.Metal
Part5.TopSurface = Enum.SurfaceType.Smooth
Part5.brickColor = BrickColor.new("Sand green")
Part5.Shape = Enum.PartType.Ball
Part6.Parent = GunAdditions
Part6.CFrame = CFrame.new(18.708746, 18.8844032, 24.0220394, -0.0833633617, -0.686433196, -0.722398877, 0.09322685, -0.727115035, 0.68015635, -0.992148995, -0.0106467605, 0.124608606)
Part6.Orientation = Vector3.new(-42.860000610352, -80.209999084473, 172.69000244141)
Part6.Position = Vector3.new(18.708745956421, 18.88440322876, 24.022039413452)
Part6.Rotation = Vector3.new(-79.620002746582, -46.25, 96.919998168945)
Part6.Color = Color3.new(1, 1, 1)
Part6.Size = Vector3.new(0.20079199969769, 0.28110834956169, 0.14055448770523)
Part6.Anchored = true
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.BrickColor = BrickColor.new("Institutional white")
Part6.CanCollide = false
Part6.Locked = false
Part6.Material = Enum.Material.Metal
Part6.TopSurface = Enum.SurfaceType.Smooth
Part6.brickColor = BrickColor.new("Institutional white")
Part7.Parent = GunAdditions
Part7.CFrame = CFrame.new(19.7784271, 17.2714996, 26.9131985, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part7.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part7.Position = Vector3.new(19.778427124023, 17.271499633789, 26.913198471069)
Part7.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part7.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part7.Size = Vector3.new(0.40158399939537, 0.20079199969769, 0.20079199969769)
Part7.Anchored = true
Part7.BottomSurface = Enum.SurfaceType.Smooth
Part7.BrickColor = BrickColor.new("Sand green")
Part7.CanCollide = false
Part7.Locked = false
Part7.Material = Enum.Material.Metal
Part7.TopSurface = Enum.SurfaceType.Smooth
Part7.brickColor = BrickColor.new("Sand green")
Part7.Shape = Enum.PartType.Cylinder
Part8.Parent = GunAdditions
Part8.CFrame = CFrame.new(19.2145634, 16.6421738, 27.6565914, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part8.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part8.Position = Vector3.new(19.214563369751, 16.64217376709, 27.656591415405)
Part8.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part8.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part8.Size = Vector3.new(0.15661776065826, 0.090356394648552, 0.27307713031769)
Part8.Anchored = true
Part8.BottomSurface = Enum.SurfaceType.Smooth
Part8.BrickColor = BrickColor.new("Sand green")
Part8.CanCollide = false
Part8.Locked = false
Part8.Material = Enum.Material.Metal
Part8.TopSurface = Enum.SurfaceType.Smooth
Part8.brickColor = BrickColor.new("Sand green")
Part9.Parent = GunAdditions
Part9.CFrame = CFrame.new(18.8783092, 17.2415066, 26.986002, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part9.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part9.Position = Vector3.new(18.878309249878, 17.241506576538, 26.986001968384)
Part9.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part9.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part9.Size = Vector3.new(0.40158399939537, 0.20079199969769, 0.20079199969769)
Part9.Anchored = true
Part9.BottomSurface = Enum.SurfaceType.Smooth
Part9.BrickColor = BrickColor.new("Sand green")
Part9.CanCollide = false
Part9.Locked = false
Part9.Material = Enum.Material.Metal
Part9.TopSurface = Enum.SurfaceType.Smooth
Part9.brickColor = BrickColor.new("Sand green")
Part9.Shape = Enum.PartType.Cylinder
Part10.Parent = GunAdditions
Part10.CFrame = CFrame.new(19.4071236, 17.4078674, 23.8246422, -0.0833633617, -0.686433196, -0.722398877, 0.09322685, -0.727115035, 0.68015635, -0.992148995, -0.0106467605, 0.124608606)
Part10.Orientation = Vector3.new(-42.860000610352, -80.209999084473, 172.69000244141)
Part10.Position = Vector3.new(19.407123565674, 17.407867431641, 23.824642181396)
Part10.Rotation = Vector3.new(-79.620002746582, -46.25, 96.919998168945)
Part10.Color = Color3.new(1, 1, 1)
Part10.Size = Vector3.new(0.20079199969769, 0.28110834956169, 0.14055448770523)
Part10.Anchored = true
Part10.BottomSurface = Enum.SurfaceType.Smooth
Part10.BrickColor = BrickColor.new("Institutional white")
Part10.CanCollide = false
Part10.Locked = false
Part10.Material = Enum.Material.Metal
Part10.TopSurface = Enum.SurfaceType.Smooth
Part10.brickColor = BrickColor.new("Institutional white")
Part11.Parent = GunAdditions
Part11.CFrame = CFrame.new(19.8014832, 17.691494, 26.7483444, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part11.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part11.Position = Vector3.new(19.801483154297, 17.691493988037, 26.748344421387)
Part11.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part11.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part11.Size = Vector3.new(0.20079199969769, 0.20079199969769, 0.20079199969769)
Part11.Anchored = true
Part11.BottomSurface = Enum.SurfaceType.Smooth
Part11.BrickColor = BrickColor.new("Sand green")
Part11.CanCollide = false
Part11.Locked = false
Part11.Material = Enum.Material.Metal
Part11.TopSurface = Enum.SurfaceType.Smooth
Part11.brickColor = BrickColor.new("Sand green")
Part11.Shape = Enum.PartType.Ball
Part12.Parent = GunAdditions
Part12.CFrame = CFrame.new(19.7747402, 18.0520058, 27.1892185, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part12.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part12.Position = Vector3.new(19.774740219116, 18.052005767822, 27.189218521118)
Part12.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part12.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part12.Size = Vector3.new(0.20079199969769, 0.20079199969769, 0.20079199969769)
Part12.Anchored = true
Part12.BottomSurface = Enum.SurfaceType.Smooth
Part12.BrickColor = BrickColor.new("Sand green")
Part12.CanCollide = false
Part12.Locked = false
Part12.Material = Enum.Material.Metal
Part12.TopSurface = Enum.SurfaceType.Smooth
Part12.brickColor = BrickColor.new("Sand green")
Part12.Shape = Enum.PartType.Ball
Part13.Parent = GunAdditions
Part13.CFrame = CFrame.new(19.795166, 17.2527809, 27.1124058, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part13.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part13.Position = Vector3.new(19.795166015625, 17.252780914307, 27.112405776978)
Part13.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part13.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part13.Size = Vector3.new(0.20079199969769, 0.20079199969769, 0.20079199969769)
Part13.Anchored = true
Part13.BottomSurface = Enum.SurfaceType.Smooth
Part13.BrickColor = BrickColor.new("Sand green")
Part13.CanCollide = false
Part13.Locked = false
Part13.Material = Enum.Material.Metal
Part13.TopSurface = Enum.SurfaceType.Smooth
Part13.brickColor = BrickColor.new("Sand green")
Part13.Shape = Enum.PartType.Ball
Part14.Parent = GunAdditions
Part14.CFrame = CFrame.new(18.8578854, 18.0407276, 27.062809, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part14.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part14.Position = Vector3.new(18.857885360718, 18.040727615356, 27.062808990479)
Part14.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part14.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part14.Size = Vector3.new(0.40158399939537, 0.20079199969769, 0.20079199969769)
Part14.Anchored = true
Part14.BottomSurface = Enum.SurfaceType.Smooth
Part14.BrickColor = BrickColor.new("Sand green")
Part14.CanCollide = false
Part14.Locked = false
Part14.Material = Enum.Material.Metal
Part14.TopSurface = Enum.SurfaceType.Smooth
Part14.brickColor = BrickColor.new("Sand green")
Part14.Shape = Enum.PartType.Cylinder
Part15.Parent = GunAdditions
Part15.CFrame = CFrame.new(19.818224, 17.6727772, 26.9475517, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part15.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part15.Position = Vector3.new(19.818223953247, 17.672777175903, 26.947551727295)
Part15.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part15.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part15.Size = Vector3.new(0.40158399939537, 0.20079199969769, 0.20079199969769)
Part15.Anchored = true
Part15.BottomSurface = Enum.SurfaceType.Smooth
Part15.BrickColor = BrickColor.new("Sand green")
Part15.CanCollide = false
Part15.Locked = false
Part15.Material = Enum.Material.Metal
Part15.TopSurface = Enum.SurfaceType.Smooth
Part15.brickColor = BrickColor.new("Sand green")
Part15.Shape = Enum.PartType.Cylinder
Part16.Parent = GunAdditions
Part16.CFrame = CFrame.new(19.7412624, 18.0894432, 26.7907867, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part16.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part16.Position = Vector3.new(19.741262435913, 18.089443206787, 26.790786743164)
Part16.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part16.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part16.Size = Vector3.new(0.20079199969769, 0.20079199969769, 0.20079199969769)
Part16.Anchored = true
Part16.BottomSurface = Enum.SurfaceType.Smooth
Part16.BrickColor = BrickColor.new("Sand green")
Part16.CanCollide = false
Part16.Locked = false
Part16.Material = Enum.Material.Metal
Part16.TopSurface = Enum.SurfaceType.Smooth
Part16.brickColor = BrickColor.new("Sand green")
Part16.Shape = Enum.PartType.Ball
Part17.Parent = GunAdditions
Part17.CFrame = CFrame.new(18.8411465, 18.0594501, 26.8635921, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part17.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part17.Position = Vector3.new(18.841146469116, 18.059450149536, 26.863592147827)
Part17.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part17.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part17.Size = Vector3.new(0.20079199969769, 0.20079199969769, 0.20079199969769)
Part17.Anchored = true
Part17.BottomSurface = Enum.SurfaceType.Smooth
Part17.BrickColor = BrickColor.new("Sand green")
Part17.CanCollide = false
Part17.Locked = false
Part17.Material = Enum.Material.Metal
Part17.TopSurface = Enum.SurfaceType.Smooth
Part17.brickColor = BrickColor.new("Sand green")
Part17.Shape = Enum.PartType.Ball
Part18.Parent = GunAdditions
Part18.CFrame = CFrame.new(18.8950462, 17.2227859, 27.1852131, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part18.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part18.Position = Vector3.new(18.895046234131, 17.222785949707, 27.185213088989)
Part18.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part18.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part18.Size = Vector3.new(0.20079199969769, 0.20079199969769, 0.20079199969769)
Part18.Anchored = true
Part18.BottomSurface = Enum.SurfaceType.Smooth
Part18.BrickColor = BrickColor.new("Sand green")
Part18.CanCollide = false
Part18.Locked = false
Part18.Material = Enum.Material.Metal
Part18.TopSurface = Enum.SurfaceType.Smooth
Part18.brickColor = BrickColor.new("Sand green")
Part18.Shape = Enum.PartType.Ball
Part19.Parent = GunAdditions
Part19.CFrame = CFrame.new(18.861578, 17.2602215, 26.7867889, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part19.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part19.Position = Vector3.new(18.861577987671, 17.260221481323, 26.78678894043)
Part19.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part19.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part19.Size = Vector3.new(0.20079199969769, 0.20079199969769, 0.20079199969769)
Part19.Anchored = true
Part19.BottomSurface = Enum.SurfaceType.Smooth
Part19.BrickColor = BrickColor.new("Sand green")
Part19.CanCollide = false
Part19.Locked = false
Part19.Material = Enum.Material.Metal
Part19.TopSurface = Enum.SurfaceType.Smooth
Part19.brickColor = BrickColor.new("Sand green")
Part19.Shape = Enum.PartType.Ball
Part20.Parent = GunAdditions
Part20.CFrame = CFrame.new(18.8180923, 17.6394482, 27.0284519, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part20.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part20.Position = Vector3.new(18.818092346191, 17.639448165894, 27.028451919556)
Part20.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part20.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part20.Size = Vector3.new(0.40158399939537, 0.20079199969769, 0.20079199969769)
Part20.Anchored = true
Part20.BottomSurface = Enum.SurfaceType.Smooth
Part20.BrickColor = BrickColor.new("Sand green")
Part20.CanCollide = false
Part20.Locked = false
Part20.Material = Enum.Material.Metal
Part20.TopSurface = Enum.SurfaceType.Smooth
Part20.brickColor = BrickColor.new("Sand green")
Part20.Shape = Enum.PartType.Cylinder
Part21.Parent = GunAdditions
Part21.CFrame = CFrame.new(18.7470493, 17.38587, 23.8780289, -0.0833633617, 0.722394645, -0.686437607, 0.09322685, -0.680160761, -0.727110922, -0.992148995, -0.124608696, -0.0106459931)
Part21.Orientation = Vector3.new(46.639999389648, -90.889999389648, 172.19999694824)
Part21.Position = Vector3.new(18.747049331665, 17.385869979858, 23.878028869629)
Part21.Rotation = Vector3.new(90.839996337891, -43.349998474121, -96.580001831055)
Part21.Color = Color3.new(1, 1, 1)
Part21.Size = Vector3.new(0.20079199969769, 0.28110834956169, 0.14055448770523)
Part21.Anchored = true
Part21.BottomSurface = Enum.SurfaceType.Smooth
Part21.BrickColor = BrickColor.new("Institutional white")
Part21.CanCollide = false
Part21.Locked = false
Part21.Material = Enum.Material.Metal
Part21.TopSurface = Enum.SurfaceType.Smooth
Part21.brickColor = BrickColor.new("Institutional white")
Part22.Parent = GunAdditions
Part22.CFrame = CFrame.new(19.6146202, 16.655508, 27.6242313, -0.0637066588, -0.0594783835, -0.996194661, 0.908383965, -0.416817188, -0.0332048088, -0.413256198, -0.907042325, 0.0805832073)
Part22.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 114.65000152588)
Part22.Position = Vector3.new(19.61462020874, 16.655508041382, 27.624231338501)
Part22.Rotation = Vector3.new(22.389999389648, -85, 136.9700012207)
Part22.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part22.Size = Vector3.new(0.15661776065826, 0.090356394648552, 0.27307713031769)
Part22.Anchored = true
Part22.BottomSurface = Enum.SurfaceType.Smooth
Part22.BrickColor = BrickColor.new("Sand green")
Part22.CanCollide = false
Part22.Locked = false
Part22.Material = Enum.Material.Metal
Part22.TopSurface = Enum.SurfaceType.Smooth
Part22.brickColor = BrickColor.new("Sand green")
Part23.Parent = GunAdditions
Part23.CFrame = CFrame.new(18.8348274, 17.6207294, 27.2276669, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part23.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part23.Position = Vector3.new(18.834827423096, 17.620729446411, 27.227666854858)
Part23.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part23.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part23.Size = Vector3.new(0.20079199969769, 0.20079199969769, 0.20079199969769)
Part23.Anchored = true
Part23.BottomSurface = Enum.SurfaceType.Smooth
Part23.BrickColor = BrickColor.new("Sand green")
Part23.CanCollide = false
Part23.Locked = false
Part23.Material = Enum.Material.Metal
Part23.TopSurface = Enum.SurfaceType.Smooth
Part23.brickColor = BrickColor.new("Sand green")
Part23.Shape = Enum.PartType.Ball
Part24.Parent = GunAdditions
Part24.CFrame = CFrame.new(18.8013535, 17.6581669, 26.8292332, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part24.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part24.Position = Vector3.new(18.80135345459, 17.658166885376, 26.829233169556)
Part24.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part24.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part24.Size = Vector3.new(0.20079199969769, 0.20079199969769, 0.20079199969769)
Part24.Anchored = true
Part24.BottomSurface = Enum.SurfaceType.Smooth
Part24.BrickColor = BrickColor.new("Sand green")
Part24.CanCollide = false
Part24.Locked = false
Part24.Material = Enum.Material.Metal
Part24.TopSurface = Enum.SurfaceType.Smooth
Part24.brickColor = BrickColor.new("Sand green")
Part24.Shape = Enum.PartType.Ball
Part25.Parent = GunAdditions
Part25.CFrame = CFrame.new(19.057436, 18.1661129, 23.9252605, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part25.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part25.Position = Vector3.new(19.05743598938, 18.16611289978, 23.925260543823)
Part25.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part25.Color = Color3.new(1, 1, 1)
Part25.Size = Vector3.new(0.20079199969769, 1.8673658370972, 0.60237598419189)
Part25.Anchored = true
Part25.BottomSurface = Enum.SurfaceType.Smooth
Part25.BrickColor = BrickColor.new("Institutional white")
Part25.CanCollide = false
Part25.Locked = false
Part25.Material = Enum.Material.Metal
Part25.TopSurface = Enum.SurfaceType.Smooth
Part25.brickColor = BrickColor.new("Institutional white")
Part26.Parent = GunAdditions
Part26.CFrame = CFrame.new(18.8746281, 18.022007, 27.2620239, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part26.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part26.Position = Vector3.new(18.874628067017, 18.022006988525, 27.262023925781)
Part26.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part26.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part26.Size = Vector3.new(0.20079199969769, 0.20079199969769, 0.20079199969769)
Part26.Anchored = true
Part26.BottomSurface = Enum.SurfaceType.Smooth
Part26.BrickColor = BrickColor.new("Sand green")
Part26.CanCollide = false
Part26.Locked = false
Part26.Material = Enum.Material.Metal
Part26.TopSurface = Enum.SurfaceType.Smooth
Part26.brickColor = BrickColor.new("Sand green")
Part26.Shape = Enum.PartType.Ball
Part27.Parent = GunAdditions
Part27.CFrame = CFrame.new(19.0576954, 18.1561203, 23.9242973, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part27.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part27.Position = Vector3.new(19.057695388794, 18.156120300293, 23.924297332764)
Part27.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part27.Color = Color3.new(1, 1, 1)
Part27.Size = Vector3.new(0.20079199969769, 1.4055438041687, 0.96380162239075)
Part27.Anchored = true
Part27.BottomSurface = Enum.SurfaceType.Smooth
Part27.BrickColor = BrickColor.new("Institutional white")
Part27.CanCollide = false
Part27.Locked = false
Part27.Material = Enum.Material.Metal
Part27.TopSurface = Enum.SurfaceType.Smooth
Part27.brickColor = BrickColor.new("Institutional white")
Part28.Parent = GunAdditions
Part28.CFrame = CFrame.new(19.6146202, 16.655508, 27.6242313, 0.0196564719, -0.0849107802, -0.996194661, 0.815166116, 0.578275025, -0.0332048163, 0.57889384, -0.811411381, 0.0805832073)
Part28.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 54.650001525879)
Part28.Position = Vector3.new(19.61462020874, 16.655508041382, 27.624231338501)
Part28.Rotation = Vector3.new(22.389999389648, -85, 76.970001220703)
Part28.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part28.Size = Vector3.new(0.15661776065826, 0.090356394648552, 0.27307713031769)
Part28.Anchored = true
Part28.BottomSurface = Enum.SurfaceType.Smooth
Part28.BrickColor = BrickColor.new("Sand green")
Part28.CanCollide = false
Part28.Locked = false
Part28.Material = Enum.Material.Metal
Part28.TopSurface = Enum.SurfaceType.Smooth
Part28.brickColor = BrickColor.new("Sand green")
Part29.Parent = GunAdditions
Part29.CFrame = CFrame.new(19.4945221, 17.2114773, 28.9352398, 0.996195376, 0.02542652, -0.0833566338, 0.0331981331, -0.995092571, 0.0932152644, -0.0805773959, -0.09562774, -0.992150605)
Part29.Orientation = Vector3.new(-5.3499999046326, -175.19999694824, 178.08999633789)
Part29.Position = Vector3.new(19.494522094727, 17.211477279663, 28.93523979187)
Part29.Rotation = Vector3.new(-174.63000488281, -4.7800002098083, -1.460000038147)
Part29.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part29.Size = Vector3.new(1.1083718538284, 0.60237598419189, 0.60237598419189)
Part29.Anchored = true
Part29.BottomSurface = Enum.SurfaceType.Smooth
Part29.BrickColor = BrickColor.new("Sand green")
Part29.CanCollide = false
Part29.Locked = false
Part29.Material = Enum.Material.Metal
Part29.TopSurface = Enum.SurfaceType.Smooth
Part29.brickColor = BrickColor.new("Sand green")
Part29.Shape = Enum.PartType.Cylinder
Part30.Parent = GunAdditions
Part30.CFrame = CFrame.new(19.7580051, 18.0707226, 26.9900036, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part30.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part30.Position = Vector3.new(19.758005142212, 18.070722579956, 26.990003585815)
Part30.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part30.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part30.Size = Vector3.new(0.40158399939537, 0.20079199969769, 0.20079199969769)
Part30.Anchored = true
Part30.BottomSurface = Enum.SurfaceType.Smooth
Part30.BrickColor = BrickColor.new("Sand green")
Part30.CanCollide = false
Part30.Locked = false
Part30.Material = Enum.Material.Metal
Part30.TopSurface = Enum.SurfaceType.Smooth
Part30.brickColor = BrickColor.new("Sand green")
Part30.Shape = Enum.PartType.Cylinder
Part31.Parent = GunAdditions
Part31.CFrame = CFrame.new(19.2145634, 16.6421738, 27.6565914, 0.0196564719, -0.0849107802, -0.996194661, 0.815166116, 0.578275025, -0.0332048163, 0.57889384, -0.811411381, 0.0805832073)
Part31.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 54.650001525879)
Part31.Position = Vector3.new(19.214563369751, 16.64217376709, 27.656591415405)
Part31.Rotation = Vector3.new(22.389999389648, -85, 76.970001220703)
Part31.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part31.Size = Vector3.new(0.15661776065826, 0.090356394648552, 0.27307713031769)
Part31.Anchored = true
Part31.BottomSurface = Enum.SurfaceType.Smooth
Part31.BrickColor = BrickColor.new("Sand green")
Part31.CanCollide = false
Part31.Locked = false
Part31.Material = Enum.Material.Metal
Part31.TopSurface = Enum.SurfaceType.Smooth
Part31.brickColor = BrickColor.new("Sand green")
Part32.Parent = GunAdditions
Part32.CFrame = CFrame.new(19.6146202, 16.655508, 27.6242313, -0.0833633617, 0.0254316237, -0.996194661, 0.09322685, -0.995091259, -0.0332048088, -0.992148995, -0.0956399739, 0.0805832073)
Part32.Orientation = Vector3.new(1.8999999761581, -85.379997253418, 174.64999389648)
Part32.Position = Vector3.new(19.61462020874, 16.655508041382, 27.624231338501)
Part32.Rotation = Vector3.new(22.389999389648, -85, -163.0299987793)
Part32.Color = Color3.new(0.498039, 0.498039, 0.498039)
Part32.Size = Vector3.new(0.15661776065826, 0.090356394648552, 0.27307713031769)
Part32.Anchored = true
Part32.BottomSurface = Enum.SurfaceType.Smooth
Part32.BrickColor = BrickColor.new("Sand green")
Part32.CanCollide = false
Part32.Locked = false
Part32.Material = Enum.Material.Metal
Part32.TopSurface = Enum.SurfaceType.Smooth
Part32.brickColor = BrickColor.new("Sand green")
NeonParts.Parent = Gun
NeonParts.Name = "NeonParts"
Part34.Parent = NeonParts
Part34.CFrame = CFrame.new(19.1845016, 16.2371864, 27.305172, -0.78582567, 0.612805307, -0.0833531395, 0.606101692, 0.789907157, 0.0932063311, 0.122958563, 0.0227234457, -0.992151737)
Part34.Orientation = Vector3.new(-5.3499999046326, -175.19999694824, 37.5)
Part34.Position = Vector3.new(19.184501647949, 16.237186431885, 27.305171966553)
Part34.Rotation = Vector3.new(-174.63000488281, -4.7800002098083, -142.05000305176)
Part34.Color = Color3.new(1, 1, 1)
Part34.Size = Vector3.new(0.071473032236099, 0.010039600543678, 0.45377200841904)
Part34.Anchored = true
Part34.BottomSurface = Enum.SurfaceType.Smooth
Part34.BrickColor = BrickColor.new("Institutional white")
Part34.CanCollide = false
Part34.Locked = false
Part34.Material = Enum.Material.Neon
Part34.TopSurface = Enum.SurfaceType.Smooth
Part34.brickColor = BrickColor.new("Institutional white")
Part35.Parent = NeonParts
Part35.CFrame = CFrame.new(19.6012039, 16.2511044, 27.271471, -0.753437757, -0.652214646, -0.0833531469, -0.657517552, 0.747651935, 0.0932063162, 0.00152861222, 0.125031307, -0.992151737)
Part35.Orientation = Vector3.new(-5.3499999046326, -175.19999694824, -41.330001831055)
Part35.Position = Vector3.new(19.601203918457, 16.251104354858, 27.27147102356)
Part35.Rotation = Vector3.new(-174.63000488281, -4.7800002098083, 139.11999511719)
Part35.Color = Color3.new(1, 1, 1)
Part35.Size = Vector3.new(0.071473032236099, 0.010039600543678, 0.45376893877983)
Part35.Anchored = true
Part35.BottomSurface = Enum.SurfaceType.Smooth
Part35.BrickColor = BrickColor.new("Institutional white")
Part35.CanCollide = false
Part35.Locked = false
Part35.Material = Enum.Material.Neon
Part35.TopSurface = Enum.SurfaceType.Smooth
Part35.brickColor = BrickColor.new("Institutional white")
Part36.Parent = NeonParts
Part36.CFrame = CFrame.new(19.1344414, 17.1291294, 29.692173, -0.0833598748, 0.0255075265, -0.996193051, 0.0932182819, -0.995089412, -0.0332796313, -0.992150009, -0.0956375897, 0.0805727541)
Part36.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 174.64999389648)
Part36.Position = Vector3.new(19.134441375732, 17.12912940979, 29.69217300415)
Part36.Rotation = Vector3.new(22.440000534058, -85, -162.99000549316)
Part36.Color = Color3.new(1, 1, 1)
Part36.Size = Vector3.new(0.80316805839539, 0.40158408880234, 0.010039600543678)
Part36.Anchored = true
Part36.BottomSurface = Enum.SurfaceType.Smooth
Part36.BrickColor = BrickColor.new("Institutional white")
Part36.CanCollide = false
Part36.Locked = false
Part36.Material = Enum.Material.Neon
Part36.TopSurface = Enum.SurfaceType.Smooth
Part36.brickColor = BrickColor.new("Institutional white")
Part37.Parent = NeonParts
Part37.CFrame = CFrame.new(19.5650501, 17.1119556, 29.7758217, -0.0833598748, 0.0255075265, -0.996193051, 0.0932182819, -0.995089412, -0.0332796313, -0.992150009, -0.0956375897, 0.0805727541)
Part37.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 174.64999389648)
Part37.Position = Vector3.new(19.565050125122, 17.1119556427, 29.775821685791)
Part37.Rotation = Vector3.new(22.440000534058, -85, -162.99000549316)
Part37.Color = Color3.new(1, 1, 1)
Part37.Size = Vector3.new(0.20079201459885, 0.46182161569595, 0.46182161569595)
Part37.Anchored = true
Part37.BottomSurface = Enum.SurfaceType.Smooth
Part37.BrickColor = BrickColor.new("Institutional white")
Part37.CanCollide = false
Part37.Locked = false
Part37.Material = Enum.Material.Neon
Part37.TopSurface = Enum.SurfaceType.Smooth
Part37.brickColor = BrickColor.new("Institutional white")
Part37.Shape = Enum.PartType.Cylinder
Part38.Parent = NeonParts
Part38.CFrame = CFrame.new(19.9745464, 17.157198, 29.6242294, -0.0833598748, 0.0255075265, -0.996193051, 0.0932182819, -0.995089412, -0.0332796313, -0.992150009, -0.0956375897, 0.0805727541)
Part38.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 174.64999389648)
Part38.Position = Vector3.new(19.974546432495, 17.157197952271, 29.624229431152)
Part38.Rotation = Vector3.new(22.440000534058, -85, -162.99000549316)
Part38.Color = Color3.new(1, 1, 1)
Part38.Size = Vector3.new(0.80316805839539, 0.40158408880234, 0.010039600543678)
Part38.Anchored = true
Part38.BottomSurface = Enum.SurfaceType.Smooth
Part38.BrickColor = BrickColor.new("Institutional white")
Part38.CanCollide = false
Part38.Locked = false
Part38.Material = Enum.Material.Neon
Part38.TopSurface = Enum.SurfaceType.Smooth
Part38.brickColor = BrickColor.new("Institutional white")
Part39.Parent = NeonParts
Part39.CFrame = CFrame.new(18.8696117, 18.0262566, 27.2120361, -0.0833598748, 0.0255075265, -0.996193051, 0.0932182819, -0.995089412, -0.0332796313, -0.992150009, -0.0956375897, 0.0805727541)
Part39.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 174.64999389648)
Part39.Position = Vector3.new(18.869611740112, 18.026256561279, 27.212036132813)
Part39.Rotation = Vector3.new(22.440000534058, -85, -162.99000549316)
Part39.Color = Color3.new(1, 1, 1)
Part39.Size = Vector3.new(0.040158402174711, 0.22087122499943, 0.22087122499943)
Part39.Anchored = true
Part39.BottomSurface = Enum.SurfaceType.Smooth
Part39.BrickColor = BrickColor.new("Institutional white")
Part39.CanCollide = false
Part39.Locked = false
Part39.Material = Enum.Material.Neon
Part39.TopSurface = Enum.SurfaceType.Smooth
Part39.brickColor = BrickColor.new("Institutional white")
Part39.Shape = Enum.PartType.Cylinder
Part40.Parent = NeonParts
Part40.CFrame = CFrame.new(19.7651043, 17.285183, 26.7636166, -0.0833598748, 0.0255075265, -0.996193051, 0.0932182819, -0.995089412, -0.0332796313, -0.992150009, -0.0956375897, 0.0805727541)
Part40.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 174.64999389648)
Part40.Position = Vector3.new(19.765104293823, 17.285182952881, 26.76361656189)
Part40.Rotation = Vector3.new(22.440000534058, -85, -162.99000549316)
Part40.Color = Color3.new(1, 1, 1)
Part40.Size = Vector3.new(0.040158402174711, 0.22087122499943, 0.22087122499943)
Part40.Anchored = true
Part40.BottomSurface = Enum.SurfaceType.Smooth
Part40.BrickColor = BrickColor.new("Institutional white")
Part40.CanCollide = false
Part40.Locked = false
Part40.Material = Enum.Material.Neon
Part40.TopSurface = Enum.SurfaceType.Smooth
Part40.brickColor = BrickColor.new("Institutional white")
Part40.Shape = Enum.PartType.Cylinder
Part41.Parent = NeonParts
Part41.CFrame = CFrame.new(19.8048687, 17.6864586, 26.7979736, -0.0833598748, 0.0255075265, -0.996193051, 0.0932182819, -0.995089412, -0.0332796313, -0.992150009, -0.0956375897, 0.0805727541)
Part41.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 174.64999389648)
Part41.Position = Vector3.new(19.80486869812, 17.686458587646, 26.797973632813)
Part41.Rotation = Vector3.new(22.440000534058, -85, -162.99000549316)
Part41.Color = Color3.new(1, 1, 1)
Part41.Size = Vector3.new(0.040158402174711, 0.22087122499943, 0.22087122499943)
Part41.Anchored = true
Part41.BottomSurface = Enum.SurfaceType.Smooth
Part41.BrickColor = BrickColor.new("Institutional white")
Part41.CanCollide = false
Part41.Locked = false
Part41.Material = Enum.Material.Neon
Part41.TopSurface = Enum.SurfaceType.Smooth
Part41.brickColor = BrickColor.new("Institutional white")
Part41.Shape = Enum.PartType.Cylinder
Part42.Parent = NeonParts
Part42.CFrame = CFrame.new(19.7446194, 18.0844002, 26.8404179, -0.0833598748, 0.0255075265, -0.996193051, 0.0932182819, -0.995089412, -0.0332796313, -0.992150009, -0.0956375897, 0.0805727541)
Part42.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 174.64999389648)
Part42.Position = Vector3.new(19.744619369507, 18.084400177002, 26.840417861938)
Part42.Rotation = Vector3.new(22.440000534058, -85, -162.99000549316)
Part42.Color = Color3.new(1, 1, 1)
Part42.Size = Vector3.new(0.040158402174711, 0.22087122499943, 0.22087122499943)
Part42.Anchored = true
Part42.BottomSurface = Enum.SurfaceType.Smooth
Part42.BrickColor = BrickColor.new("Institutional white")
Part42.CanCollide = false
Part42.Locked = false
Part42.Material = Enum.Material.Neon
Part42.TopSurface = Enum.SurfaceType.Smooth
Part42.brickColor = BrickColor.new("Institutional white")
Part42.Shape = Enum.PartType.Cylinder
Part43.Parent = NeonParts
Part43.CFrame = CFrame.new(18.8445072, 18.0543365, 26.9132156, -0.0833598748, 0.0255075265, -0.996193051, 0.0932182819, -0.995089412, -0.0332796313, -0.992150009, -0.0956375897, 0.0805727541)
Part43.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 174.64999389648)
Part43.Position = Vector3.new(18.844507217407, 18.054336547852, 26.913215637207)
Part43.Rotation = Vector3.new(22.440000534058, -85, -162.99000549316)
Part43.Color = Color3.new(1, 1, 1)
Part43.Size = Vector3.new(0.040158402174711, 0.22087122499943, 0.22087122499943)
Part43.Anchored = true
Part43.BottomSurface = Enum.SurfaceType.Smooth
Part43.BrickColor = BrickColor.new("Institutional white")
Part43.CanCollide = false
Part43.Locked = false
Part43.Material = Enum.Material.Neon
Part43.TopSurface = Enum.SurfaceType.Smooth
Part43.brickColor = BrickColor.new("Institutional white")
Part43.Shape = Enum.PartType.Cylinder
Part44.Parent = NeonParts
Part44.CFrame = CFrame.new(19.8299732, 17.6583843, 27.0967941, -0.0833598748, 0.0255075265, -0.996193051, 0.0932182819, -0.995089412, -0.0332796313, -0.992150009, -0.0956375897, 0.0805727541)
Part44.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 174.64999389648)
Part44.Position = Vector3.new(19.829973220825, 17.65838432312, 27.096794128418)
Part44.Rotation = Vector3.new(22.440000534058, -85, -162.99000549316)
Part44.Color = Color3.new(1, 1, 1)
Part44.Size = Vector3.new(0.040158402174711, 0.22087122499943, 0.22087122499943)
Part44.Anchored = true
Part44.BottomSurface = Enum.SurfaceType.Smooth
Part44.BrickColor = BrickColor.new("Institutional white")
Part44.CanCollide = false
Part44.Locked = false
Part44.Material = Enum.Material.Neon
Part44.TopSurface = Enum.SurfaceType.Smooth
Part44.brickColor = BrickColor.new("Institutional white")
Part44.Shape = Enum.PartType.Cylinder
Part45.Parent = NeonParts
Part45.CFrame = CFrame.new(19.0610809, 18.1510201, 23.973938, -0.0833598748, 0.0255075265, -0.996193051, 0.0932182819, -0.995089412, -0.0332796313, -0.992150009, -0.0956375897, 0.0805727541)
Part45.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 174.64999389648)
Part45.Position = Vector3.new(19.061080932617, 18.151020050049, 23.973937988281)
Part45.Rotation = Vector3.new(22.440000534058, -85, -162.99000549316)
Part45.Color = Color3.new(1, 1, 1)
Part45.Size = Vector3.new(0.20079201459885, 1.405543923378, 0.96380168199539)
Part45.Anchored = true
Part45.BottomSurface = Enum.SurfaceType.Smooth
Part45.BrickColor = BrickColor.new("Institutional white")
Part45.CanCollide = false
Part45.Locked = false
Part45.Material = Enum.Material.Neon
Part45.TopSurface = Enum.SurfaceType.Smooth
Part45.brickColor = BrickColor.new("Institutional white")
Part46.Parent = NeonParts
Part46.CFrame = CFrame.new(18.8298492, 17.6249809, 27.1776791, -0.0833598748, 0.0255075265, -0.996193051, 0.0932182819, -0.995089412, -0.0332796313, -0.992150009, -0.0956375897, 0.0805727541)
Part46.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 174.64999389648)
Part46.Position = Vector3.new(18.829849243164, 17.624980926514, 27.17767906189)
Part46.Rotation = Vector3.new(22.440000534058, -85, -162.99000549316)
Part46.Color = Color3.new(1, 1, 1)
Part46.Size = Vector3.new(0.040158402174711, 0.22087122499943, 0.22087122499943)
Part46.Anchored = true
Part46.BottomSurface = Enum.SurfaceType.Smooth
Part46.BrickColor = BrickColor.new("Institutional white")
Part46.CanCollide = false
Part46.Locked = false
Part46.Material = Enum.Material.Neon
Part46.TopSurface = Enum.SurfaceType.Smooth
Part46.brickColor = BrickColor.new("Institutional white")
Part46.Shape = Enum.PartType.Cylinder
Part47.Parent = NeonParts
Part47.CFrame = CFrame.new(19.7697277, 18.0563259, 27.1392403, -0.0833598748, 0.0255075265, -0.996193051, 0.0932182819, -0.995089412, -0.0332796313, -0.992150009, -0.0956375897, 0.0805727541)
Part47.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 174.64999389648)
Part47.Position = Vector3.new(19.769727706909, 18.056325912476, 27.139240264893)
Part47.Rotation = Vector3.new(22.440000534058, -85, -162.99000549316)
Part47.Color = Color3.new(1, 1, 1)
Part47.Size = Vector3.new(0.040158402174711, 0.22087122499943, 0.22087122499943)
Part47.Anchored = true
Part47.BottomSurface = Enum.SurfaceType.Smooth
Part47.BrickColor = BrickColor.new("Institutional white")
Part47.CanCollide = false
Part47.Locked = false
Part47.Material = Enum.Material.Neon
Part47.TopSurface = Enum.SurfaceType.Smooth
Part47.brickColor = BrickColor.new("Institutional white")
Part47.Shape = Enum.PartType.Cylinder
Part48.Parent = NeonParts
Part48.CFrame = CFrame.new(19.7902126, 17.2571049, 27.0624371, -0.0833598748, 0.0255075265, -0.996193051, 0.0932182819, -0.995089412, -0.0332796313, -0.992150009, -0.0956375897, 0.0805727541)
Part48.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 174.64999389648)
Part48.Position = Vector3.new(19.790212631226, 17.257104873657, 27.062437057495)
Part48.Rotation = Vector3.new(22.440000534058, -85, -162.99000549316)
Part48.Color = Color3.new(1, 1, 1)
Part48.Size = Vector3.new(0.040158402174711, 0.22087122499943, 0.22087122499943)
Part48.Anchored = true
Part48.BottomSurface = Enum.SurfaceType.Smooth
Part48.BrickColor = BrickColor.new("Institutional white")
Part48.CanCollide = false
Part48.Locked = false
Part48.Material = Enum.Material.Neon
Part48.TopSurface = Enum.SurfaceType.Smooth
Part48.brickColor = BrickColor.new("Institutional white")
Part48.Shape = Enum.PartType.Cylinder
Part49.Parent = NeonParts
Part49.CFrame = CFrame.new(19.618351, 16.4038925, 27.2266922, -0.0833598748, 0.0255074725, -0.996193051, 0.0932182893, -0.995089412, -0.0332795754, -0.992150009, -0.0956375897, 0.0805727616)
Part49.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 174.64999389648)
Part49.Position = Vector3.new(19.618350982666, 16.40389251709, 27.226692199707)
Part49.Rotation = Vector3.new(22.440000534058, -85, -162.99000549316)
Part49.Color = Color3.new(1, 1, 1)
Part49.Size = Vector3.new(0.56824111938477, 0.25701373815536, 0.010039600543678)
Part49.Anchored = true
Part49.BottomSurface = Enum.SurfaceType.Smooth
Part49.BrickColor = BrickColor.new("Institutional white")
Part49.CanCollide = false
Part49.Locked = false
Part49.Material = Enum.Material.Neon
Part49.TopSurface = Enum.SurfaceType.Smooth
Part49.brickColor = BrickColor.new("Institutional white")
Part50.Parent = NeonParts
Part50.CFrame = CFrame.new(19.9453259, 17.4299049, 31.817749, -0.0833598748, 0.563956439, -0.82158649, 0.0932182819, -0.816428006, -0.569873512, -0.992150009, -0.124091469, 0.0154862851)
Part50.Orientation = Vector3.new(34.740001678467, -88.919998168945, 173.49000549316)
Part50.Position = Vector3.new(19.94532585144, 17.429904937744, 31.817749023438)
Part50.Rotation = Vector3.new(88.440002441406, -55.240001678467, -98.410003662109)
Part50.Color = Color3.new(1, 1, 1)
Part50.Size = Vector3.new(1.8071283102036, 0.40158402919769, 0.20079201459885)
Part50.Anchored = true
Part50.BottomSurface = Enum.SurfaceType.Smooth
Part50.BrickColor = BrickColor.new("Institutional white")
Part50.CanCollide = false
Part50.Locked = false
Part50.Material = Enum.Material.Neon
Part50.TopSurface = Enum.SurfaceType.Smooth
Part50.brickColor = BrickColor.new("Institutional white")
Part51.Parent = NeonParts
Part51.CFrame = CFrame.new(18.8649902, 17.2551155, 26.8364124, -0.0833598748, 0.0255075265, -0.996193051, 0.0932182819, -0.995089412, -0.0332796313, -0.992150009, -0.0956375897, 0.0805727541)
Part51.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 174.64999389648)
Part51.Position = Vector3.new(18.864990234375, 17.255115509033, 26.83641242981)
Part51.Rotation = Vector3.new(22.440000534058, -85, -162.99000549316)
Part51.Color = Color3.new(1, 1, 1)
Part51.Size = Vector3.new(0.040158402174711, 0.22087122499943, 0.22087122499943)
Part51.Anchored = true
Part51.BottomSurface = Enum.SurfaceType.Smooth
Part51.BrickColor = BrickColor.new("Institutional white")
Part51.CanCollide = false
Part51.Locked = false
Part51.Material = Enum.Material.Neon
Part51.TopSurface = Enum.SurfaceType.Smooth
Part51.brickColor = BrickColor.new("Institutional white")
Part51.Shape = Enum.PartType.Cylinder
Part52.Parent = NeonParts
Part52.CFrame = CFrame.new(18.8901005, 17.2270412, 27.135231, -0.0833598748, 0.0255075265, -0.996193051, 0.0932182819, -0.995089412, -0.0332796313, -0.992150009, -0.0956375897, 0.0805727541)
Part52.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 174.64999389648)
Part52.Position = Vector3.new(18.890100479126, 17.227041244507, 27.135231018066)
Part52.Rotation = Vector3.new(22.440000534058, -85, -162.99000549316)
Part52.Color = Color3.new(1, 1, 1)
Part52.Size = Vector3.new(0.040158402174711, 0.22087122499943, 0.22087122499943)
Part52.Anchored = true
Part52.BottomSurface = Enum.SurfaceType.Smooth
Part52.BrickColor = BrickColor.new("Institutional white")
Part52.CanCollide = false
Part52.Locked = false
Part52.Material = Enum.Material.Neon
Part52.TopSurface = Enum.SurfaceType.Smooth
Part52.brickColor = BrickColor.new("Institutional white")
Part52.Shape = Enum.PartType.Cylinder
Part53.Parent = NeonParts
Part53.CFrame = CFrame.new(19.3939915, 16.2220516, 27.2932415, -0.0833598748, 0.0255074725, -0.996193051, 0.0932182893, -0.995089412, -0.0332795754, -0.992150009, -0.0956375897, 0.0805727616)
Part53.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 174.64999389648)
Part53.Position = Vector3.new(19.393991470337, 16.222051620483, 27.293241500854)
Part53.Rotation = Vector3.new(22.440000534058, -85, -162.99000549316)
Part53.Color = Color3.new(1, 1, 1)
Part53.Size = Vector3.new(0.46784520149231, 0.010039600543678, 0.36945730447769)
Part53.Anchored = true
Part53.BottomSurface = Enum.SurfaceType.Smooth
Part53.BrickColor = BrickColor.new("Institutional white")
Part53.CanCollide = false
Part53.Locked = false
Part53.Material = Enum.Material.Neon
Part53.TopSurface = Enum.SurfaceType.Smooth
Part53.brickColor = BrickColor.new("Institutional white")
Part54.Parent = NeonParts
Part54.CFrame = CFrame.new(18.8047428, 17.6530552, 26.8788586, -0.0833598748, 0.0255075265, -0.996193051, 0.0932182819, -0.995089412, -0.0332796313, -0.992150009, -0.0956375897, 0.0805727541)
Part54.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 174.64999389648)
Part54.Position = Vector3.new(18.80474281311, 17.65305519104, 26.878858566284)
Part54.Rotation = Vector3.new(22.440000534058, -85, -162.99000549316)
Part54.Color = Color3.new(1, 1, 1)
Part54.Size = Vector3.new(0.040158402174711, 0.22087122499943, 0.22087122499943)
Part54.Anchored = true
Part54.BottomSurface = Enum.SurfaceType.Smooth
Part54.BrickColor = BrickColor.new("Institutional white")
Part54.CanCollide = false
Part54.Locked = false
Part54.Material = Enum.Material.Neon
Part54.TopSurface = Enum.SurfaceType.Smooth
Part54.brickColor = BrickColor.new("Institutional white")
Part54.Shape = Enum.PartType.Cylinder
Part55.Parent = NeonParts
Part55.CFrame = CFrame.new(19.4972687, 17.414938, 31.8539886, -0.0833598748, -0.521174014, -0.849369764, 0.0932182819, -0.852677166, 0.514054656, -0.992150009, -0.0363252498, 0.119661994)
Part55.Orientation = Vector3.new(-30.930000305176, -81.980003356934, 173.75999450684)
Part55.Position = Vector3.new(19.497268676758, 17.414937973022, 31.853988647461)
Part55.Rotation = Vector3.new(-76.900001525879, -58.139999389648, 99.089996337891)
Part55.Color = Color3.new(1, 1, 1)
Part55.Size = Vector3.new(1.8071283102036, 0.40158402919769, 0.20079201459885)
Part55.Anchored = true
Part55.BottomSurface = Enum.SurfaceType.Smooth
Part55.BrickColor = BrickColor.new("Institutional white")
Part55.CanCollide = false
Part55.Locked = false
Part55.Material = Enum.Material.Neon
Part55.TopSurface = Enum.SurfaceType.Smooth
Part55.brickColor = BrickColor.new("Institutional white")
Part56.Name = "thingy"
Part56.Parent = NeonParts
Part56.CFrame = CFrame.new(19.5951786, 17.0782642, 30.1344013, -0.0833598748, 0.0255075265, -0.996193051, 0.0932182819, -0.995089412, -0.0332796313, -0.992150009, -0.0956375897, 0.0805727541)
Part56.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 174.64999389648)
Part56.Position = Vector3.new(19.595178604126, 17.07826423645, 30.134401321411)
Part56.Rotation = Vector3.new(22.440000534058, -85, -162.99000549316)
Part56.Color = Color3.new(1, 1, 1)
Part56.Size = Vector3.new(0.20079201459885, 0.20079201459885, 0.20079201459885)
Part56.Anchored = true
Part56.BottomSurface = Enum.SurfaceType.Smooth
Part56.BrickColor = BrickColor.new("Institutional white")
Part56.CanCollide = false
Part56.Locked = false
Part56.Material = Enum.Material.Neon
Part56.TopSurface = Enum.SurfaceType.Smooth
Part56.brickColor = BrickColor.new("Institutional white")
Part57.Parent = NeonParts
Part57.CFrame = CFrame.new(19.4937401, 17.2111092, 28.9350548, 0.996193707, 0.0255029462, -0.0833531469, 0.0332734324, -0.995090723, 0.0932063311, -0.0805669054, -0.0956249982, -0.992151678)
Part57.Orientation = Vector3.new(-5.3499999046326, -175.19999694824, 178.08000183105)
Part57.Position = Vector3.new(19.493740081787, 17.211109161377, 28.935054779053)
Part57.Rotation = Vector3.new(-174.63000488281, -4.7800002098083, -1.4700000286102)
Part57.Color = Color3.new(1, 1, 1)
Part57.Size = Vector3.new(1.114395737648, 0.20079201459885, 0.20079201459885)
Part57.Anchored = true
Part57.BottomSurface = Enum.SurfaceType.Smooth
Part57.BrickColor = BrickColor.new("Institutional white")
Part57.CanCollide = false
Part57.Locked = false
Part57.Material = Enum.Material.Neon
Part57.TopSurface = Enum.SurfaceType.Smooth
Part57.brickColor = BrickColor.new("Institutional white")
Part57.Shape = Enum.PartType.Cylinder
Part58.Parent = NeonParts
Part58.CFrame = CFrame.new(19.1502972, 16.388258, 27.2645493, -0.0833598748, 0.0255074725, -0.996193051, 0.0932182893, -0.995089412, -0.0332795754, -0.992150009, -0.0956375897, 0.0805727616)
Part58.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 174.64999389648)
Part58.Position = Vector3.new(19.150297164917, 16.388257980347, 27.264549255371)
Part58.Rotation = Vector3.new(22.440000534058, -85, -162.99000549316)
Part58.Color = Color3.new(1, 1, 1)
Part58.Size = Vector3.new(0.56824111938477, 0.25701373815536, 0.010039600543678)
Part58.Anchored = true
Part58.BottomSurface = Enum.SurfaceType.Smooth
Part58.BrickColor = BrickColor.new("Institutional white")
Part58.CanCollide = false
Part58.Locked = false
Part58.Material = Enum.Material.Neon
Part58.TopSurface = Enum.SurfaceType.Smooth
Part58.brickColor = BrickColor.new("Institutional white")
WedgePart59.Parent = NeonParts
WedgePart59.CFrame = CFrame.new(18.7870598, 16.9896164, 28.7612, -0.0796469674, 0.0354378037, 0.996193051, 0.723186314, 0.689850807, 0.0332794897, -0.686045229, 0.723083735, -0.0805726573)
WedgePart59.Orientation = Vector3.new(-1.9099999666214, 94.620002746582, 46.349998474121)
WedgePart59.Position = Vector3.new(18.787059783936, 16.989616394043, 28.761199951172)
WedgePart59.Rotation = Vector3.new(-157.55999755859, 85, -156.00999450684)
WedgePart59.Color = Color3.new(1, 1, 1)
WedgePart59.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart59.Anchored = true
WedgePart59.BottomSurface = Enum.SurfaceType.Smooth
WedgePart59.BrickColor = BrickColor.new("Institutional white")
WedgePart59.CanCollide = false
WedgePart59.Locked = false
WedgePart59.Material = Enum.Material.Neon
WedgePart59.brickColor = BrickColor.new("Institutional white")
WedgePart60.Parent = NeonParts
WedgePart60.CFrame = CFrame.new(18.8191109, 16.8925972, 29.0732765, 0.739508092, -0.334927619, -0.583910346, -0.670585632, -0.290936232, -0.682400942, 0.0586742349, 0.896202981, -0.439747304)
WedgePart60.Orientation = Vector3.new(43.029998779297, -126.98000335693, -113.44999694824)
WedgePart60.Position = Vector3.new(18.819110870361, 16.892597198486, 29.073276519775)
WedgePart60.Rotation = Vector3.new(122.80000305176, -35.729999542236, 24.370000839233)
WedgePart60.Color = Color3.new(1, 1, 1)
WedgePart60.Size = Vector3.new(0.010039600543678, 0.093913570046425, 0.069044947624207)
WedgePart60.Anchored = true
WedgePart60.BottomSurface = Enum.SurfaceType.Smooth
WedgePart60.BrickColor = BrickColor.new("Institutional white")
WedgePart60.CanCollide = false
WedgePart60.Locked = false
WedgePart60.Material = Enum.Material.Neon
WedgePart60.brickColor = BrickColor.new("Institutional white")
WedgePart61.Parent = NeonParts
WedgePart61.CFrame = CFrame.new(18.8532982, 16.9259586, 29.0237331, -0.739519358, 0.334903151, -0.583910227, 0.670575857, 0.290958315, -0.68240118, -0.05864482, -0.896204889, -0.439747244)
WedgePart61.Orientation = Vector3.new(43.029998779297, -126.98000335693, 66.540000915527)
WedgePart61.Position = Vector3.new(18.853298187256, 16.925958633423, 29.023733139038)
WedgePart61.Rotation = Vector3.new(122.80000305176, -35.729999542236, -155.63999938965)
WedgePart61.Color = Color3.new(1, 1, 1)
WedgePart61.Size = Vector3.new(0.010039600543678, 0.037194218486547, 0.0271573420614)
WedgePart61.Anchored = true
WedgePart61.BottomSurface = Enum.SurfaceType.Smooth
WedgePart61.BrickColor = BrickColor.new("Institutional white")
WedgePart61.CanCollide = false
WedgePart61.Locked = false
WedgePart61.Material = Enum.Material.Neon
WedgePart61.brickColor = BrickColor.new("Institutional white")
WedgePart62.Parent = NeonParts
WedgePart62.CFrame = CFrame.new(18.7789307, 16.8456383, 29.0430145, -0.739508092, -0.334927619, 0.583910406, 0.670585632, -0.290936232, 0.682400942, -0.0586742349, 0.896202922, 0.439747334)
WedgePart62.Orientation = Vector3.new(-43.029998779297, 53.020000457764, 113.44999694824)
WedgePart62.Position = Vector3.new(18.778930664063, 16.845638275146, 29.043014526367)
WedgePart62.Rotation = Vector3.new(-57.200000762939, 35.729999542236, 155.63000488281)
WedgePart62.Color = Color3.new(1, 1, 1)
WedgePart62.Size = Vector3.new(0.010039600543678, 0.093913570046425, 0.068583011627197)
WedgePart62.Anchored = true
WedgePart62.BottomSurface = Enum.SurfaceType.Smooth
WedgePart62.BrickColor = BrickColor.new("Institutional white")
WedgePart62.CanCollide = false
WedgePart62.Locked = false
WedgePart62.Material = Enum.Material.Neon
WedgePart62.brickColor = BrickColor.new("Institutional white")
WedgePart63.Parent = NeonParts
WedgePart63.CFrame = CFrame.new(18.8131142, 16.8790035, 28.9934731, 0.739519358, 0.334903061, 0.583910227, -0.670575857, 0.290958196, 0.68240124, 0.05864482, -0.896204948, 0.439747125)
WedgePart63.Orientation = Vector3.new(-43.029998779297, 53.020000457764, -66.540000915527)
WedgePart63.Position = Vector3.new(18.81311416626, 16.87900352478, 28.993473052979)
WedgePart63.Rotation = Vector3.new(-57.200000762939, 35.729999542236, -24.360000610352)
WedgePart63.Color = Color3.new(1, 1, 1)
WedgePart63.Size = Vector3.new(0.010039600543678, 0.037194218486547, 0.11047061532736)
WedgePart63.Anchored = true
WedgePart63.BottomSurface = Enum.SurfaceType.Smooth
WedgePart63.BrickColor = BrickColor.new("Institutional white")
WedgePart63.CanCollide = false
WedgePart63.Locked = false
WedgePart63.Material = Enum.Material.Neon
WedgePart63.brickColor = BrickColor.new("Institutional white")
WedgePart64.Parent = NeonParts
WedgePart64.CFrame = CFrame.new(18.8010826, 16.9062405, 28.900177, -0.0863238052, -0.0121530993, 0.996193051, 0.247736111, 0.968255818, 0.033279527, -0.964974105, 0.249665812, -0.080572769)
WedgePart64.Orientation = Vector3.new(-1.9099999666214, 94.620002746582, 14.35000038147)
WedgePart64.Position = Vector3.new(18.801082611084, 16.906240463257, 28.900177001953)
WedgePart64.Rotation = Vector3.new(-157.55999755859, 85, 171.99000549316)
WedgePart64.Color = Color3.new(1, 1, 1)
WedgePart64.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart64.Anchored = true
WedgePart64.BottomSurface = Enum.SurfaceType.Smooth
WedgePart64.BrickColor = BrickColor.new("Institutional white")
WedgePart64.CanCollide = false
WedgePart64.Locked = false
WedgePart64.Material = Enum.Material.Neon
WedgePart64.brickColor = BrickColor.new("Institutional white")
WedgePart65.Parent = NeonParts
WedgePart65.CFrame = CFrame.new(20.163414, 17.4725933, 28.6751709, -0.0381959155, 0.0783617795, -0.996193051, -0.664191544, -0.746821284, -0.0332795382, -0.746586025, 0.660391808, 0.0805727616)
WedgePart65.Orientation = Vector3.new(1.9099999666214, -85.379997253418, -138.35000610352)
WedgePart65.Position = Vector3.new(20.163414001465, 17.472593307495, 28.675170898438)
WedgePart65.Rotation = Vector3.new(22.440000534058, -85, -115.98999786377)
WedgePart65.Color = Color3.new(1, 1, 1)
WedgePart65.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart65.Anchored = true
WedgePart65.BottomSurface = Enum.SurfaceType.Smooth
WedgePart65.BrickColor = BrickColor.new("Institutional white")
WedgePart65.CanCollide = false
WedgePart65.Locked = false
WedgePart65.Material = Enum.Material.Neon
WedgePart65.brickColor = BrickColor.new("Institutional white")
WedgePart66.Parent = NeonParts
WedgePart66.CFrame = CFrame.new(20.2238159, 16.9109898, 28.7482929, 0.70479542, 0.344879448, -0.619936824, 0.683818281, -0.0976702347, 0.72308594, 0.188828081, -0.933551669, -0.30467242)
WedgePart66.Orientation = Vector3.new(-46.310001373291, -116.16999816895, 98.129997253418)
WedgePart66.Position = Vector3.new(20.223815917969, 16.910989761353, 28.748292922974)
WedgePart66.Rotation = Vector3.new(-112.84999847412, -38.310001373291, -26.069999694824)
WedgePart66.Color = Color3.new(1, 1, 1)
WedgePart66.Size = Vector3.new(0.012047520838678, 0.093970663845539, 0.068670868873596)
WedgePart66.Anchored = true
WedgePart66.BottomSurface = Enum.SurfaceType.Smooth
WedgePart66.BrickColor = BrickColor.new("Institutional white")
WedgePart66.CanCollide = false
WedgePart66.Locked = false
WedgePart66.Material = Enum.Material.Neon
WedgePart66.brickColor = BrickColor.new("Institutional white")
WedgePart67.Parent = NeonParts
WedgePart67.CFrame = CFrame.new(18.7761135, 17.1329746, 28.6850872, -0.0500194766, 0.0713970661, 0.996193051, 0.975189865, 0.218854606, 0.0332796015, -0.215645358, 0.973141968, -0.0805726871)
WedgePart67.Orientation = Vector3.new(-1.9099999666214, 94.620002746582, 77.349998474121)
WedgePart67.Position = Vector3.new(18.776113510132, 17.132974624634, 28.685087203979)
WedgePart67.Rotation = Vector3.new(-157.55999755859, 85, -125.01000213623)
WedgePart67.Color = Color3.new(1, 1, 1)
WedgePart67.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart67.Anchored = true
WedgePart67.BottomSurface = Enum.SurfaceType.Smooth
WedgePart67.BrickColor = BrickColor.new("Institutional white")
WedgePart67.CanCollide = false
WedgePart67.Locked = false
WedgePart67.Material = Enum.Material.Neon
WedgePart67.brickColor = BrickColor.new("Institutional white")
WedgePart68.Parent = NeonParts
WedgePart68.CFrame = CFrame.new(18.7713718, 17.295351, 28.6935921, -0.00610283948, 0.0869611427, 0.996193051, 0.948619366, -0.314664572, 0.0332795531, 0.316360652, 0.945211112, -0.0805726722)
WedgePart68.Orientation = Vector3.new(-1.9099999666214, 94.620002746582, 108.34999847412)
WedgePart68.Position = Vector3.new(18.771371841431, 17.295351028442, 28.693592071533)
WedgePart68.Rotation = Vector3.new(-157.55999755859, 85, -94.01000213623)
WedgePart68.Color = Color3.new(1, 1, 1)
WedgePart68.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart68.Anchored = true
WedgePart68.BottomSurface = Enum.SurfaceType.Smooth
WedgePart68.BrickColor = BrickColor.new("Institutional white")
WedgePart68.CanCollide = false
WedgePart68.Locked = false
WedgePart68.Material = Enum.Material.Neon
WedgePart68.brickColor = BrickColor.new("Institutional white")
WedgePart69.Parent = NeonParts
WedgePart69.CFrame = CFrame.new(18.8201008, 16.9493332, 29.1530933, -0.0487300679, -0.0722834095, 0.996193051, -0.553789735, 0.831991374, 0.0332796425, -0.831229508, -0.550059736, -0.0805727988)
WedgePart69.Orientation = Vector3.new(-1.9099999666214, 94.620002746582, -33.650001525879)
WedgePart69.Position = Vector3.new(18.820100784302, 16.949333190918, 29.153093338013)
WedgePart69.Rotation = Vector3.new(-157.55999755859, 85, 123.98999786377)
WedgePart69.Color = Color3.new(1, 1, 1)
WedgePart69.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart69.Anchored = true
WedgePart69.BottomSurface = Enum.SurfaceType.Smooth
WedgePart69.BrickColor = BrickColor.new("Institutional white")
WedgePart69.CanCollide = false
WedgePart69.Locked = false
WedgePart69.Material = Enum.Material.Neon
WedgePart69.brickColor = BrickColor.new("Institutional white")
WedgePart70.Parent = NeonParts
WedgePart70.CFrame = CFrame.new(19.5775242, 16.2775917, 26.9895821, -0.652214706, -0.753437638, 0.083353132, 0.747651875, -0.657517552, -0.0932064429, 0.125031397, 0.00152851187, 0.992151678)
WedgePart70.Orientation = Vector3.new(5.3499999046326, 4.8000001907349, 131.33000183105)
WedgePart70.Position = Vector3.new(19.577524185181, 16.277591705322, 26.989582061768)
WedgePart70.Rotation = Vector3.new(5.3699998855591, 4.7800002098083, 130.88000488281)
WedgePart70.Color = Color3.new(1, 1, 1)
WedgePart70.Size = Vector3.new(0.010039600543678, 0.071473032236099, 0.11447283625603)
WedgePart70.Anchored = true
WedgePart70.BottomSurface = Enum.SurfaceType.Smooth
WedgePart70.BrickColor = BrickColor.new("Institutional white")
WedgePart70.CanCollide = false
WedgePart70.Locked = false
WedgePart70.Material = Enum.Material.Neon
WedgePart70.brickColor = BrickColor.new("Institutional white")
WedgePart71.Parent = NeonParts
WedgePart71.CFrame = CFrame.new(18.7741966, 17.430378, 28.784277, 0.0395575687, 0.0776832923, 0.996193051, 0.651057243, -0.758298755, 0.0332796052, 0.757997274, 0.647262156, -0.0805727243)
WedgePart71.Orientation = Vector3.new(-1.9099999666214, 94.620002746582, 139.35000610352)
WedgePart71.Position = Vector3.new(18.774196624756, 17.430377960205, 28.78427696228)
WedgePart71.Rotation = Vector3.new(-157.55999755859, 85, -63.009998321533)
WedgePart71.Color = Color3.new(1, 1, 1)
WedgePart71.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart71.Anchored = true
WedgePart71.BottomSurface = Enum.SurfaceType.Smooth
WedgePart71.BrickColor = BrickColor.new("Institutional white")
WedgePart71.CanCollide = false
WedgePart71.Locked = false
WedgePart71.Material = Enum.Material.Neon
WedgePart71.brickColor = BrickColor.new("Institutional white")
WedgePart72.Parent = NeonParts
WedgePart72.CFrame = CFrame.new(19.2040005, 16.2153816, 27.5372543, 0.612803817, 0.0833631158, 0.785825789, 0.78990829, -0.0932139754, -0.606099069, 0.0227236301, 0.992150128, -0.122971095)
WedgePart72.Orientation = Vector3.new(37.310001373291, 98.889999389648, 96.730003356934)
WedgePart72.Position = Vector3.new(19.204000473022, 16.215381622314, 27.537254333496)
WedgePart72.Rotation = Vector3.new(101.4700012207, 51.799999237061, -7.75)
WedgePart72.Color = Color3.new(1, 1, 1)
WedgePart72.Size = Vector3.new(0.010039600543678, 0.014073763042688, 0.071473032236099)
WedgePart72.Anchored = true
WedgePart72.BottomSurface = Enum.SurfaceType.Smooth
WedgePart72.BrickColor = BrickColor.new("Institutional white")
WedgePart72.CanCollide = false
WedgePart72.Locked = false
WedgePart72.Material = Enum.Material.Neon
WedgePart72.brickColor = BrickColor.new("Institutional white")
WedgePart73.Parent = NeonParts
WedgePart73.CFrame = CFrame.new(20.1863289, 17.5304966, 28.982439, -0.0871212631, 0.00306334137, -0.996193051, 0.347589016, -0.937056243, -0.0332796164, -0.93359077, -0.349165142, 0.0805727467)
WedgePart73.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 159.64999389648)
WedgePart73.Position = Vector3.new(20.186328887939, 17.53049659729, 28.982439041138)
WedgePart73.Rotation = Vector3.new(22.440000534058, -85, -177.99000549316)
WedgePart73.Color = Color3.new(1, 1, 1)
WedgePart73.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart73.Anchored = true
WedgePart73.BottomSurface = Enum.SurfaceType.Smooth
WedgePart73.BrickColor = BrickColor.new("Institutional white")
WedgePart73.CanCollide = false
WedgePart73.Locked = false
WedgePart73.Material = Enum.Material.Neon
WedgePart73.brickColor = BrickColor.new("Institutional white")
WedgePart74.Parent = NeonParts
WedgePart74.CFrame = CFrame.new(20.1728058, 17.5442448, 28.8209133, -0.0730998293, 0.0474964604, -0.996193051, -0.18467699, -0.98223573, -0.0332795531, -0.980076969, 0.18154119, 0.080572769)
WedgePart74.Orientation = Vector3.new(1.9099999666214, -85.379997253418, -169.35000610352)
WedgePart74.Position = Vector3.new(20.172805786133, 17.544244766235, 28.820913314819)
WedgePart74.Rotation = Vector3.new(22.440000534058, -85, -146.99000549316)
WedgePart74.Color = Color3.new(1, 1, 1)
WedgePart74.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart74.Anchored = true
WedgePart74.BottomSurface = Enum.SurfaceType.Smooth
WedgePart74.BrickColor = BrickColor.new("Institutional white")
WedgePart74.CanCollide = false
WedgePart74.Locked = false
WedgePart74.Material = Enum.Material.Neon
WedgePart74.brickColor = BrickColor.new("Institutional white")
WedgePart75.Parent = NeonParts
WedgePart75.CFrame = CFrame.new(18.7973747, 17.4828987, 29.0924892, 0.0871613696, 0.00154235598, 0.996193051, -0.363889873, -0.930847287, 0.0332795344, 0.927354813, -0.365405232, -0.0805726871)
WedgePart75.Orientation = Vector3.new(-1.9099999666214, 94.620002746582, -158.64999389648)
WedgePart75.Position = Vector3.new(18.797374725342, 17.482898712158, 29.092489242554)
WedgePart75.Rotation = Vector3.new(-157.55999755859, 85, -1.0099999904633)
WedgePart75.Color = Color3.new(1, 1, 1)
WedgePart75.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart75.Anchored = true
WedgePart75.BottomSurface = Enum.SurfaceType.Smooth
WedgePart75.BrickColor = BrickColor.new("Institutional white")
WedgePart75.CanCollide = false
WedgePart75.Locked = false
WedgePart75.Material = Enum.Material.Neon
WedgePart75.brickColor = BrickColor.new("Institutional white")
WedgePart76.Parent = NeonParts
WedgePart76.CFrame = CFrame.new(20.2001209, 17.4352722, 29.1136055, -0.0762555003, -0.0422445945, -0.996193051, 0.780558407, -0.62419641, -0.0332796462, -0.620414138, -0.780124605, 0.0805727765)
WedgePart76.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 128.64999389648)
WedgePart76.Position = Vector3.new(20.200120925903, 17.435272216797, 29.113605499268)
WedgePart76.Rotation = Vector3.new(22.440000534058, -85, 151.00999450684)
WedgePart76.Color = Color3.new(1, 1, 1)
WedgePart76.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart76.Anchored = true
WedgePart76.BottomSurface = Enum.SurfaceType.Smooth
WedgePart76.BrickColor = BrickColor.new("Institutional white")
WedgePart76.CanCollide = false
WedgePart76.Locked = false
WedgePart76.Material = Enum.Material.Neon
WedgePart76.brickColor = BrickColor.new("Institutional white")
WedgePart77.Parent = NeonParts
WedgePart77.CFrame = CFrame.new(18.7837753, 17.4994717, 28.9312344, 0.073917523, 0.0462134778, 0.996193051, 0.167506799, -0.985309064, 0.0332795717, 0.983096063, 0.164409131, -0.0805726722)
WedgePart77.Orientation = Vector3.new(-1.9099999666214, 94.620002746582, 170.35000610352)
WedgePart77.Position = Vector3.new(18.78377532959, 17.499471664429, 28.931234359741)
WedgePart77.Rotation = Vector3.new(-157.55999755859, 85, -32.009998321533)
WedgePart77.Color = Color3.new(1, 1, 1)
WedgePart77.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart77.Anchored = true
WedgePart77.BottomSurface = Enum.SurfaceType.Smooth
WedgePart77.BrickColor = BrickColor.new("Institutional white")
WedgePart77.CanCollide = false
WedgePart77.Locked = false
WedgePart77.Material = Enum.Material.Neon
WedgePart77.brickColor = BrickColor.new("Institutional white")
WedgePart78.Parent = NeonParts
WedgePart78.CFrame = CFrame.new(20.1608334, 17.3360119, 28.5868397, 0.0076195579, 0.0868414789, -0.996193051, -0.953966498, -0.298061103, -0.0332795642, -0.29981643, 0.950588346, 0.0805727765)
WedgePart78.Orientation = Vector3.new(1.9099999666214, -85.379997253418, -107.34999847412)
WedgePart78.Position = Vector3.new(20.160833358765, 17.336011886597, 28.586839675903)
WedgePart78.Rotation = Vector3.new(22.440000534058, -85, -84.98999786377)
WedgePart78.Color = Color3.new(1, 1, 1)
WedgePart78.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart78.Anchored = true
WedgePart78.BottomSurface = Enum.SurfaceType.Smooth
WedgePart78.BrickColor = BrickColor.new("Institutional white")
WedgePart78.CanCollide = false
WedgePart78.Locked = false
WedgePart78.Material = Enum.Material.Neon
WedgePart78.brickColor = BrickColor.new("Institutional white")
WedgePart79.Parent = NeonParts
WedgePart79.CFrame = CFrame.new(18.821043, 17.2347965, 29.2827072, 0.0422824882, -0.0762343556, 0.996193051, -0.992724121, -0.115721293, 0.0332796015, 0.112743683, -0.990352035, -0.0805726573)
WedgePart79.Orientation = Vector3.new(-1.9099999666214, 94.620002746582, -96.650001525879)
WedgePart79.Position = Vector3.new(18.821043014526, 17.234796524048, 29.282707214355)
WedgePart79.Rotation = Vector3.new(-157.55999755859, 85, 60.990001678467)
WedgePart79.Color = Color3.new(1, 1, 1)
WedgePart79.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart79.Anchored = true
WedgePart79.BottomSurface = Enum.SurfaceType.Smooth
WedgePart79.BrickColor = BrickColor.new("Institutional white")
WedgePart79.CanCollide = false
WedgePart79.Locked = false
WedgePart79.Material = Enum.Material.Neon
WedgePart79.brickColor = BrickColor.new("Institutional white")
WedgePart80.Parent = NeonParts
WedgePart80.CFrame = CFrame.new(18.8243561, 17.0741558, 29.2573299, -0.00302052894, -0.0871226564, 0.996193051, -0.910531104, 0.412099183, 0.0332795791, -0.413429737, -0.906964183, -0.0805726349)
WedgePart80.Orientation = Vector3.new(-1.9099999666214, 94.620002746582, -65.650001525879)
WedgePart80.Position = Vector3.new(18.824356079102, 17.074155807495, 29.257329940796)
WedgePart80.Rotation = Vector3.new(-157.55999755859, 85, 91.98999786377)
WedgePart80.Color = Color3.new(1, 1, 1)
WedgePart80.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart80.Anchored = true
WedgePart80.BottomSurface = Enum.SurfaceType.Smooth
WedgePart80.BrickColor = BrickColor.new("Institutional white")
WedgePart80.CanCollide = false
WedgePart80.Locked = false
WedgePart80.Material = Enum.Material.Neon
WedgePart80.brickColor = BrickColor.new("Institutional white")
WedgePart81.Parent = NeonParts
WedgePart81.CFrame = CFrame.new(19.6207047, 16.2293015, 27.5035496, 0.652214646, 0.0833511353, -0.753437936, -0.747651875, -0.0932081267, -0.657517314, -0.125031352, 0.992151678, 0.00152593176)
WedgePart81.Orientation = Vector3.new(41.110000610352, -89.879997253418, -97.110000610352)
WedgePart81.Position = Vector3.new(19.620704650879, 16.229301452637, 27.503549575806)
WedgePart81.Rotation = Vector3.new(89.870002746582, -48.889999389648, -7.2800002098083)
WedgePart81.Color = Color3.new(1, 1, 1)
WedgePart81.Size = Vector3.new(0.010039600543678, 0.014076827093959, 0.071473032236099)
WedgePart81.Anchored = true
WedgePart81.BottomSurface = Enum.SurfaceType.Smooth
WedgePart81.BrickColor = BrickColor.new("Institutional white")
WedgePart81.CanCollide = false
WedgePart81.Locked = false
WedgePart81.Material = Enum.Material.Neon
WedgePart81.brickColor = BrickColor.new("Institutional white")
WedgePart82.Parent = NeonParts
WedgePart82.CFrame = CFrame.new(18.8111, 17.3853874, 29.2219753, 0.0755064562, -0.0435689278, 0.996193051, -0.791332841, -0.610479176, 0.0332795084, 0.606705129, -0.790833175, -0.0805726424)
WedgePart82.Orientation = Vector3.new(-1.9099999666214, 94.620002746582, -127.65000152588)
WedgePart82.Position = Vector3.new(18.811100006104, 17.385387420654, 29.221975326538)
WedgePart82.Rotation = Vector3.new(-157.55999755859, 85, 29.989999771118)
WedgePart82.Color = Color3.new(1, 1, 1)
WedgePart82.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart82.Anchored = true
WedgePart82.BottomSurface = Enum.SurfaceType.Smooth
WedgePart82.BrickColor = BrickColor.new("Institutional white")
WedgePart82.CanCollide = false
WedgePart82.Locked = false
WedgePart82.Material = Enum.Material.Neon
WedgePart82.brickColor = BrickColor.new("Institutional white")
WedgePart83.Parent = NeonParts
WedgePart83.CFrame = CFrame.new(19.1608181, 16.2636719, 27.023283, -0.612803698, 0.785826981, 0.0833532587, -0.789908528, -0.606100082, -0.0932063013, -0.0227236077, -0.122958601, 0.992151678)
WedgePart83.Orientation = Vector3.new(5.3499999046326, 4.8000001907349, -127.5)
WedgePart83.Position = Vector3.new(19.160818099976, 16.263671875, 27.023283004761)
WedgePart83.Rotation = Vector3.new(5.3699998855591, 4.7800002098083, -127.94999694824)
WedgePart83.Color = Color3.new(1, 1, 1)
WedgePart83.Size = Vector3.new(0.010039600543678, 0.071473032236099, 0.11446976661682)
WedgePart83.Anchored = true
WedgePart83.BottomSurface = Enum.SurfaceType.Smooth
WedgePart83.BrickColor = BrickColor.new("Institutional white")
WedgePart83.CanCollide = false
WedgePart83.Locked = false
WedgePart83.Material = Enum.Material.Neon
WedgePart83.brickColor = BrickColor.new("Institutional white")
WedgePart84.Parent = NeonParts
WedgePart84.CFrame = CFrame.new(20.1882267, 16.9325409, 28.803112, -0.704806209, -0.344856858, -0.619937181, -0.6838153, 0.0976912081, 0.72308594, -0.188798696, 0.933557868, -0.304671764)
WedgePart84.Orientation = Vector3.new(-46.310001373291, -116.16999816895, -81.870002746582)
WedgePart84.Position = Vector3.new(20.188226699829, 16.932540893555, 28.803112030029)
WedgePart84.Rotation = Vector3.new(-112.84999847412, -38.310001373291, 153.92999267578)
WedgePart84.Color = Color3.new(1, 1, 1)
WedgePart84.Size = Vector3.new(0.012047520838678, 0.037146523594856, 0.11043561249971)
WedgePart84.Anchored = true
WedgePart84.BottomSurface = Enum.SurfaceType.Smooth
WedgePart84.BrickColor = BrickColor.new("Institutional white")
WedgePart84.CanCollide = false
WedgePart84.Locked = false
WedgePart84.Material = Enum.Material.Neon
WedgePart84.brickColor = BrickColor.new("Institutional white")
WedgePart85.Parent = NeonParts
WedgePart85.CFrame = CFrame.new(20.2137947, 17.1247158, 29.1543713, 0.00149967743, -0.0871622041, -0.996193051, 0.917584419, 0.396145493, -0.033279527, 0.397538096, -0.914041281, 0.0805727765)
WedgePart85.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 66.650001525879)
WedgePart85.Position = Vector3.new(20.213794708252, 17.124715805054, 29.154371261597)
WedgePart85.Rotation = Vector3.new(22.440000534058, -85, 89.01000213623)
WedgePart85.Color = Color3.new(1, 1, 1)
WedgePart85.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart85.Anchored = true
WedgePart85.BottomSurface = Enum.SurfaceType.Smooth
WedgePart85.BrickColor = BrickColor.new("Institutional white")
WedgePart85.CanCollide = false
WedgePart85.Locked = false
WedgePart85.Material = Enum.Material.Neon
WedgePart85.brickColor = BrickColor.new("Institutional white")
WedgePart86.Parent = NeonParts
WedgePart86.CFrame = CFrame.new(20.2102375, 17.2857742, 29.1769524, -0.0436064638, -0.0754849315, -0.996193051, 0.990553379, -0.13302888, -0.0332795419, -0.130010352, -0.988233447, 0.0805727616)
WedgePart86.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 97.650001525879)
WedgePart86.Position = Vector3.new(20.210237503052, 17.285774230957, 29.176952362061)
WedgePart86.Rotation = Vector3.new(22.440000534058, -85, 120.01000213623)
WedgePart86.Color = Color3.new(1, 1, 1)
WedgePart86.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart86.Anchored = true
WedgePart86.BottomSurface = Enum.SurfaceType.Smooth
WedgePart86.BrickColor = BrickColor.new("Institutional white")
WedgePart86.CanCollide = false
WedgePart86.Locked = false
WedgePart86.Material = Enum.Material.Neon
WedgePart86.brickColor = BrickColor.new("Institutional white")
WedgePart87.Parent = NeonParts
WedgePart87.CFrame = CFrame.new(20.2097721, 16.9980984, 29.0523167, 0.046177648, -0.0739400163, -0.996193051, 0.582488894, 0.812157094, -0.033279635, 0.811525881, -0.578734636, 0.0805727392)
WedgePart87.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 35.650001525879)
WedgePart87.Position = Vector3.new(20.209772109985, 16.998098373413, 29.052316665649)
WedgePart87.Rotation = Vector3.new(22.440000534058, -85, 58.009998321533)
WedgePart87.Color = Color3.new(1, 1, 1)
WedgePart87.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart87.Anchored = true
WedgePart87.BottomSurface = Enum.SurfaceType.Smooth
WedgePart87.BrickColor = BrickColor.new("Institutional white")
WedgePart87.CanCollide = false
WedgePart87.Locked = false
WedgePart87.Material = Enum.Material.Neon
WedgePart87.brickColor = BrickColor.new("Institutional white")
WedgePart88.Parent = NeonParts
WedgePart88.CFrame = CFrame.new(20.1455669, 16.9822941, 28.7821445, 0.704806209, -0.344856858, 0.619937181, 0.6838153, 0.0976912081, -0.72308594, 0.188798696, 0.933557868, 0.304671764)
WedgePart88.Orientation = Vector3.new(46.310001373291, 63.830001831055, 81.870002746582)
WedgePart88.Position = Vector3.new(20.145566940308, 16.982294082642, 28.782144546509)
WedgePart88.Rotation = Vector3.new(67.150001525879, 38.310001373291, 26.069999694824)
WedgePart88.Color = Color3.new(1, 1, 1)
WedgePart88.Size = Vector3.new(0.012047520838678, 0.037146523594856, 0.027106922119856)
WedgePart88.Anchored = true
WedgePart88.BottomSurface = Enum.SurfaceType.Smooth
WedgePart88.BrickColor = BrickColor.new("Institutional white")
WedgePart88.CanCollide = false
WedgePart88.Locked = false
WedgePart88.Material = Enum.Material.Neon
WedgePart88.brickColor = BrickColor.new("Institutional white")
WedgePart89.Parent = NeonParts
WedgePart89.CFrame = CFrame.new(20.1658039, 17.1735134, 28.5811672, 0.0512577705, 0.0705134124, -0.996193051, -0.971222103, 0.235839382, -0.0332795307, 0.232594892, 0.969230473, 0.0805727839)
WedgePart89.Orientation = Vector3.new(1.9099999666214, -85.379997253418, -76.349998474121)
WedgePart89.Position = Vector3.new(20.165803909302, 17.173513412476, 28.581167221069)
WedgePart89.Rotation = Vector3.new(22.440000534058, -85, -53.990001678467)
WedgePart89.Color = Color3.new(1, 1, 1)
WedgePart89.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart89.Anchored = true
WedgePart89.BottomSurface = Enum.SurfaceType.Smooth
WedgePart89.BrickColor = BrickColor.new("Institutional white")
WedgePart89.CanCollide = false
WedgePart89.Locked = false
WedgePart89.Material = Enum.Material.Neon
WedgePart89.brickColor = BrickColor.new("Institutional white")
WedgePart90.Parent = NeonParts
WedgePart90.CFrame = CFrame.new(20.1993122, 16.9420948, 28.8999443, 0.0783433318, -0.0382337607, -0.996193051, 0.0635954812, 0.997420788, -0.0332795605, 0.994895995, -0.0607461371, 0.0805727467)
WedgePart90.Orientation = Vector3.new(1.9099999666214, -85.379997253418, 3.6500000953674)
WedgePart90.Position = Vector3.new(20.199312210083, 16.942094802856, 28.89994430542)
WedgePart90.Rotation = Vector3.new(22.440000534058, -85, 26.010000228882)
WedgePart90.Color = Color3.new(1, 1, 1)
WedgePart90.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart90.Anchored = true
WedgePart90.BottomSurface = Enum.SurfaceType.Smooth
WedgePart90.BrickColor = BrickColor.new("Institutional white")
WedgePart90.CanCollide = false
WedgePart90.Locked = false
WedgePart90.Material = Enum.Material.Neon
WedgePart90.brickColor = BrickColor.new("Institutional white")
WedgePart91.Parent = NeonParts
WedgePart91.CFrame = CFrame.new(20.1769066, 17.0315189, 28.6597652, 0.0808353573, 0.0326366425, -0.996193051, -0.698670328, 0.714669287, -0.0332795568, 0.710862458, 0.698700666, 0.0805728063)
WedgePart91.Orientation = Vector3.new(1.9099999666214, -85.379997253418, -44.349998474121)
WedgePart91.Position = Vector3.new(20.176906585693, 17.031518936157, 28.65976524353)
WedgePart91.Rotation = Vector3.new(22.440000534058, -85, -21.989999771118)
WedgePart91.Color = Color3.new(1, 1, 1)
WedgePart91.Size = Vector3.new(0.19276034832001, 0.0863406509161, 0.078309148550034)
WedgePart91.Anchored = true
WedgePart91.BottomSurface = Enum.SurfaceType.Smooth
WedgePart91.BrickColor = BrickColor.new("Institutional white")
WedgePart91.CanCollide = false
WedgePart91.Locked = false
WedgePart91.Material = Enum.Material.Neon
WedgePart91.brickColor = BrickColor.new("Institutional white")
WedgePart92.Parent = NeonParts
WedgePart92.CFrame = CFrame.new(20.1811619, 16.9607525, 28.7273254, -0.70479542, 0.344879448, 0.619936824, -0.683818281, -0.0976702347, -0.72308594, -0.188828081, -0.933551669, 0.30467242)
WedgePart92.Orientation = Vector3.new(46.310001373291, 63.830001831055, -98.129997253418)
WedgePart92.Position = Vector3.new(20.181161880493, 16.960752487183, 28.727325439453)
WedgePart92.Rotation = Vector3.new(67.150001525879, 38.310001373291, -153.92999267578)
WedgePart92.Color = Color3.new(1, 1, 1)
WedgePart92.Size = Vector3.new(0.012047520838678, 0.093970663845539, 0.06907245516777)
WedgePart92.Anchored = true
WedgePart92.BottomSurface = Enum.SurfaceType.Smooth
WedgePart92.BrickColor = BrickColor.new("Institutional white")
WedgePart92.CanCollide = false
WedgePart92.Locked = false
WedgePart92.Material = Enum.Material.Neon
WedgePart92.brickColor = BrickColor.new("Institutional white")

for i, v in pairs(Gun:GetDescendants()) do
	if v:IsA("Part") or v:IsA("WedgePart") then
		local weld = Instance.new("Weld")
		weld.Parent = v
		weld.Part0 = v
		weld.Part1 = Gun
		weld.C0 = v.CFrame:Inverse()
		weld.C1 = Gun.CFrame:Inverse()

		v.Anchored = false
	end
end

Gun.Anchored = false

GunGrip = CreateWeldOrSnapOrMotor("ManualWeld", Gun, RightArm, Gun, CF(0, -2.9, -1.45)*ANGLES(RAD(0),RAD(90),RAD(-45)), CF(0, 0, 0))

RAINBOWCOLOR = Color3.new(255, 0, 0)

NameMode2 = Instance.new("BillboardGui", Head)
NameMode2.AlwaysOnTop = true
NameMode2.Size = UDim2.new(7, 35, 3, 15)
NameMode2.StudsOffset = Vector3.new(0, 2, 0)
NameMode2.MaxDistance = 10000
NameMode2.Adornee = Head
NameMode2.Name = "Name2"

NameMode = Instance.new("TextLabel")
NameMode.BackgroundTransparency = 1
NameMode.TextScaled = true
NameMode.BorderSizePixel = 0
NameMode.Text = "Totally this is a Cannon"
NameMode.Font = "Arial"
NameMode.TextSize = 35
NameMode.TextStrokeTransparency = 0
NameMode.Size = UDim2.new(1, 0, 0.5, 0)
NameMode.Parent = NameMode2
NameMode.TextColor3 = Color3.fromRGB()

function attackone()
	ATTACK = true
	v665 = 16
	AttackGyro()
	local v11612 = 0
	local v11613 = 0.5
	local v11614 = 0.05
	for v11612 = 0, 0.5, 0.05 do
		Swait()
		RootJoint.C0 = ClerpHSC(RootJoint.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(180)) * CFrame.new(0 + 0.5 * math.cos(SINE / 50), 0, 0 - 0.5 * math.sin(SINE / 50)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(30)), 0.23333333333333)
		Neck.C0 = ClerpHSC(Neck.C0, CFrame.new(0, 1, 0) * CFrame.new() * CFrame.Angles(math.rad(15 - 110), math.rad(0), math.rad(-30 + 180)), 0.33333333333333)
		-- RightShoulder.C0 = ClerpHSC(RightShoulder.C0, CFrame.new(1.5, 1.5, 0) * CFrame.Angles(math.rad(90 + 30 - 70), math.rad(0), math.rad(0)) * CFrame.new(0, 1, 0), 0.33333333333333)
		RightShoulder.C0 = ClerpHSC(RightShoulder.C0, CFrame.new(1.5, 1.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(30)) * CFrame.new(0, 1, 0), 0.33333333333333)
		LeftShoulder.C0 = ClerpHSC(LeftShoulder.C0, CFrame.new(-1, 0.5, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)) * CFrame.new(-0.5, 0, 0), 0.33333333333333)
		RightHip.C0 = ClerpHSC(RightHip.C0, CFrame.new(1, -0.5, -0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(SINE / 74)), math.rad(80), math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(SINE / 37)), math.rad(0), math.rad(0)), 0.23333333333333)
		LeftHip.C0 = ClerpHSC(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(SINE / 54)), math.rad(-80), math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(SINE / 41)), math.rad(0), math.rad(0)), 0.23333333333333)
		-- v794.C0 = ClerpHSC(v794.C0, CFrame.new(0.05, -1, -0.15) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), 0.5)
	end
	v11613 = Effect
	v11614 = {}
	v11612 = 25
	v11614.Time = v11612
	v11614.EffectType = "Box"
	v11614.Size = Vector3.new()
	v11616 = 3
	v11769 = 3
	v11614.Size2 = Vector3.new(v11616, v11769, 3)
	v11614.Transparency = 0
	v11614.Transparency2 = 1
	v11614.CFrame = Hole.CFrame
	v11614.MoveToPos = nil
	v11614.RotationX = math.random(-1, 1)
	v11614.RotationY = math.random(-1, 1)
	v11614.RotationZ = math.random(-1, 1)
	v11614.Material = "Neon"
	v11614.Color = Color3.new(1, 1, 1)
	v11614.SoundID = 642890855
	v11614.SoundPitch = 1
	v11614.SoundVolume = 1
	v11614.UseBoomerangMath = true
	v11614.Boomerang = 0
	v11614.SizeBoomerang = 50
	EXCEPTWACKYEFFECT(v11614)
	local v11787 = {}
	v11787.Time = 25
	v11787.EffectType = "Box"
	v11787.Size = Vector3.new()
	v11787.Size2 = Vector3.new(3, 3, 3)
	v11787.Transparency = 0
	v11787.Transparency2 = 1
	v11787.CFrame = Hole.CFrame
	v11787.MoveToPos = nil
	v11787.RotationX = math.random(-1, 1)
	v11787.RotationY = math.random(-1, 1)
	v11787.RotationZ = math.random(-1, 1)
	v11787.Material = "Neon"
	v11787.Color = Color3.new(0, 0, 0)
	v11787.SoundID = nil
	v11787.SoundPitch = nil
	v11787.SoundVolume = nil
	v11787.UseBoomerangMath = true
	v11787.Boomerang = 0
	v11787.SizeBoomerang = 50
	EXCEPTWACKYEFFECT(v11787)
	local v12951 = 0
	local v11802 = 2
	local v11803 = 1
	for v11801 = 0, 2, 1 do
		local v11805 = {}
		v11805.Time = math.random(25, 50)
		v11805.EffectType = "Round Slash"
		v11805.Size = Vector3.new()
		v11768 = 0.1
		v11805.Size2 = Vector3.new(0.1, 0, v11768)
		v11805.Transparency = 0
		v11805.Transparency2 = 1
		v11742 = 360
		v11805.CFrame = Hole.CFrame * CFrame.Angles(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, v11742)))
		v11805.MoveToPos = nil
		v11805.RotationX = math.random(-1, 1)
		v11805.RotationY = math.random(-1, 1)
		v11805.RotationZ = math.random(-1, 1)
		v11805.Material = "Neon"
		v11805.Color = Color3.new(1, 1, 1)
		v11805.SoundID = nil
		v11805.SoundPitch = nil
		v11805.SoundVolume = nil
		v11805.UseBoomerangMath = true
		v11805.Boomerang = 0
		v11805.SizeBoomerang = 15
		EXCEPTWACKYEFFECT(v11805)
		local v11842 = {}
		v11842.Time = math.random(25, 50)
		v11842.EffectType = "Round Slash"
		v11842.Size = Vector3.new()
		v11842.Size2 = Vector3.new(0.1, 0, 0.1)
		v11842.Transparency = 0
		v11842.Transparency2 = 1
		v11842.CFrame = Hole.CFrame * CFrame.Angles(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
		v11842.MoveToPos = nil
		v11842.RotationX = math.random(-1, 1)
		v11842.RotationY = math.random(-1, 1)
		v11842.RotationZ = math.random(-1, 1)
		v11842.Material = "Neon"
		v11842.Color = Color3.new(0, 0, 0)
		v11842.SoundID = nil
		v11842.SoundPitch = nil
		v11842.SoundVolume = nil
		v11842.UseBoomerangMath = true
		v11842.Boomerang = 0
		v11842.SizeBoomerang = 15
		EXCEPTWACKYEFFECT(v11842)
	end
	v11802 = Mouse.Hit
	v12951 = Hole.Position - v11802.p
	local v12996 = v12951.Magnitude
	v11874 = "Neon"
	local v11885 = CreatePart(3, v741, v11874, 0, 0, AUDIOBASEDCOLOR, "Kill Beam", Vector3.new(1, v12996, 1))
	local v11893 = -v12996
	v11885.CFrame = CFrame.new(Hole.Position, v11802.p) * CFrame.new(0, 0, v11893 / 2) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	MakeForm(v11885, "Cyl")
	coroutine.resume(coroutine.create(function()
		local v11909 = 1
		local v11910 = 25
		for v11909 = v11909, v11910, 1 do
			swait()
			v11885.Transparency = v11909 / 25
		end
		v11910 = v11885
		v11910:Destroy()
	end))
	local v11915 = 1
	local v11916 = 4
	local v11917 = 1
	for v11915 = v11915, v11916, v11917 do
		coroutine.resume(coroutine.create(function()
			Lightning(Hole.Position, v11802.p, 15, 3.5, Color3.new(1, 1, 1), 25, 0, 1, 0, true, 55)
		end))
	end
	coroutine.resume(coroutine.create(function()
		Lightning(Hole.Position, v11802.p, 15, 3.5, Color3.new(1, 1, 1), 25, 0, 1, 0, true, 55)
		local v11956 = {}
		v11956.Time = 20
		v11956.EffectType = "Box"
		v11956.Size = Vector3.new()
		v11956.Size2 = Vector3.new(3, 3, 3)
		v11956.Transparency = 0
		v11956.Transparency2 = 1
		v11956.CFrame = v11802
		v11956.MoveToPos = nil
		v11956.RotationX = math.random(-1, 1)
		v11956.RotationY = math.random(-1, 1)
		v11956.RotationZ = math.random(-1, 1)
		v11956.Material = "Neon"
		v11956.Color = AUDIOBASEDCOLOR
		v11956.SoundID = 1474367957
		v11956.SoundPitch = 1
		v11956.SoundVolume = 1
		v11956.UseBoomerangMath = true
		v11956.Boomerang = 0
		v11956.SizeBoomerang = 50
		EXCEPTWACKYEFFECT(v11956)
		local v11977 = {}
		v11977.Time = 20
		v11977.EffectType = "Box"
		v11977.Size = Vector3.new()
		v11977.Size2 = Vector3.new(3, 3, 3)
		v11977.Transparency = 0
		v11977.Transparency2 = 1
		v11977.CFrame = v11802
		v11977.MoveToPos = nil
		v11977.RotationX = math.random(-1, 1)
		v11977.RotationY = math.random(-1, 1)
		v11977.RotationZ = math.random(-1, 1)
		v11977.Material = "Neon"
		v11977.Color = Color3.new(0, 0, 0)
		v11977.SoundID = nil
		v11977.SoundPitch = nil
		v11977.SoundVolume = nil
		v11977.UseBoomerangMath = true
		v11977.Boomerang = 0
		v11977.SizeBoomerang = 50
		EXCEPTWACKYEFFECT(v11977)
		local v12106 = 0
		local v11992 = 2
		local v11993 = 1
		for v11991 = v12106, v11992, v11993 do
			local v11995 = {}
			v11995.Time = math.random(25, 50)
			v11995.EffectType = "Round Slash"
			v11995.Size = Vector3.new()
			v11995.Size2 = Vector3.new(0.1, 0, 0.1)
			v11995.Transparency = 0
			v11995.Transparency2 = 1
			v11995.CFrame = v11802 * CFrame.Angles(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
			v11995.MoveToPos = nil
			v11995.RotationX = math.random(-1, 1)
			v11995.RotationY = math.random(-1, 1)
			v11995.RotationZ = math.random(-1, 1)
			v11995.Material = "Neon"
			v11995.Color = Color3.new(1, 1, 1)
			v11995.SoundID = nil
			v11995.SoundPitch = nil
			v11995.SoundVolume = nil
			v11995.UseBoomerangMath = true
			v11995.Boomerang = 0
			v11995.SizeBoomerang = 15
			EXCEPTWACKYEFFECT(v11995)
			local v12034 = {}
			v12034.Time = math.random(25, 50)
			v12034.EffectType = "Round Slash"
			v12034.Size = Vector3.new()
			v12034.Size2 = Vector3.new(0.1, 0, 0.1)
			v12034.Transparency = 0
			v12034.Transparency2 = 1
			v12034.CFrame = v11802 * CFrame.Angles(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
			v12034.MoveToPos = nil
			v12034.RotationX = math.random(-1, 1)
			v12034.RotationY = math.random(-1, 1)
			v12034.RotationZ = math.random(-1, 1)
			v12034.Material = "Neon"
			v12034.Color = Color3.new(0, 0, 0)
			v12034.SoundID = nil
			v12034.SoundPitch = nil
			v12034.SoundVolume = nil
			v12034.UseBoomerangMath = true
			v12034.Boomerang = 0
			v12034.SizeBoomerang = 15
			EXCEPTWACKYEFFECT(v12034)
		end
		--MDR(v11802.p,10)
	end))
	local v12149 = 0
	local v12150 = 0.5
	local v12151 = 0.075
	for v12149 = v12149, v12150, v12151 do
		swait()
		v11744 = 0
		v11743 = 0.5
		v11631 = SINE / 50
		v11700 = math.cos
		v11744 = 0
		v11743 = 0
		v11893 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(180)) * CFrame.new(v11744 + v11743 * v11700(v11631), v11744, v11743 - 0.5 * math.sin(SINE / 50))
		v11893 = 0.23333333333333
		RootJoint.C0 = ClerpHSC(RootJoint.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(180)) * CFrame.new(v11744 + v11743 * v11700(v11631), v11744, v11743 - 0.5 * math.sin(SINE / 50)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(30)), v11893)
		Neck.C0 = ClerpHSC(Neck.C0, CFrame.new(0, 1, 0) * CFrame.new() * CFrame.Angles(math.rad(10 - 110), math.rad(0), math.rad(-60 + 180)), 0.33333333333333)
		v11743 = 60
		RightShoulder.C0 = ClerpHSC(RightShoulder.C0, CFrame.new(1.5, 1.5, 0) * CFrame.Angles(math.rad(90 + 30), math.rad(0 + 20), math.rad(30)) * CFrame.new(0, 1, 0), 0.33333333333333)
		LeftShoulder.C0 = ClerpHSC(LeftShoulder.C0, CFrame.new(-1, 0.5, 0) * CFrame.Angles(math.rad(40), math.rad(5), math.rad(5)) * CFrame.new(-0.5, 0, 0), 0.33333333333333)
		RightHip.C0 = ClerpHSC(RightHip.C0, CFrame.new(1, -0.5, -0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(SINE / 74)), math.rad(80), math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(SINE / 37)), math.rad(0), math.rad(0)), 0.23333333333333)
		LeftHip.C0 = ClerpHSC(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(SINE / 54)), math.rad(-80), math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(SINE / 41)), math.rad(0), math.rad(0)), 0.23333333333333)
		-- v794.C0 = ClerpHSC(v794.C0, CFrame.new(0.05, -1, -0.15) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), 0.5)
	end
	while true do
		v12150 = Effect
		v12151 = {}
		v12149 = 25
		v12151.Time = v12149
		v12149 = "Box"
		v12151.EffectType = v12149
		v12149 = Vector3.new
		v12151.Size = v12149()
		v12153 = 3
		v12301 = 3
		v12151.Size2 = Vector3.new(v12153, v12301, 3)
		v12151.Transparency = 0
		v12151.Transparency2 = 1
		v12151.CFrame = Hole.CFrame
		v12151.MoveToPos = nil
		v12151.RotationX = math.random(-1, 1)
		v12151.RotationY = math.random(-1, 1)
		v12151.RotationZ = math.random(-1, 1)
		v12151.Material = "Neon"
		v12151.Color = Color3.new(1, 1, 1)
		v12151.SoundID = 642890855
		v12151.SoundPitch = 1
		v12151.SoundVolume = 1
		v12151.UseBoomerangMath = true
		v12151.Boomerang = 0
		v12151.SizeBoomerang = 50
		EXCEPTWACKYEFFECT(v12151)
		local v12319 = {}
		v12319.Time = 25
		v12319.EffectType = "Box"
		v12319.Size = Vector3.new()
		v12319.Size2 = Vector3.new(3, 3, 3)
		v12319.Transparency = 0
		v12319.Transparency2 = 1
		v12319.CFrame = Hole.CFrame
		v12319.MoveToPos = nil
		v12319.RotationX = math.random(-1, 1)
		v12319.RotationY = math.random(-1, 1)
		v12319.RotationZ = math.random(-1, 1)
		v12319.Material = "Neon"
		v12319.Color = Color3.new(0, 0, 0)
		v12319.SoundID = nil
		v12319.SoundPitch = nil
		v12319.SoundVolume = nil
		v12319.UseBoomerangMath = true
		v12319.Boomerang = 0
		v12319.SizeBoomerang = 50
		EXCEPTWACKYEFFECT(v12319)
		local v13115 = 0
		local v12334 = 2
		local v12335 = 1
		for v12333 = v13115, v12334, v12335 do
			local v12337 = {}
			v12337.Time = math.random(25, 50)
			v12337.EffectType = "Round Slash"
			v12337.Size = Vector3.new()
			v12300 = 0.1
			v12337.Size2 = Vector3.new(0.1, 0, v12300)
			v12337.Transparency = 0
			v12337.Transparency2 = 1
			v12274 = 360
			v12337.CFrame = Hole.CFrame * CFrame.Angles(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, v12274)))
			v12337.MoveToPos = nil
			v12337.RotationX = math.random(-1, 1)
			v12337.RotationY = math.random(-1, 1)
			v12337.RotationZ = math.random(-1, 1)
			v12337.Material = "Neon"
			v12337.Color = Color3.new(1, 1, 1)
			v12337.SoundID = nil
			v12337.SoundPitch = nil
			v12337.SoundVolume = nil
			v12337.UseBoomerangMath = true
			v12337.Boomerang = 0
			v12337.SizeBoomerang = 15
			EXCEPTWACKYEFFECT(v12337)
			local v12374 = {}
			v12374.Time = math.random(25, 50)
			v12374.EffectType = "Round Slash"
			v12374.Size = Vector3.new()
			v12374.Size2 = Vector3.new(0.1, 0, 0.1)
			v12374.Transparency = 0
			v12374.Transparency2 = 1
			v12374.CFrame = Hole.CFrame * CFrame.Angles(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
			v12374.MoveToPos = nil
			v12374.RotationX = math.random(-1, 1)
			v12374.RotationY = math.random(-1, 1)
			v12374.RotationZ = math.random(-1, 1)
			v12374.Material = "Neon"
			v12374.Color = Color3.new(0, 0, 0)
			v12374.SoundID = nil
			v12374.SoundPitch = nil
			v12374.SoundVolume = nil
			v12374.UseBoomerangMath = true
			v12374.Boomerang = 0
			v12374.SizeBoomerang = 15
			EXCEPTWACKYEFFECT(v12374)
		end
		v12335 = v7375
		v12334 = Mouse.Hit
		v13115 = Hole.Position - v12334.p
		local v13160 = v13115.Magnitude
		v12406 = "Neon"
		local v12417 = CreatePart(3, v741, v12406, 0, 0, AUDIOBASEDCOLOR, "Kill Beam", Vector3.new(1, v13160, 1))
		local v12425 = -v13160
		v12417.CFrame = CFrame.new(Hole.Position, v12334.p) * CFrame.new(0, 0, v12425 / 2) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
		MakeForm(v12417, "Cyl")
		coroutine.resume(coroutine.create(function()
			local v12441 = 1
			local v12442 = 25
			for v12441 = v12441, v12442, 1 do
				swait()
				v12417.Transparency = v12441 / 25
			end
			v12442 = v12417
			v12442:Destroy()
		end))
		local v12447 = 1
		local v12448 = 4
		local v12449 = 1
		for v12447 = v12447, v12448, v12449 do
			coroutine.resume(coroutine.create(function()
				Lightning(Hole.Position, v12334.p, 15, 3.5, Color3.new(1, 1, 1), 25, 0, 1, 0, true, 55)
			end))
		end
		v12448 = coroutine.resume
		v12449 = coroutine.create
		coroutine.resume(coroutine.create(function()
			Lightning(Hole.Position, v12334.p, 15, 3.5, Color3.new(1, 1, 1), 25, 0, 1, 0, true, 55)
			local v12488 = {}
			v12488.Time = 20
			v12488.EffectType = "Box"
			v12488.Size = Vector3.new()
			v12488.Size2 = Vector3.new(3, 3, 3)
			v12488.Transparency = 0
			v12488.Transparency2 = 1
			v12488.CFrame = v12334
			v12488.MoveToPos = nil
			v12488.RotationX = math.random(-1, 1)
			v12488.RotationY = math.random(-1, 1)
			v12488.RotationZ = math.random(-1, 1)
			v12488.Material = "Neon"
			v12488.Color = AUDIOBASEDCOLOR
			v12488.SoundID = 1474367957
			v12488.SoundPitch = 1
			v12488.SoundVolume = 1
			v12488.UseBoomerangMath = true
			v12488.Boomerang = 0
			v12488.SizeBoomerang = 50
			EXCEPTWACKYEFFECT(v12488)
			local v12509 = {}
			v12509.Time = 20
			v12509.EffectType = "Box"
			v12509.Size = Vector3.new()
			v12509.Size2 = Vector3.new(3, 3, 3)
			v12509.Transparency = 0
			v12509.Transparency2 = 1
			v12509.CFrame = v12334
			v12509.MoveToPos = nil
			v12509.RotationX = math.random(-1, 1)
			v12509.RotationY = math.random(-1, 1)
			v12509.RotationZ = math.random(-1, 1)
			v12509.Material = "Neon"
			v12509.Color = Color3.new(0, 0, 0)
			v12509.SoundID = nil
			v12509.SoundPitch = nil
			v12509.SoundVolume = nil
			v12509.UseBoomerangMath = true
			v12509.Boomerang = 0
			v12509.SizeBoomerang = 50
			EXCEPTWACKYEFFECT(v12509)
			local v12638 = 0
			local v12524 = 2
			local v12525 = 1
			for v12523 = v12638, v12524, v12525 do
				local v12527 = {}
				v12527.Time = math.random(25, 50)
				v12527.EffectType = "Round Slash"
				v12527.Size = Vector3.new()
				v12527.Size2 = Vector3.new(0.1, 0, 0.1)
				v12527.Transparency = 0
				v12527.Transparency2 = 1
				v12527.CFrame = v12334 * CFrame.Angles(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
				v12527.MoveToPos = nil
				v12527.RotationX = math.random(-1, 1)
				v12527.RotationY = math.random(-1, 1)
				v12527.RotationZ = math.random(-1, 1)
				v12527.Material = "Neon"
				v12527.Color = Color3.new(1, 1, 1)
				v12527.SoundID = nil
				v12527.SoundPitch = nil
				v12527.SoundVolume = nil
				v12527.UseBoomerangMath = true
				v12527.Boomerang = 0
				v12527.SizeBoomerang = 15
				EXCEPTWACKYEFFECT(v12527)
				local v12566 = {}
				v12566.Time = math.random(25, 50)
				v12566.EffectType = "Round Slash"
				v12566.Size = Vector3.new()
				v12566.Size2 = Vector3.new(0.1, 0, 0.1)
				v12566.Transparency = 0
				v12566.Transparency2 = 1
				v12566.CFrame = v12334 * CFrame.Angles(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
				v12566.MoveToPos = nil
				v12566.RotationX = math.random(-1, 1)
				v12566.RotationY = math.random(-1, 1)
				v12566.RotationZ = math.random(-1, 1)
				v12566.Material = "Neon"
				v12566.Color = Color3.new(0, 0, 0)
				v12566.SoundID = nil
				v12566.SoundPitch = nil
				v12566.SoundVolume = nil
				v12566.UseBoomerangMath = true
				v12566.Boomerang = 0
				v12566.SizeBoomerang = 15
				EXCEPTWACKYEFFECT(v12566)
			end
			--MDR(v12334.p,10)
		end))
		local v12682 = 0.5
		for v12681 = 0, v12682, 0.075 do
			swait()
			v12276 = 0
			v12275 = 0.5
			v12164 = SINE / 50
			v12232 = math.cos
			v12276 = 0
			v12275 = 0
			v12425 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(180)) * CFrame.new(v12276 + v12275 * v12232(v12164), v12276, v12275 - 0.5 * math.sin(SINE / 50))
			v12425 = 0.23333333333333
			RootJoint.C0 = ClerpHSC(RootJoint.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(180)) * CFrame.new(v12276 + v12275 * v12232(v12164), v12276, v12275 - 0.5 * math.sin(SINE / 50)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(30)), v12425)
			Neck.C0 = ClerpHSC(Neck.C0, CFrame.new(0, 1, 0) * CFrame.new() * CFrame.Angles(math.rad(10 - 110), math.rad(0), math.rad(-60 + 180)), 0.33333333333333)
			v12275 = 60
			RightShoulder.C0 = ClerpHSC(RightShoulder.C0, CFrame.new(1.5, 1.5, 0) * CFrame.Angles(math.rad(90 + 30), math.rad(0 + 20), math.rad(30)) * CFrame.new(0, 1, 0), 0.33333333333333)
			LeftShoulder.C0 = ClerpHSC(LeftShoulder.C0, CFrame.new(-1, 0.5, 0) * CFrame.Angles(math.rad(40), math.rad(5), math.rad(5)) * CFrame.new(-0.5, 0, 0), 0.33333333333333)
			RightHip.C0 = ClerpHSC(RightHip.C0, CFrame.new(1, -0.5, -0.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(SINE / 74)), math.rad(80), math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(SINE / 37)), math.rad(0), math.rad(0)), 0.23333333333333)
			LeftHip.C0 = ClerpHSC(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(SINE / 54)), math.rad(-80), math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(SINE / 41)), math.rad(0), math.rad(0)), 0.23333333333333)
			-- v794.C0 = ClerpHSC(v794.C0, CFrame.new(0.05, -1, -0.15) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), 0.5)
		end
		v12682 = HOLD
		if not HOLD then
			break
		end
	end
	v12334 = 50
	v665 = v12334
	v12334 = false
	ATTACK = v12334
end

Mouse.Button1Down:connect(function(Mouse)
	HOLD = true
	if ATTACK == false and ModeCodeName ~= "Vaporwave" and ModeCodeName ~= "NulledXD" and ModeCodeName ~= "Rolling girl" and ModeCodeName ~= "Fave" and ModeCodeName ~= "MemeLol" then
		attackone()
	end
end)

Mouse.Button1Up:connect(function(Mouse)
	HOLD = false
end)

coroutine.resume(coroutine.create(function()
	while true do
		for i = 0, 1, 0.01 do
			wait()
			RAINBOWCOLOR = Color3.fromHSV(i,1,1)
		end
	end
end))

while true do
	wait()

	for _, v in pairs(NeonParts:GetChildren()) do
		if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("WedgePart") then
			v.Color = RAINBOWCOLOR
		end
	end

	NameMode.TextColor3 = RAINBOWCOLOR
end