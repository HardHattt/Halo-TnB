ITEM = class.Create("base_armor")

ITEM.Name 				= "Sangheili Captain"
ITEM.Description 		= "Armor belonging to a Sangheili Captain."

ITEM.Species 			= SPECIES_ELITE

local model = Model("models/halo_reach/players/elite_officer.mdl")

if SERVER then
	function ITEM:GetModelData(ply)
		return {
			_base = {
				Model = model,
				Skin = 0,
				PlayerColor = Color(68, 68, 121):ToVector()
			}
		}
	end
end

return ITEM