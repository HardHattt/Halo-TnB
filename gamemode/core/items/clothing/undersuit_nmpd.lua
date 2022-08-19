ITEM = class.Create("base_undersuit")

ITEM.Name 				= "NMPD Riot Uniform"
ITEM.Description 		= "A combat rig for the New Mombasa Police Department. The NMPD are the primary Law Enforcement Agency of New Mombasa, Kenya."

ITEM.OutlineColor 		= Color(127, 255, 159)

ITEM.ArmorLevel 	= ARMOR_MEDIUM

ITEM.ModelPattern 		= "models/halo_3/players/nmpd_officer.mdl"
ITEM.ModelSkin 			= 0
ITEM.ModelGroup 		= "Off-Duty"

if SERVER then
	function CLASS:GetModelData(ply)
		return {
			_base = {
        		Model = "models/halo_3/players/nmpd_officer.mdl",
				Scale = 1.1
			}
		}
	end
end

return ITEM