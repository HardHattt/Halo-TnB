AddCSLuaFile()

SWEP.Base 				= "eternity_firearm_base"

SWEP.PrintName 			= "T-25 GL"
SWEP.Author 			= "TankNut"

SWEP.ViewModel 			= Model("models/vuthakral/halo/weapons/c_hum_bruteshot.mdl")
SWEP.WorldModel 		= Model("models/vuthakral/halo/weapons/w_bruteshot.mdl")

SWEP.HoldType 			= "physgun"
SWEP.HoldTypeLowered 	= "passive"

SWEP.Firemodes 			= {
	{Mode = "firemode_semi"}
}

SWEP.Animated 			= true
SWEP.AnimatedADS 		= true

SWEP.AmmoGroup 			= "40mm"

SWEP.ClipSize 			= 6
SWEP.Delay 				= .6

SWEP.HipCone 			= 0.05
SWEP.AimCone 			= 0

SWEP.Recoil 			= 1

SWEP.FireSound 			= Sound("h3/brute_fire_new2_4.wav")

SWEP.RecoilMult 		= 0

SWEP.DefaultOffset = {
	ang = Angle(0, 0, 0),
	pos = Vector(1, -1, -1)
}

SWEP.LoweredOffset = {
	ang = Angle(-15, 25, 0),
	pos = Vector(2, 0, 0)
}

SWEP.AimOffset = {
	ang = Angle(0, 0, 0),
	pos = Vector(-2, -3, -1)
}

SWEP.Animations = {
	fire = {"fire0", "fire1", "fire2"},
	reload = "reload",
	draw = "draw"
}

if CLIENT then
	local fill = Color(37, 141, 170)
	local outline = Color(16, 60, 80)

	local err = Color(255, 0, 0)
	local erroutline = Color(100, 0, 0)

	local function TargetSolution(target, origin, velocity, gravity, high)
		local elevation = target.z - origin.z
		local distance = Vector(target.x, target.y, 0):Distance(Vector(origin.x, origin.y, 0))

		gravity = -(gravity).z

		if high then
			return math.atan(((velocity ^ 2) * (1 + math.sqrt(1 - (gravity * (gravity * (distance ^ 2) + 2 * (velocity ^ 2) * elevation)) / (velocity ^ 4)))) / (gravity * distance))
		else
			return math.atan(((velocity ^ 2) * (1 - math.sqrt(1 - (gravity * (gravity * (distance ^ 2) + 2 * (velocity ^ 2) * elevation)) / (velocity ^ 4)))) / (gravity * distance))
		end
	end

	function SWEP:DrawAmmoCounter(ent)
		if not IsValid(ent) then
			return
		end

		local scale = .23

		if ent:IsWeapon() then
			local owner = ent.Owner

			weapon = ent

			if IsValid(owner) and owner:IsPlayer() then
				scale = owner:ModelData()._base.Scale or 1
			end
		end

		local index = ent:LookupBone("b_gun")
		if not index then
			return
		end

		local matrix = ent:GetBoneMatrix(index)
		local pos = matrix:GetTranslation()
		local ang = matrix:GetAngles()

		local num = 0
		local mode
		local problem = false

		if self:GetAmmoType() == "" or self:Clip1() == 0 then
			mode = "AMMO"
			problem = true
		elseif self:ShouldLower() then
			mode = "STANDBY"
		elseif self:AimingDownSights() then
			local ply = self.Owner
			local ammo = GAMEMODE:GetAmmo(self:GetAmmoType())
			local origin = LocalToWorld(ammo.Offset, Angle(), ply:GetShootPos(), ply:EyeAngles())

			local velocity = scripted_ents.GetMember(ammo.Entity, "Velocity")
			local gravity = physenv.GetGravity() * scripted_ents.GetMember(ammo.Entity, "GravityMultiplier")

			local solve = TargetSolution(ply:GetEyeTrace().HitPos, origin, velocity, gravity, false)

			if solve == solve then
				num = math.Round(math.deg(solve))
				mode = "SOLVE"
			else
				mode = "RANGE"
				problem = true
			end
		else
			num = math.Round(-ent:GetAngles().p)
			mode = "READY"
		end

		local len = #tostring(math.abs(num))

		if len < 3 then
			local prefix = num < 0 and "-" or ""

			num = prefix .. string.rep("0", 3 - len) .. math.abs(num)
		end

		local data = {
			{Vector(25, 7.8, 25), Angle(0, -90, 48.902), num},
			{Vector(23.85, 8.2, 23.6), Angle(0, -90, 48.902), mode, problem}
		}

		for _, v in pairs(data) do
			local pos2, ang2 = LocalToWorld(v[1] * scale, v[2], pos, ang)

			cam.Start3D2D(pos2, ang2, 0.01 * scale)
				draw.SimpleTextOutlined(v[3], "reach_ammocounter", 0, 12.5, v[4] and err or fill, TEXT_ALIGN_CENTER, TEXT_ALIGN_BOTTOM, 1, v[4] and erroutline or outline)
			cam.End3D2D()
		end
	end

	function SWEP:PostDrawViewModel()
		if LocalPlayer() != self.Owner then
			return
		end

		self.BaseClass.PostDrawViewModel(self)

		self:DrawAmmoCounter(self.VM)
	end
end