AddCSLuaFile()

SWEP.Base 				= "eternity_firearm_base"

SWEP.PrintName 			= "Model 33 Revolver"
SWEP.Author 			= "TankNut"

SWEP.ViewModel 			= Model("models/weapons/v_444.mdl")
SWEP.WorldModel 		= Model("models/halo/halo_aerial/weapons/magnum.mdl")

SWEP.HoldType 			= "revolver"
SWEP.HoldTypeLowered 	= "normal"

SWEP.Firemodes 			= {
	{Mode = "firemode_semi"}
}

SWEP.Animated 			= true
SWEP.AnimatedADS 		= true

SWEP.AmmoGroup 			= "127x40mm"

SWEP.ClipSize 			= 4
SWEP.Delay 				= 0.4

SWEP.HipCone 			= 0.03
SWEP.AimCone 			= 0.01

SWEP.Recoil 			= 0.9

SWEP.FireSound 			= Sound("halo/halo_4/magnum_fire [16].ogg")

SWEP.RecoilMult 		= 0

SWEP.DefaultOffset = {
	ang = Angle(0, 0, 0),
	pos = Vector(2, 2, 1)
}

SWEP.LoweredOffset = {
	ang = Angle(-15, 0, 0),
	pos = Vector(2, 3, 1)
}

SWEP.AimOffset = {
	ang = Angle(0, 0, 0),
	pos = Vector(-1, 2, 1)
}

SWEP.Animations = {
	fire = {"fire"},
	reload = "reload",
	draw = "draw"
}
