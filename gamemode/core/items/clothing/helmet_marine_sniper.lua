ITEM = class.Create("helmet_marine_basic")

ITEM.Name 			= "CH252 Sharpshooter Helmet"
ITEM.Description 	= [[A UNSC standard issue combat helmet. Comes packaged with a balaclava and a set of ballistic goggles.

Sharpshooter version: Equipped with an O/I optics device.]]

ITEM.OutlineColor 	= Color(255, 223, 127)

ITEM.License 		= LICENSE_QM

ITEM.HelmetGroup 	= 3

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
					["Helmet"] = self.HelmetGroup,
					Helmet = self.Balaclava and 2 or 3,
				}
			}
		}
	end
end

return ITEM