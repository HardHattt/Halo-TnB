ITEM = class.Create("base_clothing")

ITEM.Name 			= "Firefall ODST Helmet"
ITEM.Description 	= "Manufactured by Cascade Stronghold Technologies, Firefall is a radical offshoot of other ODST armor development projects. It is meant for command personnel."

ITEM.Model 			= Model("models/ishi/halo_rebirth/player/offduty/male/props/helmet_odst_firefall.mdl")

ITEM.Color 				= Color(145, 145, 145)
ITEM.OutlineColor 		= Color(127, 0, 255)

ITEM.EquipmentSlots = {EQUIPMENT_HEAD}
ITEM.ModelGroups 	= {"Off-Duty"}

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

if SERVER then
	local indices = {
		["Off-Duty"] = 6
	}

	function ITEM:GetModelData(ply)
		return {
			_base = {
				Bodygroups = {
					["Helmet"] = indices[self:GetModelGroup(ply)]
				}
			}
		}
	end
end

return ITEM