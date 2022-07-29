ITEM = class.Create("base_weapon")

ITEM.Name 				= "Defusal Kit"
ITEM.Description 		= "A standard issue UNSC defusal kit."

ITEM.Model 				= Model("models/weapons/w_defuser_single.mdl")

ITEM.OutlineColor 		= Color(255, 100, 0)

ITEM.Width 				= 1
ITEM.Height 			= 1

ITEM.EquipmentSlots 	= {EQUIPMENT_MISC, EQUIPMENT_SECONDARY}

ITEM.License 			= LICENSE_QM

ITEM.WeaponClass 		= "weapon_defuser_enhanced"

return ITEM