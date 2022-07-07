ITEM = class.Create("base_weapon")

ITEM.Name 				= "Red Flag"
ITEM.Description 		= "A Red Flag used in simulation battles."

ITEM.Model 				= Model("models/halo/halo_3/weapons/flag.mdl")

ITEM.OutlineColor 		= Color(255, 0, 0)

ITEM.Width 				= 1
ITEM.Height 			= 3

ITEM.EquipmentSlots 	= {EQUIPMENT_MISC, EQUIPMENT_SECONDARY}

ITEM.WeaponClass 		= "astw2_halo_3_obj_flag_red"

return ITEM