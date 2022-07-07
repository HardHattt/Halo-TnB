AddCSLuaFile()
DEFINE_BASECLASS("eternity_firearm_base")

SWEP.Base 				= "eternity_firearm_base"

SWEP.PrintName 			= "Type-31 Needle Rifle"
SWEP.Author 			= "TankNut"

SWEP.ViewModel 			= Model("models/vuthakral/halo/weapons/c_hum_needlerifle.mdl")
SWEP.WorldModel 		= Model("models/vuthakral/halo/weapons/w_needlerifle.mdl")

SWEP.HoldType 			= "ar2"
SWEP.HoldTypeLowered 	= "passive"

SWEP.Firemodes 			= {
	{Mode = "firemode_needler"}
}

SWEP.Animated 			= true
SWEP.AnimatedADS 		= true

SWEP.AmmoGroup 			= "needler"

SWEP.ClipSize 			= 21

SWEP.DelayRamp 			= 0.8

SWEP.MinDelay 			= .25
SWEP.MaxDelay 			= .25

SWEP.HipCone 			= 0.05
SWEP.AimCone 			= 0.01

SWEP.Recoil 			= 0.2

SWEP.FireSound 			= Sound("vuthakral/halo/weapons/needlerifle/fire2.wav")

SWEP.RecoilMult 		= 0

SWEP.Scope 				= {
	Enabled = true,
	Zoom = {3.5, 3}
}

SWEP.DefaultOffset = {
	ang = Angle(0, 0, 0),
	pos = Vector(2, 2, -3)
}

SWEP.LoweredOffset = {
	ang = Angle(-10, 0, 0),
	pos = Vector(2, 1, -1)
}

SWEP.AimOffset = {
	ang = Angle(0, 0, 0),
	pos = Vector(-4, 0, -3)
}

SWEP.Animations = {
	fire = {"fire0", "fire1", "fire2"},
	draw = "draw",
	reload = "reload"
}

if CLIENT then
	function SWEP:Think()
		BaseClass.Think(self)

		if IsValid(self.VM) then
			self.VM:SetPoseParameter("drc_ammo", self:Clip1() / self.ClipSize)
		end
	end
end

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

		surface.SetTexture(surface.GetTextureID("hud/scopes/carbine_scope"))
		surface.DrawTexturedRect((w * 0.5) - (width * 0.5), 0, width, h)
	end
end