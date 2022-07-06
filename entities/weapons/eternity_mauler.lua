AddCSLuaFile()

SWEP.Base 				= "eternity_firearm_base"

SWEP.PrintName 			= "Type-52 Mauler"
SWEP.Author 			= "TankNut"

SWEP.ViewModel 			= Model("models/snowysnowtime/vuthakral/c_hum_mauler.mdl")
SWEP.WorldModel 		= Model("models/snowysnowtime/vuthakral/w_mauler.mdl")

SWEP.HoldType 			= "revolver"
SWEP.HoldTypeLowered 	= "normal"

SWEP.Firemodes 			= {
	{Mode = "firemode_semi"}
}

SWEP.Animated 			= true
SWEP.AnimatedADS 		= true

SWEP.AmmoGroup 			= "8ga"

SWEP.ClipSize 			= 5
SWEP.Delay 				= .4

SWEP.HipCone 			= 10
SWEP.AimCone 			= 2

SWEP.Recoil 			= 1.5

SWEP.FireSound 			= Sound("vuthakral/halo/weapons/mauler/fire1.wav")

SWEP.RecoilMult 		= 0

SWEP.DefaultOffset = {
	ang = Angle(0, 0, 0),
	pos = Vector(1, -1, -1)
}

SWEP.LoweredOffset = {
	ang = Angle(-10, 35, 0),
	pos = Vector(2, 0, -1)
}

SWEP.AimOffset = {
	ang = Angle(0, 0, 0),
	pos = Vector(-1, -3, -1)
}

SWEP.Animations = {
	fire = {"fire0", "fire1", "fire2"},
	reload = "reload",
	reload_empty = "reload",
	draw = "draw"
}