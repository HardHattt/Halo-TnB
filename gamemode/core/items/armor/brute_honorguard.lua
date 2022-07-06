ITEM = class.Create("base_armor")

ITEM.Name 				= "Jiralhanae Honor Guard"
ITEM.Description 		= "Armor belonging to a Jiralhanae Honor Guard."

ITEM.Species 			= SPECIES_BRUTE

if SERVER then
	function ITEM:GetModelData(ply)
		return {
			_base = {
				Skin = 0,
				Bodygroups = {
					Helmet = 11,
					Torso = 10,
					Shoulder_Right = 8,
					Shoulder_Left = 8,
          			Forearm_Right = 3,
					Forearm_Left = 3,
					Thighs = 8,
					Calves = 3,
					Undersuit = 1,
				}
			}
		}
	end
end

return ITEM