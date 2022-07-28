ITEM = class.Create("base_weapon")

ITEM.Name 				= "MA5B ICWS"
ITEM.Description 		= "The MA5B assault rifle, or simply MA5B, is a standard-issue automatic rifle utilized by the UNSC, particularly the Marine Corps."

ITEM.Model 				= Model("models/vuthakral/halo/weapons/w_ma5b.mdl")

ITEM.Width 				= 4
ITEM.Height 			= 2

ITEM.EquipmentSlots 	= {EQUIPMENT_PRIMARY, EQUIPMENT_SECONDARY}

ITEM.WeaponClass 		= "eternity_ma5b"

ITEM.AmmoSlots 			= {
	["762x51mm"] = true
}

return ITEM