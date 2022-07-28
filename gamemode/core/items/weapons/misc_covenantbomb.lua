ITEM = class.Create("base_weapon")

ITEM.Name 				= "Antimatter Charge"
ITEM.Description 		= "A Covenant weapon utilizing a small amount of antimatter as an explosive, handle with caution."

ITEM.Model 				= Model("models/valk/h3/covenant/props/cortanabeacon/cortanabeacon.mdl")

ITEM.OutlineColor 		= Color(110, 76, 170)

ITEM.Width 				= 2
ITEM.Height 			= 1

ITEM.EquipmentSlots 	= {EQUIPMENT_MISC, EQUIPMENT_SECONDARY}

ITEM.WeaponClass 		= "weapon_c5_enhanced"

return ITEM