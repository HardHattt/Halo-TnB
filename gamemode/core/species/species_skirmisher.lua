local CLASS = class.Create("base_species")

CLASS.Name 					= "T'vaoan"
CLASS.Team 					= TEAM_COVENANT

CLASS.ForceTeamSpawn 		= true

CLASS.BaseHealth 			= 150

CLASS.WeaponLoadout 		= {"eternity_hands"}
CLASS.PlayerModels 			= {
	Model("models/halo_reach/characters/players/covenant/skirmisher_custom.mdl")
}

CLASS.DisabledProperties 	= {}

CLASS.AllowStash 			= false

CLASS.EquipmentSlots 		= {EQUIPMENT_ARMOR}
CLASS.WeaponSlots 			= {EQUIPMENT_RADIO, EQUIPMENT_PRIMARY, EQUIPMENT_SECONDARY, EQUIPMENT_MISC}

CLASS.ArmorLevel 			= ARMOR_LIGHT

CLASS.MoveSpeed 			= {
	Walk = 80,
	Run = 390,
	Jump = 300,
	Crouch = 50
}

CLASS.DeathSounds 			= {
		"jackal/death/dth1.wav",
  		"jackal/death/dth10.wav",
  		"jackal/death/dth2.wav",
  		"jackal/death/dth3.wav",
  		"jackal/death/dth4.wav",
  		"jackal/death/dth5.wav",
  		"jackal/death/dth6.wav",
  		"jackal/death/dth7 (1).wav",
  		"jackal/death/dth8.wav",
}

CLASS.Voicelines 	= {
	["Taunt 1"] = "jackal/taunt/tnt10.wav",
	["Taunt 2"] = "jackal/taunt/tnt11.wav",
  	["Taunt 3"] = "jackal/taunt/tnt12.wav",
  	["Taunt 4"] = "jackal/taunt/tnt13.wav",
	["Taunt 5"] = "jackal/taunt/tnt14.wav",
  	["Taunt 6"] = "jackal/taunt/tnt9.wav",
    ["Injured"] = "jackal/death/dth1.wav",
  	["Injured 2"] = "jackal/death/dth4.wav",
	
}

local color = Color(28, 28, 28):ToVector()

if CLIENT then
	function CLASS:ProcessPreview(ent, pnl)
		ent.GetPlayerColor = function() return color end
	end
end

if SERVER then
	function CLASS:InitialSetup(ply)
		ply:GiveLanguage(LANG_COVENANT)
		ply:SetActiveLanguage(LANG_COVENANT)
	end

	function CLASS:GetModelData(ply)
		return {
			_base = {
				Model = ply:CharModel(),
				PlayerColor = color
			}
		}
	end

	function CLASS:SetupHands(ply, ent)
		ent:SetModel("models/valk/haloreach/covenant/characters/grunt/grunt_hands.mdl")
		ent:SetSkin(0)
		ent:SetBodyGroups("00000000")

		local bodygroup = ply:ModelData()._base.Bodygroups

		if bodygroup then
			ent:SetBodygroup(1, bodygroup["Body Options"])
		end
	end
end

return CLASS