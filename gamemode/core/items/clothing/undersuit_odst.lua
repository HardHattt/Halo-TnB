ITEM = class.Create("base_undersuit")

ITEM.Name 				= "ODST Undersuit"
ITEM.Description 		= "An ODST undersuit and armor set."

ITEM.Model 			= Model("models/ishi/halo_rebirth/player/offduty/male/props/vest_h2a.mdl")

ITEM.Color 				= Color(145, 145, 145)
ITEM.OutlineColor 		= Color(109, 109, 109)

ITEM.Width 				= 2
ITEM.Height 			= 2

ITEM.License 		= LICENSE_QM

ITEM.ArmorLevel 		= ARMOR_HEAVY

ITEM.ModelPattern 		= "models/ishi/halo_rebirth/odst/%s/odst_%s.mdl"
ITEM.ModelGroup 		= "ODST"

return ITEM