ITEM = class.Create("base_armor")

ITEM.Name 				= "Zealot"
ITEM.Description 		= "Armor belonging to a Sangheili Zealot. Wipe them out..."

ITEM.Species 			= SPECIES_ELITE

local model = Model("models/halo_reach/players/elite_zealot.mdl")

if SERVER then
	function ITEM:GetModelData(ply)
		return {
			_base = {
				Model = model,
				Skin = 0,
				PlayerColor = Color(255, 187, 0):ToVector()
			}
		}
	end
end

return ITEM