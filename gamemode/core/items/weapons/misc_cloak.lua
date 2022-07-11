ITEM = class.Create("base_weapon")

ITEM.Name 				= "Active Camo"
ITEM.Description 		= "Active camouflage is a form of technological camouflage designed to conceal an object from visual detection by rapidly adapting to its surroundings. Both the UNSC and the Covenant use various forms of active camouflage technology. Note: Item spawns below you."

ITEM.Model 				= Model("models/halo/halo_3/equipment/invisibility_equipment.mdl")

ITEM.OutlineColor 		= Color(255, 229, 0)

ITEM.Width 				= 1
ITEM.Height 			= 1

ITEM.EquipmentSlots 	= {EQUIPMENT_MISC}

ITEM.WeaponClass 		= "pickup_h3_equipment_invisibility_extended"

return ITEM