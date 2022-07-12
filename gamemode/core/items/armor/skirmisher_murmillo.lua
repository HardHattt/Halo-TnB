ITEM = class.Create("base_armor")

ITEM.Name 				= "T'vaoan Murmillo"
ITEM.Description 		= "Armor belonging to a T'vaoan Murmillo."

ITEM.Species 			= SPECIES_SKIRMISHER

if SERVER then
	function ITEM:GetModelData(ply)
		return {
			_base = {
				Bodygroups = {
					Armor = 1,
					Mask  = 1,
					Left_Bracer = 1,
					Right_Bracer = 2
				},
				PlayerColor = Color(174, 46, 0):ToVector()
			}
		}
	end
end

return ITEM