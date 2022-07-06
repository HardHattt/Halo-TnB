ITEM = class.Create("base_armor")

ITEM.Name 				= "Jiralhanae Minor"
ITEM.Description 		= "Armor belonging to a Jiralhanae Minor."

ITEM.Species 			= SPECIES_BRUTE

if SERVER then
	function ITEM:GetModelData(ply)
		return {
			_base = {
				Bodygroups = {
					Helmet = 2,
					Torso = 2,
					Shoulder_Right = 1,
					Shoulder_Left = 1,
					Thighs = 3,
					Calves = 1,
				}
			}
		}
	end
end

return ITEM