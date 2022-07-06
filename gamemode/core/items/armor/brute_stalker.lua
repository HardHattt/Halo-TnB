ITEM = class.Create("base_armor")

ITEM.Name 				= "Jiralhanae Stalker"
ITEM.Description 		= "Armor belonging to a Jiralhanae Stalker."

ITEM.Species 			= SPECIES_BRUTE

if SERVER then
	function ITEM:GetModelData(ply)
		return {
			_base = {
				Skin = 1,
				Bodygroups = {
					Helmet = 10,
					Torso = 7,
					Shoulder_Right = 6,
					Shoulder_Left = 6,
          			Forearm_Right = 5,
					Forearm_Left = 5,
					Thighs = 6,
					Calves = 4,
					Undersuit = 2,
				}
			}
		}
	end
end

return ITEM