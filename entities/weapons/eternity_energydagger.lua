AddCSLuaFile()
DEFINE_BASECLASS("eternity_melee_base")

SWEP.RenderGroup 		= RENDERGROUP_BOTH

SWEP.Base 				= "eternity_melee_base"

SWEP.PrintName 			= "Energy Dagger"
SWEP.Author 			= "TankNut"

SWEP.ViewModel 			= Model("models/vuthakral/halo/weapons/c_energydaggers.mdl")
SWEP.WorldModel 		= Model("models/vuthakral/halo/weapons/c_energydaggers.mdl")

SWEP.HoldType 			= "fist"
SWEP.HoldTypeLowered 	= "normal"

SWEP.Damage 			= 70

SWEP.Delay 				= .65

SWEP.LoweredOffset 	= {
	ang = Angle(-20, 0, 0),
	pos = Vector(0, 0, 0)
}

SWEP.Animations = {
	idle = "idle",
	hit = {"swing_left", "swing_right", "swing_lunge"},
	miss = {"swing_right", "swing_left"}
}

function SWEP:OnAttack()
	self.Owner:SetAnimation(PLAYER_ATTACK1)
end

function SWEP:OnHit()
	self:EmitSound("D_HaloES.HitFlesh")
end

function SWEP:OnMiss()
	self:EmitSound("D_HaloES.Melee")
end