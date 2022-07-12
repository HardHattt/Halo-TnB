local CLASS = class.Create("base_species")

CLASS.Name 					= "Mgalekgolo"
CLASS.Team 					= TEAM_COVENANT

CLASS.ForceTeamSpawn 		= true

CLASS.BaseHealth 			= 5000

CLASS.WeaponLoadout 		= {"eternity_hands_strong"}
CLASS.PlayerModels 			= {
	Model("models/valk/haloreach/covenant/characters/hunter/hunter_player.mdl")
}

CLASS.DisabledProperties 	= {}

CLASS.AllowStash 			= false

CLASS.EquipmentSlots 		= {EQUIPMENT_ARMOR}
CLASS.WeaponSlots 			= {EQUIPMENT_RADIO, EQUIPMENT_MISC}

CLASS.ArmorLevel 			= ARMOR_MASSIVE

Scale = 2

CLASS.MoveSpeed 			= {
	Walk = 67,
	Run = 200,
	Jump = 210,
	Crouch = 67
}

CLASS.DeathSounds 			= {
		"hunter/death/dth7.wav",
  		"hunter/death/dth_drama4.wav",
  		"hunter/death/dth_slnt1.wav",
  		"hunter/death/dth_slnt3.wav",
  		"hunter/death/dth_slnt4.wav",
  		"hunter/death/dth_slnt5.wav",
  		"hunter/death/dth_slnt6.wav",
  		"hunter/death/dth_slnt8.wav",
}

CLASS.Voicelines 	= {
	["Taunt 1"] = "hunter/taunt/dwn11.wav",
	["Taunt 2"] = "hunter/taunt/dwn12.wav",
  	["Taunt 3"] = "hunter/taunt/pain_mdm10.wav",
  	["Taunt 4"] = "hunter/taunt/pain_mjr1.wav",
	["Taunt 5"] = "hunter/taunt/rmd23.wav",
  	["Taunt 6"] = "hunter/taunt/rmd5.wav",
    ["Injured"] = "hunter/death/dth7.wav",
  	["Injured 2"] = "hunter/death/dth_slnt3.wav",
	
}

if SERVER then
	function CLASS:InitialSetup(ply)
		ply:GiveLanguage(LANG_COVENANT)
		ply:SetActiveLanguage(LANG_COVENANT)
	end
  
  	function CLASS:GetModelData(ply)
		return {
			_base = {
        		Model = "models/valk/haloreach/covenant/characters/hunter/hunter_player.mdl",
				Scale = 1.1
			}
		}
	end

	function CLASS:SetupHands(ply, ent)
		ent:SetModel("models/valk/haloreach/covenant/characters/hunter/c_arms_hunter.mdl")
		ent:SetSkin(0)
		ent:SetBodyGroups("00000000")
	end
end

return CLASS