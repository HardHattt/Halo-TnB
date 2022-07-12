ITEM = class.Create("base_weapon")

ITEM.Name 				= "Model 33 Revolver"
ITEM.Description 		= "The Model 33 Revolver is a pistol used as a sidearm and/or backup weapon manufactured for the civilian market. It is chambered in .38 Lapua Long."

ITEM.Model 				= Model("models/weapons/w_444.mdl")

ITEM.Width 				= 2
ITEM.Height 			= 1

ITEM.EquipmentSlots 	= {EQUIPMENT_PRIMARY, EQUIPMENT_SECONDARY}

ITEM.WeaponClass 		= "eternity_model33"

ITEM.AmmoSlots 			= {
	["127x40mm"] = true
}

return ITEM