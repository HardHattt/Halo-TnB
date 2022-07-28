ITEM = class.Create("base_consumable")

ITEM.Name 				= "Beer Can"
ITEM.Description 		= "A generic beer can, the Marines best friend."

ITEM.Model 				= Model("models/consumables/cash_single_beercan.mdl")

ITEM.Height 			= 1


ITEM.UseSelf 			= true
ITEM.SelfString 		= "Drink"

if SERVER then
	function ITEM:OnSelfUse(ply)
		ply:VisibleMessage(ply:RPName() .. " opens their beer can and drinks it.")

		GAMEMODE:DeleteItem(self)
	end
end

return ITEM