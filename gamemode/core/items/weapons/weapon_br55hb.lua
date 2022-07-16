ITEM = class.Create("base_weapon")

ITEM.Name 				= "BR55HB"
ITEM.Description 		= "Also known as the Battle Rifle, the BR55 Heavy Barrel Individual Combat Weapon System is the UNSC's standard-issue service rifle. Chambered in 9.5×40mm."

ITEM.Model 				= Model("models/vuthakral/halo/weapons/w_br55hb.mdl")

ITEM.Width 				= 4
ITEM.Height 			= 2

ITEM.EquipmentSlots 	= {EQUIPMENT_PRIMARY}

ITEM.License 			= LICENSE_QM

ITEM.WeaponClass 		= "eternity_br55hb"

ITEM.AmmoSlots 			= {
	["95x40mm"] = true
}

return ITEM