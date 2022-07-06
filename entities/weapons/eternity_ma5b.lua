AddCSLuaFile()

SWEP.Base 				= "eternity_firearm_base"

SWEP.PrintName 			= "MA5B"
SWEP.Author 			= "TankNut"

SWEP.ViewModel 			= Model("models/vuthakral/halo/weapons/c_hum_ma5b.mdl")
SWEP.WorldModel 		= Model("models/vuthakral/halo/weapons/w_ma5b.mdl")

SWEP.HoldType 			= "ar2"
SWEP.HoldTypeLowered 	= "passive"

SWEP.Firemodes 			= {
	{Mode = "firemode_auto"}
}

SWEP.Animated 			= true
SWEP.AnimatedADS 		= true

SWEP.AmmoGroup 			= "762x51mm"

SWEP.ClipSize 			= 60
SWEP.Delay 				= 0.070

SWEP.HipCone 			= 0.4
SWEP.AimCone 			= 0.03

SWEP.Recoil 			= 1.2

SWEP.FireSound 			= Sound("vuthakral/halo/weapons/ma5b/fire0.wav")

SWEP.RecoilMult 		= 0

SWEP.DefaultOffset = {
	ang = Angle(0, 0, 0),
	pos = Vector(1, 2.5, 0)
}

SWEP.LoweredOffset = {
	ang = Angle(-5, 35, 0),
	pos = Vector(2, 0, -2)
}

SWEP.AimOffset = {
	ang = Angle(0, 0, 0),
	pos = Vector(-1, -3, -1)
}

SWEP.Animations = {
	fire = {"fire_rand1", "fire_rand2", "fire_rand3"},
	reload = "reload",
	reload_empty = "reload_empty",
	draw = "draw"
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

		pos, ang = LocalToWorld(Vector(30, 5, 30.5) * scale, Angle(180, 90, -116.362), pos, ang)

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