ITEM = class.Create("base_weapon")

ITEM.Name 				= "Type-50 Beam Rifle"
ITEM.Description 		= "The long range weapon favored by Covenant forces, known for its deadly accuracy."

ITEM.Model 				= Model("models/vuthakral/halo/weapons/w_t50srs.mdl")

ITEM.Width 				= 5
ITEM.Height 			= 2

ITEM.EquipmentSlots 	= {EQUIPMENT_PRIMARY}

ITEM.License 			= LICENSE_QM

ITEM.WeaponClass 		= "eternity_beamrifle"

ITEM.AmmoSlots 			= {
	["beamcharge"] = true
}

return ITEM