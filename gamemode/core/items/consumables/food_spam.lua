ITEM = class.Create("base_consumable")

ITEM.Name 				= "SPAM"
ITEM.Description 		= "A can of SPAM, yum."

ITEM.Model 				= Model("models/consumables/can_spam.mdl")

ITEM.Height 			= 1

ITEM.License 			= LICENSE_QM

ITEM.UseSelf 			= true
ITEM.SelfString 		= "Eat"

if SERVER then
	function ITEM:OnSelfUse(ply)
		ply:VisibleMessage(ply:RPName() .. " opens their SPAM can and eats the contents.")

		GAMEMODE:DeleteItem(self)
	end
end

return ITEM