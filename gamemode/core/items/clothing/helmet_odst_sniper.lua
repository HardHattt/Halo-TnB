ITEM = class.Create("helmet_marine_basic")

ITEM.Name 			= "ODST O/I Helmet"
ITEM.Description 	= "The ODST O/I (Ocular/Integration) is a helmet worn by snipers."

ITEM.Model 			= Model("models/ishi/halo_rebirth/odst/male/props/odst_helmet_romeo.mdl")

ITEM.Color 			= Color(145, 145, 145)
ITEM.OutlineColor 	= Color(109, 109, 109)

ITEM.EquipmentSlots = {EQUIPMENT_HEAD}

ITEM.License 		= LICENSE_QM

ITEM.ModelGroups 	= {"ODST"}

ITEM.HelmetGroup 	= 4

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
					Helmet = self.Balaclava and 5 or 4
				}
			}
		}

		return tab
	end
end

return ITEM