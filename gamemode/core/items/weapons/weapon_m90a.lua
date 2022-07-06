ITEM = class.Create("base_weapon")

ITEM.Name 				= "M90A CAWS"
ITEM.Description 		= "The M90A CAWS Tactical Shotgun is a weapon designed for close quarters combat and boarding scenarios by the UNSC."

ITEM.Model 				= Model("models/vuthakral/halo/weapons/w_m90.mdl")

ITEM.Width 				= 4
ITEM.Height 			= 2

ITEM.EquipmentSlots 	= {EQUIPMENT_PRIMARY}

ITEM.License 			= LICENSE_QM

ITEM.WeaponClass 		= "eternity_m90a"

ITEM.AmmoSlots 			= {
	["8ga"] = true
}

return ITEM