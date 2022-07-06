ITEM = class.Create("base_armor")

ITEM.Name 				= "Jiralhanae War Chieftain"
ITEM.Description 		= "Armor belonging to a Jiralhanae War Chieftain."

ITEM.Species 			= SPECIES_BRUTE

if SERVER then
	function ITEM:GetModelData(ply)
		return {
			_base = {
				Skin = 0,
				Bodygroups = {
					Helmet = 8,
					Torso = 7,
					Shoulder_Right = 7,
					Shoulder_Left = 9,
          			Forearm_Right = 1,
					Forearm_Left = 4,
					Thighs = 7,
					Calves = 5,
					Undersuit = 2,
				}
			}
		}
	end
end

return ITEM