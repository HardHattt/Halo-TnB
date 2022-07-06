AddCSLuaFile()

SWEP.Base 				= "eternity_firearm_base"

SWEP.PrintName 			= "Type-50 Beam Rifle"
SWEP.Author 			= "TankNut"

SWEP.ViewModel 			= Model("models/vuthakral/halo/weapons/c_hum_t50srs.mdl")
SWEP.WorldModel 		= Model("models/vuthakral/halo/weapons/w_t50srs.mdl")

SWEP.HoldType 			= "shotgun"
SWEP.HoldTypeLowered 	= "passive"

SWEP.Firemodes 			= {
	{Mode = "firemode_semi"}
}

SWEP.Animated 			= true
SWEP.AnimatedADS 		= true

SWEP.AmmoGroup 			= "beamcharge"

SWEP.ClipSize 			= 2
SWEP.Delay 				= 1.5

SWEP.HipCone 			= 0.5
SWEP.AimCone 			= 0

SWEP.Recoil 			= 1.2

SWEP.FireSound 			= Sound("vuthakral/halo/weapons/beamrifle/cov_snip_shot10.wav")

SWEP.RecoilMult 		= 0

SWEP.Scope 				= {
	Enabled = true,
	Zoom = {5, 8, 20}
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
	pos = Vector(-4.68, -5, -1.155)
}

SWEP.Animations = {
	fire = {"fire_fp", "fire_fp1", "fire_fp2"},
	draw = "draw",
	reload = "overheat_start",
}

function SWEP:DrawHUDBackground()
	if self.Scoped then
		local w = ScrW()
		local h = ScrH()

		local ratio = 4 / 2
		local width = ratio * h

		local x = (w * 0.5) - (width * 0.5)

		surface.SetDrawColor(3, 3, 3, 250)

		surface.DrawRect(0, 0, x, h)
		surface.DrawRect(x + width, 0, x, h)

		surface.DrawLine(w * 0.5, 0, w * 0.5, h)
		surface.DrawLine(0, h * 0.5, w, h * 0.5)

		surface.SetTexture(surface.GetTextureID("hud/scopes/beam_rifle_scope"))
		surface.DrawTexturedRect((w * 0.5) - (width * 0.5), 0, width, h)
	end
end