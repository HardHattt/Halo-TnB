ITEM = class.Create("base_consumable")

ITEM.Name 				= "Chocolate Bar"
ITEM.Description 		= "A generic brand of chocolate bar."

ITEM.Model 				= Model("models/consumables/bar_chocolate.mdl")

ITEM.Height 			= 1

ITEM.UseSelf 			= true
ITEM.SelfString 		= "Eat"

if SERVER then
	function ITEM:OnSelfUse(ply)
		ply:VisibleMessage(ply:RPName() .. " opens their chocolare bar and eats it.")

		GAMEMODE:DeleteItem(self)
	end
end

return ITEM