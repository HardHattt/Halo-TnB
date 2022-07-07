AddCSLuaFile()
DEFINE_BASECLASS("eternity_melee_base")

SWEP.RenderGroup 		= RENDERGROUP_BOTH

SWEP.Base 				= "eternity_melee_base"

SWEP.PrintName 			= "Energy Sword"
SWEP.Author 			= "TankNut"

SWEP.ViewModel 			= Model("models/snowysnowtime/c_energysword.mdl")
SWEP.VMBodyGroups		= {[0] = 1}

SWEP.WorldModel 		= Model("models/snowysnowtime/w_energysword.mdl")
SWEP.WMBodyGroups			= {[0] = 1}

SWEP.HoldType 			= "knife"
SWEP.HoldTypeLowered 	= "normal"

SWEP.Damage 			= 200

SWEP.LoweredOffset 	= {
	ang = Angle(-20, 0, 0),
	pos = Vector(0, 0, 0)
}

SWEP.Animations = {
	idle = "idle",
	hit = {"lunge1_h2", "lunge2_h2", "melee1_h2", "melee2_h2"},
	miss = {"lunge1_h2", "lunge2_h2", "melee1_h2", "melee2_h2"}
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