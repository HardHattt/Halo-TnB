ITEM = class.Create("base_weapon")

ITEM.Name 				= "M393 DMR"
ITEM.Description 		= "The M393 Designated Marksman Rifle is the UNSC's weapon of choice for marksmen and reconnaisance units. Chambered in .308."

ITEM.Model 				= Model("models/vuthakral/halo/weapons/w_dmr.mdl")

ITEM.Width 				= 4
ITEM.Height 			= 2

ITEM.EquipmentSlots 	= {EQUIPMENT_PRIMARY}

ITEM.License 			= LICENSE_QM

ITEM.WeaponClass 		= "eternity_dmr"

ITEM.AmmoSlots 			= {
	["308"] = true
}

return ITEM