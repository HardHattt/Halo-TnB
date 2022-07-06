ITEM = class.Create("base_weapon")

ITEM.Name 				= "Type-31 Needle Rifle"
ITEM.Description 		= "The Type-31 Needle Rifle is a covenant infantry weapon that's feared for it's effectiveness against unshielded targets."

ITEM.Model 				= Model("models/vuthakral/halo/weapons/w_needlerifle.mdl")

ITEM.OutlineColor 		= Color(110, 76, 170)

ITEM.Width 				= 4
ITEM.Height 			= 2

ITEM.EquipmentSlots 	= {EQUIPMENT_PRIMARY}

ITEM.WeaponClass 		= "eternity_needlerifle"

ITEM.AmmoSlots 			= {
	["needler"] = true
}

return ITEM