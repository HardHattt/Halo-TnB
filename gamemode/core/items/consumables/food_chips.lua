ITEM = class.Create("base_consumable")

ITEM.Name 				= "Potato Chips"
ITEM.Description 		= "A generic brand of potato chips, crunchy."

ITEM.Model 				= Model("models/consumables/bag_chips.mdl")

ITEM.Height 			= 1

ITEM.UseSelf 			= true
ITEM.SelfString 		= "Eat"

if SERVER then
	function ITEM:OnSelfUse(ply)
		ply:VisibleMessage(ply:RPName() .. " opens their chip bag and scarfs down the contents.")

		GAMEMODE:DeleteItem(self)
	end
end

return ITEM