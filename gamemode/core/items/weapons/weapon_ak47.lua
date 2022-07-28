ITEM = class.Create("base_weapon")

ITEM.Name 				= "AK-47"
ITEM.Description 		= "It belongs in a museum!"

ITEM.Model 				= Model("models/weapons/w_rif_ak47.mdl")

ITEM.Width 				= 4
ITEM.Height 			= 2

ITEM.EquipmentSlots 	= {EQUIPMENT_PRIMARY}

ITEM.WeaponClass 		= "eternity_ak47"

ITEM.AmmoSlots 			= {
	["762x51mm"] = true
}

return ITEM