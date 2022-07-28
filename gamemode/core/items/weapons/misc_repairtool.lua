ITEM = class.Create("base_weapon")

ITEM.Name 				= "Repair Tool"
ITEM.Description 		= "A tool used to repair vehicles."

ITEM.Model 				= Model("models/valk/halo3/unsc/props/industrial/cutting_torch.mdl")

ITEM.OutlineColor 		= Color(0, 0, 255)

ITEM.Width 				= 1
ITEM.Height 			= 2

ITEM.EquipmentSlots 	= {EQUIPMENT_MISC, EQUIPMENT_SECONDARY}

ITEM.License 			= LICENSE_QM

ITEM.WeaponClass 		= "weapon_simrepair"

return ITEM