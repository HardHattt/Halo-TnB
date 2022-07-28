ITEM = class.Create("base_consumable")

ITEM.Name 				= "Pudding"
ITEM.Description 		= "A cup of generic brand pudding, don't let the DI find you with it."

ITEM.Model 				= Model("models/consumables/pudding.mdl")

ITEM.Height 			= 1

ITEM.UseSelf 			= true
ITEM.SelfString 		= "Eat"

if SERVER then
	function ITEM:OnSelfUse(ply)
		ply:VisibleMessage(ply:RPName() .. " opens their pudding cup and scarfs down the contents.")

		GAMEMODE:DeleteItem(self)
	end
end

return ITEM