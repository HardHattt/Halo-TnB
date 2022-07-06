ITEM = class.Create("base_armor")

ITEM.Name 				= "Jiralhanae Major"
ITEM.Description 		= "Armor belonging to a Jiralhanae Major."

ITEM.Species 			= SPECIES_BRUTE

if SERVER then
	function ITEM:GetModelData(ply)
		return {
			_base = {
				Skin = 0,
				Bodygroups = {
					Helmet = 4,
					Torso = 4,
					Shoulder_Right = 4,
					Shoulder_Left = 4,
					Forearm_Right = 3,
          			Forearm_Left = 3,
					Thighs = 4,
					Calves = 3,
					Undersuit = 1
				}
			}
		}
	end
end

return ITEM