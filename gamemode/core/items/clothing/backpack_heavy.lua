ITEM = class.Create("base_clothing")

ITEM.Name 			= "Backpack (Heavy)"
ITEM.Description 	= "A sizeable backpack with room for several days worth of supplies."

ITEM.Model 			= Model("models/ishi/halo_rebirth/odst/male/props/backpack_dutch.mdl")

ITEM.Width 			= 3
ITEM.Height 		= 4

ITEM.EquipmentSlots = {EQUIPMENT_BACK}

ITEM.License 		= LICENSE_QM

ITEM.ModelGroups 	= {"Off-Duty", "Marine", "ODST", "Insurrection"}

ITEM.Inventories 		= {
	["Main"] = {3, 4}
}

if SERVER then
	local indices = {
		["Off-Duty"] = 4,
		["Marine"] = 3,
		["ODST"] = 2,
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