ITEM = class.Create("base_ammo")

ITEM.Name 				= "9.5x40mm M634"
ITEM.Description 		= "An ammo tin containing packs of M634 9.5×40mm HP-SAP rounds."

ITEM.Model 				= Model("models/Items/BoxMRounds.mdl")

ITEM.License 			= LICENSE_QM

ITEM.MaxStack 			= 360 -- 10 magazines

ITEM.AmmoGroup 			= "95x40mm"
ITEM.Ammo 				= "95x40mm"

return ITEM