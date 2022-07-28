ITEM = class.Create("base_consumable")

ITEM.Name 				= "Painkiller bottle"
ITEM.Description 		= "A bottle of rattling painkillers."

ITEM.Model 				= Model("models/consumables/painkillers.mdl")

ITEM.License 			= LICENSE_QM

ITEM.Width 				= 1

ITEM.UseTarget 			= true
ITEM.TargetString 		= "Heal Target"

ITEM.UseSelf 			= true
ITEM.SelfString 		= "Heal Self"

function ITEM:IsValidTarget(target)
	return target:IsPlayer() and target:Health() < target:GetMaxHealth()
end

if SERVER then
	function ITEM:OnTargetUse(ply, target)
		ply:VisibleMessage(string.format("%s gives %s some painkillers.", ply:VisibleRPName(), target:VisibleRPName()))

		target:SetHealth(math.Clamp(target:Health() + 30, 0, target:GetMaxHealth()))

		GAMEMODE:DeleteItem(self)
	end

	function ITEM:OnSelfUse(ply)
		ply:SendChat("NOTICE", "You swallow some painkillers.")

		ply:SetHealth(math.Clamp(ply:Health() + 30, 0, ply:GetMaxHealth()))

		GAMEMODE:DeleteItem(self)
	end
end

return ITEM
