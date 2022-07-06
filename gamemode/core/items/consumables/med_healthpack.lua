ITEM = class.Create("base_consumable")

ITEM.Name 				= "Health pack"
ITEM.Description 		= "A standard UNSC first aid kit containing various medical supplies containing biofoam, a stitch kit, polypseudomorphine injectors, antiseptic battle dressings and other medical supplies."

ITEM.Model 				= Model("models/ishi/halo_rebirth/props/human/health_kit.mdl")

ITEM.Width 				= 2

ITEM.License 			= LICENSE_QM

ITEM.UseTarget 			= true
ITEM.TargetString 		= "Heal Target"

ITEM.UseSelf 			= true
ITEM.SelfString 		= "Heal Self"

function ITEM:IsValidTarget(target)
	return target:IsPlayer() and target:Health() < target:GetMaxHealth()
end

if SERVER then
	function ITEM:OnTargetUse(ply, target)
		ply:VisibleMessage(string.format("%s applies first-aid to %s.", ply:VisibleRPName(), target:VisibleRPName()))
		
		target:SetHealth(math.Clamp(target:Health() + 100, 0, target:GetMaxHealth()))

		GAMEMODE:DeleteItem(self)
	end

	function ITEM:OnSelfUse(ply)
		ply:SendChat("NOTICE", "You apply first-aid to yourself.")
		
		ply:SetHealth(math.Clamp(ply:Health() + 100, 0, ply:GetMaxHealth()))

		GAMEMODE:DeleteItem(self)
	end
end

return ITEM