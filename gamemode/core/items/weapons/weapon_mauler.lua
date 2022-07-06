ITEM = class.Create("base_weapon")

ITEM.Name 				= "Type-52 Mauler"
ITEM.Description 		= "The Type-52 Mauler is used by the Jiralhanae as a handgun, although human military experts have classified it as being more of a handheld shotgun than anything else. The magazine holds five 7.9mm metal bolts, which appear to be constantly kept at superheated temperatures before being fired."

ITEM.Model 				= Model("models/snowysnowtime/vuthakral/w_mauler.mdl")

ITEM.Width 				= 2
ITEM.Height 			= 2

ITEM.EquipmentSlots 	= {EQUIPMENT_PRIMARY, EQUIPMENT_SECONDARY}

ITEM.License 			= LICENSE_QM

ITEM.WeaponClass 		= "eternity_mauler"

ITEM.AmmoSlots 			= {
	["8ga"] = true
}

return ITEM