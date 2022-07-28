ITEM = class.Create("base_weapon")

ITEM.Name 				= "C12"
ITEM.Description 		= "UNSC C-12 Shaped-charges or C-12 SCs, used mainly for heavy demolitions and can also be used as weapons."

ITEM.Model 				= Model("models/vuthakral/halo/weapons/w_c12.mdl")

ITEM.OutlineColor 		= Color(255, 100, 0)

ITEM.Width 				= 2
ITEM.Height 			= 2

ITEM.EquipmentSlots 	= {EQUIPMENT_MISC, EQUIPMENT_SECONDARY}

ITEM.License 			= LICENSE_QM

ITEM.WeaponClass 		= "weapon_c4_enhanced"

return ITEM