ITEM = class.Create("base_weapon")

ITEM.Name 				= "M247 Machine Gun"
ITEM.Description 		= "The M247 Medium Combat Weapon System is the UNSC's standard-issue machine gun. Chambered in 7.62x51mm."

ITEM.Model 				= Model("models/snowysnowtime/w_turret.mdl")

ITEM.Width 				= 5
ITEM.Height 			= 2

ITEM.EquipmentSlots 	= {EQUIPMENT_PRIMARY}

ITEM.License 			= LICENSE_QM

ITEM.WeaponClass 		= "eternity_m247"

ITEM.AmmoSlots 			= {
	["762x51mm"] = true
}

return ITEM