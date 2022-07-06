AddCSLuaFile()
DEFINE_BASECLASS("eternity_melee_base")

SWEP.Base 				= "eternity_melee_base"

SWEP.PrintName 			= "Knife"
SWEP.Author 			= "TankNut"

SWEP.ViewModel 			= Model("models/vuthakral/halo/weapons/c_knife_unsc.mdl")
SWEP.WorldModel 		= Model("models/vuthakral/halo/weapons/w_knife_unsc.mdl")

SWEP.HoldType 			= "knife"
SWEP.HoldTypeLowered 	= "normal"

SWEP.Damage 			= 40

SWEP.Delay 				= .5

SWEP.Animations = {
	idle = "idle0",
	hit = {"swing_left", "swing_right", "backhand"},
	miss = {"swing_left", "swing_right"}
}

function SWEP:OnHit()
	self:EmitSound("weapons/knife/knife_hit2.wav")
end

function SWEP:OnMiss()
	self:EmitSound("weapons/knife/knife_slash1.wav")
end