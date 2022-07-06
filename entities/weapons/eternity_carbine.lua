AddCSLuaFile()

SWEP.Base 				= "eternity_firearm_base"

SWEP.PrintName 			= "Type-52 Particle Carbine"
SWEP.Author 			= "TankNut"

SWEP.ViewModel 			= Model("models/snowysnowtime/spv3/c_carbine.mdl")
SWEP.WorldModel 		= Model("models/snowysnowtime/eonace/w_carbine.mdl")

SWEP.HoldType 			= "ar2"
SWEP.HoldTypeLowered 	= "passive"

SWEP.Firemodes 			= {
	{Mode = "firemode_plasmapistol"}
}

SWEP.Animated 			= true
SWEP.AnimatedADS 		= true

SWEP.Delay 				= 0.2

SWEP.HeatRate 			= 15
SWEP.CoolRate 			= 36

SWEP.HipCone 			= 0.03
SWEP.AimCone 			= 0.009

SWEP.Recoil 			= 0.9

SWEP.FireSound 			= Sound("h3/carbine_fire3.wav")

SWEP.RecoilMult 		= 0

SWEP.Scope 				= {
	Enabled = true,
	Zoom = {3.5, 3}
}

SWEP.DefaultOffset = {
	ang = Angle(0, 0, 0),
	pos = Vector(2, 1, -2)
}

SWEP.LoweredOffset = {
	ang = Angle(-15, 0, 0),
	pos = Vector(2, 1, -1)
}

SWEP.AimOffset = {
	ang = Angle(0, 0, 0),
	pos = Vector(1, 1, 0)
}

SWEP.Animations = {
	fire = {"fire_fp", "fire_fp1", "fire_fp2"},
	draw = "draw",
	overheat = "overheat_start",
	overheat_finish = "overheat_finish"
}

if CLIENT then
	SWEP.CoolColor = Color(0, 255, 100):ToVector()
end

function SWEP:SetupDataTables()
	self:NetworkVar("Int", 0, "FiremodeIndex")
	self:NetworkVar("Int", 1, "ItemID")
	self:NetworkVar("Int", 2, "ZoomIndex")

	self:NetworkVar("Bool", 0, "Holstered")
	self:NetworkVar("Bool", 1, "AbortReload")
	self:NetworkVar("Bool", 2, "NeedPump")
	self:NetworkVar("Bool", 3, "FirstReload")
	self:NetworkVar("Bool", 4, "ToggleADS")
	self:NetworkVar("Bool", 5, "Overheating")

	self:NetworkVar("Float", 0, "NextModeSwitch")
	self:NetworkVar("Float", 1, "FinishReload")
	self:NetworkVar("Float", 2, "FireStart")
	self:NetworkVar("Float", 3, "Heat")

	self:NetworkVar("String", 0, "AmmoType")
end

function SWEP:PrimaryAttack()
	if not self:CanFire() then
		self:SetNextPrimaryFire(CurTime() + 0.2)

		return
	end

	if not self:IsFiring() then
		self:SetFireStart(CurTime())
	end

	self:GetFiremode():Fire()
end

function SWEP:IsOverheating()
	return self:GetOverheating()
end

if CLIENT then
	function SWEP:FinishOverheat()
		self:PlayAnimation("overheat_finish", 1, 0, false, self.VM, true)
		self:EmitSound("drc.pp_oh_exit")
	end
else
	function SWEP:SaveAmmo()
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