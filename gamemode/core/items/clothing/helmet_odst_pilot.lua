ITEM = class.Create("helmet_marine_basic")

ITEM.Name 			= "ODST Pilot Helmet"
ITEM.Description 	= "A standard ODST Pilot helmet meant to fulfill air combat roles."

ITEM.Model 			= Model("models/ishi/halo_rebirth/odst/male/props/odst_helmet_pilot.mdl")

ITEM.Color 			= Color(145, 145, 145)
ITEM.OutlineColor 	= Color(109, 109, 109)

ITEM.EquipmentSlots = {EQUIPMENT_HEAD}

ITEM.License 		= LICENSE_QM

ITEM.ModelGroups 	= {"ODST"}

ITEM.HelmetGroup 	= 8

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
		local tab = {
			_base = {
				Bodygroups = {
					["Helmet"] = self.HelmetGroup,
				}
			}
		}
    
        		if self.HelmetGroup then
			tab._base.Materials = {
				["models/valk/halo3odst/unsc/characters/odst/emblem"] = "null"
			}
		end

		return tab
	end
end

return ITEM