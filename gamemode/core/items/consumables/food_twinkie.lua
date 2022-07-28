ITEM = class.Create("base_consumable")

ITEM.Name 				= "Twinkie"
ITEM.Description 		= "An American snack, golden sponge cake with a creamy filling. A rather rare commodity now adays."

ITEM.Model 				= Model("models/consumables/minisaints.mdl")

ITEM.Height 			= 1

ITEM.UseSelf 			= true
ITEM.SelfString 		= "Eat"

if SERVER then
	function ITEM:OnSelfUse(ply)
		ply:VisibleMessage(ply:RPName() .. " opens their Twinkie packet and scarfs down both Twinkies.")

		GAMEMODE:DeleteItem(self)
	end
end

return ITEM