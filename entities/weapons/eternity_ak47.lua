AddCSLuaFile()

SWEP.Base 				= "eternity_firearm_base"

SWEP.PrintName 			= "AK47"
SWEP.Author 			= "TankNut"

SWEP.ViewModel 			= Model("models/weapons/cstrike/c_rif_ak47.mdl")
SWEP.WorldModel 		= Model("models/weapons/w_rif_ak47.mdl")

SWEP.HoldType 			= "ar2"
SWEP.HoldTypeLowered 	= "passive"

SWEP.Firemodes 			= {
	{Mode = "firemode_auto"}
}

SWEP.Animated 			= true
SWEP.AnimatedADS 		= true

SWEP.AmmoGroup 			= "762x51mm"

SWEP.ClipSize 			= 30
SWEP.Delay 				= 0.1

SWEP.HipCone 			= 0.4
SWEP.AimCone 			= 0.02

SWEP.Recoil 			= 1.5

SWEP.FireSound 			= Sound("weapons/ak47/ak47-1.wav")

SWEP.RecoilMult 		= 0

SWEP.DefaultOffset = {
	ang = Angle(0, 0, 0),
	pos = Vector(-1, -7, 2)
}

SWEP.LoweredOffset = {
	ang = Angle(-5, 35, 0),
	pos = Vector(2, 0, -2)
}

SWEP.AimOffset = {
	ang = Angle(2.5, 0, 0),
	pos = Vector(-6.6, -13, 2.6)
}

SWEP.Animations = {
	fire = {"ak47_fire1, ak47_fire2, ak47_fire3"},
	reload = "ak47_reload",
	draw = "ak47_draw"
}

if CLIENT then
	local fill = Color(37, 141, 170)
	local outline = Color(16, 60, 80)

	function SWEP:DrawAmmoCounter(ent)
		if not IsValid(ent) then
			return
		end

		local scale = 1

		if ent:IsWeapon() then
			local owner = ent.Owner

			if IsValid(owner) and owner:IsPlayer() then
				local data = owner:ModelData()._base

				if data and data.Scale then
					scale = data.Scale
				end
			end
		end

		local index = ent:LookupBone("b_gun")
		if not index then
			return
		end

		local matrix = ent:GetBoneMatrix(index)
		local pos = matrix:GetTranslation()
		local ang = matrix:GetAngles()

		pos, ang = LocalToWorld(Vector(5, 5, 5) * scale, Angle(180, 90, -116.362), pos, ang)

		cam.Start3D2D(pos, ang, 0.025 * scale)
			local ammo = self:Clip1()

			if ammo < 10 then
				ammo = "0" .. ammo
			end

			draw.SimpleTextOutlined(ammo, "reach_ammocounter", 0, 12.5, fill, TEXT_ALIGN_CENTER, TEXT_ALIGN_BOTTOM, 1, outline)
		cam.End3D2D()
	end

	function SWEP:PostDrawViewModel()
		if LocalPlayer() != self.Owner then
			return
		end

		self.BaseClass.PostDrawViewModel(self)

		self:DrawAmmoCounter(self.VM)
	end

	function SWEP:DrawWorldModelTranslucent()
		self.BaseClass.DrawWorldModelTranslucent(self)

		self:DrawAmmoCounter(self)
	end
end