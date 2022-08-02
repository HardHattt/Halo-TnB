local CLASS = class.Create("base_species")

CLASS.Name 					= "Jiralhanae"
CLASS.Team 					= TEAM_COVENANT

CLASS.ForceTeamSpawn 		= true

CLASS.BaseHealth 			= 500

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

CLASS.DeathSounds 			= {
		"brute/death/dth11.wav",
  		"brute/death/dth13.wav",
  		"brute/death/dth14.wav",
  		"brute/death/dth15.wav",
  		"brute/death/dth16.wav",
  		"brute/death/dth17.wav",
  		"brute/death/dth18.wav",
  		"brute/death/dth19.wav",
  		"brute/death/dth20.wav",
  		"brute/death/dth26.wav",
    	"brute/death/dth27.wav",
    	"brute/death/dth_drama5.wav",
}

CLASS.Voicelines 	= {
	["Afraid?"] = "brute/taunt/tnt1.wav",
	["Pathetic"] = "brute/taunt/tnt10.wav",
  	["Cower!"] = "brute/taunt/tnt2.wav",
  	["Spit on you"] = "brute/taunt/tnt24.wav",
	["You Disappoint"] = "brute/taunt/tnt32.wav",
  	["All you got?"] = "brute/taunt/tnt5.wav",
    ["Injured"] = "brute/death/dth11.wav",
  	["Injured 2"] = "brute/death/dth15.wav",
	
}

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