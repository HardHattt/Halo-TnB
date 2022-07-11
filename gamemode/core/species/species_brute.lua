local CLASS = class.Create("base_species")

CLASS.Name 					= "Jiralhanae"
CLASS.Team 					= TEAM_COVENANT

CLASS.ForceTeamSpawn 		= true

CLASS.BaseHealth 			= 450

CLASS.WeaponLoadout 		= {"eternity_hands_strong"}
CLASS.PlayerModels 			= {
	Model("models/valk/haloreach/covenant/characters/brute/brute.mdl")
}

CLASS.DisabledProperties 	= {
	["CharSkin"] = true
}

CLASS.AllowStash 			= false

CLASS.EquipmentSlots 		= {EQUIPMENT_ARMOR}
CLASS.WeaponSlots 			= {EQUIPMENT_RADIO, EQUIPMENT_PRIMARY, EQUIPMENT_SECONDARY, EQUIPMENT_MISC}

CLASS.ArmorLevel 			= ARMOR_HEAVY

CLASS.MoveSpeed 			= {
	Walk = 100,
	Run = 250,
	Jump = 300,
	Crouch = 80
}

CLASS.Voicelines 			= {}

if SERVER then
	function CLASS:InitialSetup(ply)
		ply:GiveLanguage(LANG_COVENANT)
		ply:SetActiveLanguage(LANG_COVENANT)
	end

	function CLASS:GetModelData(ply)
		return {
			_base = {
        		Model = "models/valk/haloreach/covenant/characters/brute/brute.mdl",
				Scale = 1.2
			}
		}
	end

	function CLASS:SetupHands(ply, ent)
		ent:SetModel("models/valk/haloreach/covenant/characters/brute/c_arms_brute_reach.mdl")
		ent:SetSkin(0)
		ent:SetBodyGroups("00000000")
	end
end

return CLASS