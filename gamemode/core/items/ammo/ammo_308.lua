ITEM = class.Create("base_ammo")

ITEM.Name 				= ".308 M636"
ITEM.Description 		= "An ammo tin containing packs of M636 Shield/AP-HE rounds."

ITEM.Model 				= Model("models/Items/BoxMRounds.mdl")

ITEM.License 			= LICENSE_QM

ITEM.MaxStack 			= 300 -- 20 magazines

ITEM.AmmoGroup 			= "308"
ITEM.Ammo 				= "308"

return ITEM