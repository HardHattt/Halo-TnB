ITEM = class.Create("base_consumable")

ITEM.Name 				= "Gatorade Lemon Lime"
ITEM.Description 		= "A plastic bottle of Gatorade Lemon Lime Thirst Quencher Sports Drink."

ITEM.Model 				= Model("models/consumables/gatorade.mdl")

ITEM.Height 			= 1


ITEM.UseSelf 			= true
ITEM.SelfString 		= "Drink"

if SERVER then
	function ITEM:OnSelfUse(ply)
		ply:VisibleMessage(ply:RPName() .. " opens their Gatorade bottle and drinks it.")

		GAMEMODE:DeleteItem(self)
	end
end

return ITEM