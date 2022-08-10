ITEM = class.Create("base_clothing")

ITEM.Name 			= "Patrol Cap"
ITEM.Description 	= "A standard UNSC Patrol cap."

ITEM.Model 			= Model("models/props_junk/cardboard_box004a.mdl")

ITEM.EquipmentSlots = {EQUIPMENT_HEAD}

ITEM.License 		= LICENSE_QM

ITEM.ModelGroups 	= {"Marine", "ODST", "Off-Duty"}

if SERVER then
	local indices = {
		["Off-Duty"] = 10,
		["Marine"] = 6,
		["ODST"] = 9,
	}

	function ITEM:GetModelData(ply)
		return {
			_base = {
				Bodygroups = {
					["Helmet"] = indices[self:GetModelGroup(ply)]
				}
			}
		}
	end
end

return ITEM