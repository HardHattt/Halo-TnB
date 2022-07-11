ITEM = class.Create("base_clothing")

ITEM.Name 			= "ODST Helmet"
ITEM.Description 	= "A standard ODST helmet meant to fulfill a variety of combat roles."

ITEM.Model 			= Model("models/ishi/halo_rebirth/player/offduty/male/props/helmet_odst_h3.mdl")

ITEM.Color 				= Color(145, 145, 145)
ITEM.OutlineColor 		= Color(127, 0, 255)

ITEM.EquipmentSlots = {EQUIPMENT_HEAD}

ITEM.License 		= LICENSE_QM

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
	function ITEM:GetModelData(ply)
		return {
			_base = {
				Bodygroups = {
					["Helmet"] = 1
				}
			}
		}
	end
end

return ITEM