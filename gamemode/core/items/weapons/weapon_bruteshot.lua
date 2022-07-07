ITEM = class.Create("base_weapon")

ITEM.Name 				= "T-25 GL"
ITEM.Description 		= "The Type-25 Grenade Launcher, known to UNSC infantrymen as the Brute Shot, and to Jiralhanae as the death lobber, is a Covenant weapon designed and used exclusively by the Jiralhanae."

ITEM.Model 				= Model("models/vuthakral/halo/weapons/w_bruteshot.mdl")

ITEM.Width 				= 4
ITEM.Height 			= 2

ITEM.EquipmentSlots 	= {EQUIPMENT_PRIMARY, EQUIPMENT_SECONDARY}

ITEM.WeaponClass 		= "eternity_bruteshot"

ITEM.AmmoSlots 			= {
	["40mm"] = true
}

return ITEM