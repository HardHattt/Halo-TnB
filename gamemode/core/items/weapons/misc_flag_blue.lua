ITEM = class.Create("base_weapon")

ITEM.Name 				= "Blue Flag"
ITEM.Description 		= "A Blue Flag used in simulation battles."

ITEM.Model 				= Model("models/halo/halo_3/weapons/flag.mdl")

ITEM.OutlineColor 		= Color(0, 0, 255)

ITEM.Width 				= 1
ITEM.Height 			= 3

ITEM.EquipmentSlots 	= {EQUIPMENT_MISC, EQUIPMENT_SECONDARY}

ITEM.WeaponClass 		= "astw2_halo_3_obj_flag_blue"

return ITEM