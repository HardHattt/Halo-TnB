ITEM = class.Create("base_weapon")

ITEM.Name 				= "Deployable Cover"
ITEM.Description 		= "This piece of equipment is similar to the stationary shield generator, except mobile. Any solid projectiles fired will be deflected by the shield; however, plasma-based weapons fire are absorbed by the shield."

ITEM.Model 				= Model("models/halo/halo_3/equipment/instantcover_equipment.mdl")

ITEM.OutlineColor 		= Color(255, 229, 0)

ITEM.Width 				= 1
ITEM.Height 			= 1

ITEM.EquipmentSlots 	= {EQUIPMENT_MISC}

ITEM.WeaponClass 		= "astw2_halo_3_eq_instantcover"

return ITEM