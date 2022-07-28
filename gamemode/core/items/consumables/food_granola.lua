ITEM = class.Create("base_consumable")

ITEM.Name 				= "Granola Bar"
ITEM.Description 		= "A generic brand of granola bar."

ITEM.Model 				= Model("models/consumables/bar_granola.mdl")

ITEM.Height 			= 1

ITEM.UseSelf 			= true
ITEM.SelfString 		= "Eat"

if SERVER then
	function ITEM:OnSelfUse(ply)
		ply:VisibleMessage(ply:RPName() .. " opens their granola bar and eats it.")

		GAMEMODE:DeleteItem(self)
	end
end

return ITEM