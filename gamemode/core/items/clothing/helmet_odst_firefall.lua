ITEM = class.Create("base_clothing")

ITEM.Name 			= "Firefall ODST Helmet"
ITEM.Description 	= "Manufactured by Cascade Stronghold Technologies, Firefall is a radical offshoot of other ODST armor development projects."

ITEM.Model 			= Model("models/ishi/halo_rebirth/player/offduty/male/props/helmet_odst_firefall.mdl")

ITEM.Color 				= Color(145, 145, 145)
ITEM.OutlineColor 		= Color(127, 0, 255)

ITEM.EquipmentSlots = {EQUIPMENT_HEAD}
ITEM.ModelGroups 	= {"Off-Duty"}

if SERVER then
	local indices = {
		["Off-Duty"] = 6
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