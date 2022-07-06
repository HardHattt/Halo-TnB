ITEM = class.Create("base_armor")

ITEM.Name 				= "Jiralhanae Jumper"
ITEM.Description 		= "Armor belonging to a Jiralhanae Jumper."

ITEM.Species 			= SPECIES_BRUTE

if SERVER then
	function ITEM:GetModelData(ply)
		return {
			_base = {
				Skin = 1,
				Bodygroups = {
					Helmet = 9,
					Torso = 9,
					Shoulder_Right = 2,
					Shoulder_Left = 2,
          			Forearm_Right = 5,
					Forearm_Left = 5,
					Thighs = 3,
					Calves = 1,
					Undersuit = 2,
				}
			}
		}
	end
end

return ITEM