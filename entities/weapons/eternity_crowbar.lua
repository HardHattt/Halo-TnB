AddCSLuaFile()
DEFINE_BASECLASS("eternity_melee_base")

SWEP.Base 				= "eternity_melee_base"

SWEP.PrintName 			= "Crowbar"
SWEP.Author 			= "TankNut"

SWEP.ViewModel 			= Model("models/weapons/c_crowbar.mdl")
SWEP.WorldModel 		= Model("models/vuthakral/halo/weapons/w_crowbar.mdl")

SWEP.HoldType 			= "melee"
SWEP.HoldTypeLowered 	= "normal"

SWEP.Damage 			= 40

SWEP.Delay 				= .5

SWEP.LoweredOffset 	= {
	ang = Angle(-20, 0, 0),
	pos = Vector(0, 0, 0)
}

SWEP.Animations = {
	idle = "idle01",
	hit = {"hitcenter1", "hitcenter2", "hitcenter3"},
	miss = {"misscenter1", "misscenter2"}
}

function SWEP:OnHit()
	self:EmitSound("Weapon_Crowbar.Melee_Hit")
end

function SWEP:OnMiss()
	self:EmitSound("Weapon_Crowbar.Single")
end