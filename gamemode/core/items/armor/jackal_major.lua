ITEM = class.Create("base_armor")

ITEM.Name 				= "Kig-Yar Major"
ITEM.Description 		= "Armor belonging to a Kig-Yar Major."

ITEM.Species 			= SPECIES_JACKAL

if SERVER then
	function ITEM:GetModelData(ply)
		return {
			_base = {
        		Skin = 1,
				Bodygroups = {
					Armor = 1
				}
			}
		}
	end
end

return ITEM