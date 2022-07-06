ITEM = class.Create("base_weapon")

ITEM.Name 				= "Type-25 Spiker"
ITEM.Description 		= "The Type-25 Carbine is an automatic projectile weapon designed and used by the Jiralhanae, and has seen very little iteration since it was first designed and implemented during pre-Covenant conflicts on Doisac, though it has seen augmentation to some degree by Covenant technology."

ITEM.Model 				= Model("models/snowysnowtime/eonace/w_spiker.mdl")

ITEM.Width 				= 3
ITEM.Height 			= 2

ITEM.EquipmentSlots 	= {EQUIPMENT_PRIMARY}

ITEM.WeaponClass 		= "eternity_spiker"

ITEM.AmmoSlots 			= {
	["spiker"] = true
}

return ITEM