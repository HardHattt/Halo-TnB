ITEM = class.Create("base_armor")

ITEM.Name 				= "Jiralhanae Captain Ultra"
ITEM.Description 		= "Armor belonging to a Jiralhanae Captain Ultra."

ITEM.Species 			= SPECIES_BRUTE

if SERVER then
	function ITEM:GetModelData(ply)
		return {
			_base = {
				Skin = 0,
				Bodygroups = {
					Helmet = 6,
					Torso = 5,
					Shoulder_Right = 5,
					Shoulder_Left = 5,
					Forearm_Right = 3,
          			Forearm_Left = 2,
					Thighs = 5,
					Calves = 3,
					Undersuit = 2
				}
			}
		}
	end
end

return ITEM