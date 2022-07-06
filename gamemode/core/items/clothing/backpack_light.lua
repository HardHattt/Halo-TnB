ITEM = class.Create("base_clothing")

ITEM.Name 			= "Backpack (Light)"
ITEM.Description 	= "A light assault pack for carrying combat gear."

ITEM.Model 			= Model("models/ishi/halo_rebirth/odst/male/props/backpack_standard.mdl")

ITEM.Width 			= 2
ITEM.Height 		= 3

ITEM.EquipmentSlots = {EQUIPMENT_BACK}

ITEM.License 		= LICENSE_QM

ITEM.ModelGroups 	= {"Off-Duty", "Marine", "ODST", "Insurrection"}

ITEM.Inventories 		= {
	["Main"] = {2, 3}
}

if SERVER then
	local indices = {
		["Off-Duty"] = 2,
		["Marine"] = 2,
		["ODST"] = 1,
		["Insurrection"] = 2
	}

	function ITEM:GetModelData(ply)
		return {
			_base = {
				Bodygroups = {
					["Backpack"] = indices[self:GetModelGroup(ply)]
				}
			}
		}
	end
end

return ITEM