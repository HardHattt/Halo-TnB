ITEM = class.Create("base_consumable")

ITEM.Name 				= "Monster Energy"
ITEM.Description 		= "A can of Monster Energy, high in caffine."

ITEM.Model 				= Model("models/consumables/energy_drink.mdl")

ITEM.Height 			= 1


ITEM.UseSelf 			= true
ITEM.SelfString 		= "Drink"

if SERVER then
	function ITEM:OnSelfUse(ply)
		ply:VisibleMessage(ply:RPName() .. " opens their Monster Energy and drinks it.")

		GAMEMODE:DeleteItem(self)
	end
end

return ITEM