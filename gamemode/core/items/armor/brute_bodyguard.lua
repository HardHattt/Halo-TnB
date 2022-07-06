ITEM = class.Create("base_armor")

ITEM.Name 				= "Jiralhanae Bodyguard"
ITEM.Description 		= "Armor belonging to a Jiralhanae Bodyguard."

ITEM.Species 			= SPECIES_BRUTE

if SERVER then
	function ITEM:GetModelData(ply)
		return {
			_base = {
				Skin = 0,
				Bodygroups = {
					Helmet = 3,
					Torso = 3,
					Shoulder_Right = 2,
					Shoulder_Left = 2,
                    Forearm_Right = 1,
					Forearm_Left = 1,
					Thighs = 3,
					Calves = 1,
					Undersuit = 2,
				}
			}
		}
	end
end

return ITEM