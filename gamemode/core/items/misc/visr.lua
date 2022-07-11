ITEM = class.Create("base_item")

ITEM.Name 				= "VISR"
ITEM.Description 		= "VISR provides tactical data in real time as it is broadcast, allowing navigational data and highlights various points of interest in the operational area. VISR's low-light vision enhancement also links with the user's neural interface to provide Friend or Foe designation by searching for IFF transponders on friendly or enemy personnel."

ITEM.Model 				= Model("models/ishi/halo_rebirth/props/human/data_module.mdl")

ITEM.Color 			= Color(145, 145, 145)
ITEM.OutlineColor 	= Color(109, 109, 109)

ITEM.EquipmentSlots = {EQUIPMENT_ID, EQUIPMENT_MISC}

ITEM.Filtered 		= true

function ITEM:OnUnequip(ply, slot, unloading)
	ply:SetVISR(false)

	self:ParentCall("OnUnequip", ply, slot, unloading)
end

function ITEM:GetContextOptions(ply)
	local tab = {}

	table.insert(tab, {
		Name = "Toggle VISR",
		Callback = function()
			ply:SetVISR(not ply:VISR())
		end
	})

	return tab
end

return ITEM