ITEM = class.Create("base_ammo")

ITEM.Name 				= "Spiker Ammo"
ITEM.Description 		= "Superheated tungsten-alloy spikes used in the Type-52 Spiker"

ITEM.Model 				= Model("models/Items/BoxMRounds.mdl")

ITEM.License 			= LICENSE_QM

ITEM.MaxStack 			= 400 -- 10 magazines

ITEM.AmmoGroup 			= "spiker"
ITEM.Ammo 				= "spiker"

return ITEM