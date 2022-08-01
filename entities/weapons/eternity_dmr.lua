AddCSLuaFile()

SWEP.Base 				= "eternity_firearm_base"

SWEP.PrintName 			= "M393 DMR"
SWEP.Author 			= "TankNut"

SWEP.ViewModel 			= Model("models/vuthakral/halo/weapons/c_hum_dmr.mdl")
SWEP.WorldModel 		= Model("models/vuthakral/halo/weapons/w_dmr.mdl")

SWEP.HoldType 			= "ar2"
SWEP.HoldTypeLowered 	= "passive"

SWEP.Firemodes 			= {
	{Mode = "firemode_semi"}
}

SWEP.Animated 			= true
SWEP.AnimatedADS 		= true

SWEP.AmmoGroup 			= "308"

SWEP.ClipSize 			= 15
SWEP.Delay 				= 0.33

SWEP.HipCone 			= 0.5
SWEP.AimCone 			= 0.003

SWEP.Recoil 			= 1.2

SWEP.FireSound 			= Sound("weapon_dmr")

SWEP.RecoilMult 		= 0

SWEP.Scope 				= {
	Enabled = true,
	Zoom = {3, 3}
}

SWEP.DefaultOffset = {
	ang = Angle(0, 0, 0),
	pos = Vector(1, -1, -1)
}

SWEP.LoweredOffset = {
	ang = Angle(-10, 35, 0),
	pos = Vector(2, 0, -2)
}

SWEP.AimOffset = {
	ang = Angle(0, 0, 0),
	pos = Vector(-3.56, -5, -1.33)
}

SWEP.Animations = {
	fire = {"fire0", "fire1", "fire2"},
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

		local scale = .23

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

		pos, ang = LocalToWorld(Vector(7.4, 0, 25.8) * scale, Angle(0, -90, 90), pos, ang)

		cam.Start3D2D(pos, ang, 0.015 * scale)
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

function SWEP:DrawHUDBackground()
	if self.Scoped then
		local w = ScrW()
		local h = ScrH()

		local ratio = 5 / 5
		local width = ratio * h

		local x = (w * 0.5) - (width * 0.5)

		surface.SetDrawColor(10, 10, 10, 200)

		surface.DrawRect(0, 0, x, h)
		surface.DrawRect(x + width, 0, x, h)

		surface.DrawLine(w * 0.5, 0, w * 0.5, h)
		surface.DrawLine(0, h * 0.5, w, h * 0.5)

		surface.SetTexture(surface.GetTextureID("hud/scopes/battle_rifle_scope"))
		surface.DrawTexturedRect((w * 0.5) - (width * 0.5), 0, width, h)
	end
end