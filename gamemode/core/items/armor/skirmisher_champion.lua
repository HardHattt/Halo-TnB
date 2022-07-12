ITEM = class.Create("base_armor")

ITEM.Name 				= "T'vaoan Champion"
ITEM.Description 		= "Armor belonging to a T'vaoan Champion."

ITEM.Species 			= SPECIES_SKIRMISHER

if SERVER then
	function ITEM:GetModelData(ply)
		return {
			_base = {
				Skin = 2,
				Bodygroups = {
					Armor = 3,
					Mask  = 3,
					Left_Bracer = 1,
					Right_Bracer = 1,
				},
				PlayerColor = Color(225, 139, 0):ToVector()
			}
		}
	end
end

return ITEM