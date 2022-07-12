local CLASS = class.Create("base_species")

CLASS.Name 					= "Unggoy"
CLASS.Team 					= TEAM_COVENANT

CLASS.ForceTeamSpawn 		= true

CLASS.BaseHealth 			= 100

CLASS.WeaponLoadout 		= {"eternity_hands"}
CLASS.PlayerModels 			= {
	Model("models/valk/haloreach/covenant/characters/grunt/grunt_player.mdl")
}

CLASS.DisabledProperties 	= {
	["CharSkin"] = true
}

CLASS.AllowStash 			= false
CLASS.GasImmune 			= true

CLASS.EquipmentSlots 		= {EQUIPMENT_ARMOR}
CLASS.WeaponSlots 			= {EQUIPMENT_RADIO, EQUIPMENT_PRIMARY, EQUIPMENT_SECONDARY, EQUIPMENT_MISC}

CLASS.ArmorLevel 			= ARMOR_LIGHT

CLASS.MoveSpeed 			= {
	Walk = 80,
	Run = 170,
	Jump = 210,
	Crouch = 80
}

CLASS.DeathSounds 			= {
		"grunt/death/dth1.wav",
  		"grunt/death/dth10.wav",
  		"grunt/death/dth12.wav",
  		"grunt/death/dth2.wav",
  		"grunt/death/dth3.wav",
  		"grunt/death/dth4.wav",
  		"grunt/death/dth5.wav",
  		"grunt/death/dth6.wav",
  		"grunt/death/dth7.wav",
  		"grunt/death/dth8.wav",
    	"grunt/death/dth9.wav",
}

CLASS.Voicelines 	= {
	["All you got?"] = "grunt/taunt/tnt1.wav",
	["Little grug"] = "grunt/taunt/tnt10.wav",
  	["Coming for ya"] = "grunt/taunt/tnt2 (1).wav",
  	["You dont scare us"] = "grunt/taunt/tnt2.wav",
	["We dont fear"] = "grunt/taunt/tnt3.wav",
  	["We're gonna win"] = "grunt/taunt/tnt4.wav",
    ["Injured"] = "grunt/death/dth8.wav",
  	["Injured 2"] = "grunt/death/dth6.wav",
	
}

if CLIENT then
	function CLASS:ProcessPreview(ent, pnl)
		ent:SetSkin(1)
	end
end

if SERVER then
	function CLASS:InitialSetup(ply)
		ply:GiveLanguage(LANG_COVENANT)
		ply:SetActiveLanguage(LANG_COVENANT)
	end

	function CLASS:GetModelData(ply)
		local mdl = ply:CharSkin() == 1 and "models/valk/haloreach/covenant/characters/grunt/grunt_player_honor.mdl" or "models/valk/haloreach/covenant/characters/grunt/grunt_player.mdl"
		return {
			_base = {
				Model = mdl,
				Skin = 1
			}
		}
	end

	function CLASS:SetupHands(ply, ent)
		ent:SetModel("models/valk/haloreach/covenant/characters/grunt/grunt_hands.mdl")
		ent:SetSkin(0)
		ent:SetBodyGroups("00000000")
	end
end

return CLASS