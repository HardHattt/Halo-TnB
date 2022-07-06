ITEM = class.Create("base_armor")

ITEM.Name 				= "Kig-Yar Sniper"
ITEM.Description 		= "Armor belonging to a Kig-Yar Sniper."

ITEM.Species 			= SPECIES_JACKAL

if SERVER then
	function ITEM:GetModelData(ply)
		return {
			_base = {
				Bodygroups = {
					Mask = 1,
					Shield = 1, -- Honor guard model
					Armor = 2
				}
			}
		}
	end
end

return ITEM