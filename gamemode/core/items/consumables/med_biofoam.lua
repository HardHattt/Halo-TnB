ITEM = class.Create("base_consumable")

ITEM.Name 				= "Biofoam canister"
ITEM.Description 		= "A single-use canister of biofoam, acts as a temporary sealant to help keep damaged organs in place and to stop bleeding. For best results, inject directly into the wound."

ITEM.Model 				= Model("models/valk/h3odst/unsc/props/biofoam/biofoam.mdl")

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
		ply:VisibleMessage(string.format("%s injects %s with fast-acting medigel.", ply:VisibleRPName(), target:VisibleRPName()))

		target:SetHealth(math.Clamp(target:Health() + 50, 0, target:GetMaxHealth()))

		GAMEMODE:DeleteItem(self)
	end

	function ITEM:OnSelfUse(ply)
		ply:SendChat("NOTICE", "You inject yourself with fast-acting medigel.")

		ply:SetHealth(math.Clamp(ply:Health() + 50, 0, ply:GetMaxHealth()))

		GAMEMODE:DeleteItem(self)
	end
end

return ITEM
