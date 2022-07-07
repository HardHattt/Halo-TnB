ITEM = class.Create("base_weapon")

ITEM.Name 				= "Hunter Cannon (Projectile)"
ITEM.Description 		= "A plasma cannon mounted on hunters."

ITEM.Model 				= Model("models/halo/halo_spv3/weapons/hunter_cannon_beam.mdl")

ITEM.OutlineColor 		= Color(110, 76, 170)

ITEM.Width 				= 1
ITEM.Height 			= 1

ITEM.EquipmentSlots 	= {EQUIPMENT_MISC}

ITEM.WeaponClass 		= "astw2_haloreach_hunter_cannon_b"

return ITEM