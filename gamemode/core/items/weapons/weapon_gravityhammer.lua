ITEM = class.Create("base_weapon")

ITEM.Name 				= "Type-2 Energy Weapon/Hammer"
ITEM.Description 		= "The Type-2 Energy Weapon/Hammer, more commonly known as the Gravity Hammer, is a powerful two-handed melee weapon used by the Jiralhanae in the Covenant Empire."

ITEM.Model 				= Model("models/halo/halo_3/weapons/gravity_hammer.mdl")

ITEM.OutlineColor 		= Color(127, 0, 255)

ITEM.Width 				= 2
ITEM.Height 			= 5

ITEM.EquipmentSlots 	= {EQUIPMENT_PRIMARY, EQUIPMENT_SECONDARY}

ITEM.WeaponClass 		= "astw2_halo3_gravityhammer"

return ITEM