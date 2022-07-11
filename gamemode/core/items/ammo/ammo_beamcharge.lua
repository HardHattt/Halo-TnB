ITEM = class.Create("base_ammo")

ITEM.Name 				= "Beam Rifle Battery"
ITEM.Description 		= "Battery containing the charge for the Type-50 Beam Rifle."

ITEM.Model 				= Model("models/Items/BoxMRounds.mdl")

ITEM.MaxStack 			= 40 -- 10 magazines

ITEM.AmmoGroup 			= "beamcharge"
ITEM.Ammo 				= "beamcharge"

return ITEM