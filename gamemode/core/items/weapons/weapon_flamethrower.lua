ITEM = class.Create("base_weapon")

ITEM.Name 				= "M7057/Defoliant Projector"
ITEM.Description 		= "The M7057/Defoliant Projector, more commonly known as the M7057 flamethrower, is an incendiary weapon used primarily against battlefield fortifications, protected emplacements and installations, and for demoralization purposes."

ITEM.Model 				= Model("models/flamethrower.mdl")

ITEM.OutlineColor 		= Color(255, 93, 0)

ITEM.Width 				= 4
ITEM.Height 			= 3

ITEM.EquipmentSlots 	= {EQUIPMENT_PRIMARY}

ITEM.WeaponClass 		= "halo_flamethrower"

return ITEM