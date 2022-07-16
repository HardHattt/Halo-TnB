ITEM = class.Create("base_ammo")

ITEM.Name 				= "7.9mm metal bolts"
ITEM.Description 		= "A magazine of constantly superheated bolts."

ITEM.Model 				= Model("models/Items/BoxBuckshot.mdl")

ITEM.License 			= LICENSE_QM

ITEM.MaxStack 			= 50 -- 10 reloads

ITEM.AmmoGroup 			= "8ga"
ITEM.Ammo 				= "mauler"

return ITEM