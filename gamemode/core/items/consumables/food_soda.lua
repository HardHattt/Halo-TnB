ITEM = class.Create("base_consumable")

ITEM.Name 				= "Soda Can"
ITEM.Description 		= "A generic soda can."

ITEM.Model 				= Model("models/consumables/soda.mdl")

ITEM.Height 			= 1


ITEM.UseSelf 			= true
ITEM.SelfString 		= "Drink"

if SERVER then
	function ITEM:OnSelfUse(ply)
		ply:VisibleMessage(ply:RPName() .. " opens their soda can and drinks it.")

		GAMEMODE:DeleteItem(self)
	end
end

return ITEM