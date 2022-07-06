ITEM = class.Create("base_armor")

ITEM.Name 				= "Jiralhanae Chieftain"
ITEM.Description 		= "Armor belonging to a Jiralhanae Chieftain."

ITEM.Species 			= SPECIES_BRUTE

if SERVER then
	function ITEM:GetModelData(ply)
		return {
			_base = {
				Skin = 1,
				Bodygroups = {
					Helmet = 7,
					Torso = 6,
					Shoulder_Right = 3,
					Shoulder_Left = 3,
          			Forearm_Right = 1,
					Forearm_Left = 4,
					Thighs = 6,
					Calves = 4,
					Undersuit = 2,
				}
			}
		}
	end
end

return ITEM