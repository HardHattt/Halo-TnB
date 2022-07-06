AddCSLuaFile()

SWEP.Base 				= "eternity_firearm_base"

SWEP.PrintName 			= "M6G PDWS"
SWEP.Author 			= "TankNut"

SWEP.ViewModel 			= Model("models/snowysnowtime/vuthakral/c_hum_m6g.mdl")
SWEP.WorldModel 		= Model("models/snowysnowtime/vuthakral/w_m6g.mdl")

SWEP.HoldType 			= "revolver"
SWEP.HoldTypeLowered 	= "normal"

SWEP.Firemodes 			= {
	{Mode = "firemode_semi"}
}

SWEP.Animated 			= true
SWEP.AnimatedADS 		= true

SWEP.AmmoGroup 			= "127x40mm"

SWEP.ClipSize 			= 8
SWEP.Delay 				= 0.25

SWEP.HipCone 			= 0.05
SWEP.AimCone 			= 0.01

SWEP.Recoil 			= 1

SWEP.FireSound 			= Sound("weapon_m6g")

SWEP.RecoilMult 		= 0

SWEP.Scope 				= {
	Enabled = true,
	Zoom = 2
}

SWEP.DefaultOffset = {
	ang = Angle(0, 0, 0),
	pos = Vector(1, -3, -1)
}

SWEP.LoweredOffset = {
	ang = Angle(-15, 0, 0),
	pos = Vector(2, 0, 0)
}

SWEP.AimOffset = {
	ang = Angle(0, 0, 0),
	pos = Vector(-4, -5, -0)
}

SWEP.Animations = {
	fire = {"fire_rand1", "fire_rand2", "fire_rand3"},
	reload = "reload",
	draw = "draw"
}

function SWEP:DrawHUDBackground()
	if self.Scoped then
		local w = ScrW()
		local h = ScrH()

		local ratio = 4 / 3
		local width = ratio * h

		local x = (w * 0.5) - (width * 0.5)

		surface.SetDrawColor(3, 3, 3, 250)

		surface.DrawRect(0, 0, x, h)
		surface.DrawRect(x + width, 0, x, h)

		surface.DrawLine(w * 0.5, 0, w * 0.5, h)
		surface.DrawLine(0, h * 0.5, w, h * 0.5)

		surface.SetTexture(surface.GetTextureID("hud/scopes/m7s_scope"))
		surface.DrawTexturedRect((w * 0.5) - (width * 0.5), 0, width, h)
	end
end