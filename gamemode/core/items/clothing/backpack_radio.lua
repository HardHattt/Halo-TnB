ITEM = class.Create("base_clothing")

ITEM.Name 			= "Radio Pack"
ITEM.Description 	= "A portable long range radio."

ITEM.Model 			= Model("models/ishi/halo_rebirth/odst/male/props/backpack_mickey.mdl")

ITEM.Width 			= 2
ITEM.Height 		= 3

ITEM.EquipmentSlots = {EQUIPMENT_BACK}

ITEM.License 		= LICENSE_QM

ITEM.ModelGroups 	= {"Off-Duty", "Marine", "ODST", "Insurrection"}

if SERVER then
	local indices = {
		["Off-Duty"] = 3,
		["Marine"] = 4,
		["ODST"] = 3,
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