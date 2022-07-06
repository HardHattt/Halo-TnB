ITEM = class.Create("base_weapon")

ITEM.Name 				= "MA5K"
ITEM.Description 		= "The MA5K Carbine is a UNSC MA5 Series firearm used by Special Operations Forces. It is a compact version of the standard MA5 Individual Combat Weapon System and is lighter and easier to carry."

ITEM.Model 				= Model("models/snowysnowtime/eonace/w_ma5k.mdl")

ITEM.Width 				= 3
ITEM.Height 			= 2

ITEM.EquipmentSlots 	= {EQUIPMENT_PRIMARY}

ITEM.License 			= LICENSE_QM

ITEM.WeaponClass 		= "eternity_ma5k"

ITEM.AmmoSlots 			= {
	["762x51mm"] = true
}

return ITEM