ITEM = class.Create("base_undersuit")

ITEM.Name 				= "NMPD Pilot Uniform"
ITEM.Description 		= "A Pilot rig for the New Mombasa Police Department. The NMPD are the primary Law Enforcement Agency of New Mombasa, Kenya."

ITEM.OutlineColor 		= Color(127, 255, 159)

ITEM.ArmorLevel 	= ARMOR_MEDIUM

ITEM.ModelPattern 		= "models/halo_3/players/nmpd_officer.mdl"
ITEM.ModelSkin 			= 0
ITEM.ModelGroup 		= "Off-Duty"

if SERVER then
	function ITEM:GetModelData(ply)
		return {
			_base = {
				Model = self:GetModel(ply),
				Skin = self.ModelSkin,
				Bodygroups = {
					Helmet = 2,
          			Chest = 1,
				}
			}
		}
	end
end

return ITEM