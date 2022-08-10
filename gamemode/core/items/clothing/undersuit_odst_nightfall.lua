ITEM = class.Create("base_undersuit")

ITEM.Name 				= "Nightfall ODST Undersuit"
ITEM.Description 		= "A form-fitting suit of polymer body armor that can be bulked up with more standard ODST armor."

ITEM.Model 			= Model("models/ishi/halo_rebirth/player/offduty/male/props/vest_h2a.mdl")

ITEM.Color 				= Color(145, 145, 145)
ITEM.OutlineColor 		= Color(127, 0, 255)

ITEM.Width 				= 2
ITEM.Height 			= 2

ITEM.License 		= LICENSE_QM

ITEM.ModelPattern 		= "models/ishi/halo_rebirth/player/offduty/%s/offduty_%s.mdl"
ITEM.ModelGroup 		= "Off-Duty"

return ITEM