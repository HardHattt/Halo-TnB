ITEM = class.Create("base_weapon")

ITEM.Name 				= "M6D PDWS"
ITEM.Description 		= "The M6D PDWS is an up-sized UNSC handgun issued to Navy officers. This model has been upscaled for use by SPARTAN-IIs in MJOLNIR armor."

ITEM.Model 				= Model("models/snowysnowtime/c_fp_cemagnum.mdl")

ITEM.Width 				= 2
ITEM.Height 			= 2

ITEM.EquipmentSlots 	= {EQUIPMENT_PRIMARY, EQUIPMENT_SECONDARY}

ITEM.WeaponClass 		= "eternity_m6d"

ITEM.AmmoSlots 			= {
	["127x40mm"] = true
}

return ITEM