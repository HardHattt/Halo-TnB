local CLASS = class.Create("base_species")

CLASS.Name 					= "Sangheili"
CLASS.Team 					= TEAM_COVENANT

CLASS.ForceTeamSpawn 		= true

CLASS.BaseHealth 			= 500

CLASS.WeaponLoadout 		= {"eternity_hands"}
CLASS.PlayerModels 			= {
	Model("models/halo_reach/players/elite_minor.mdl")
}

CLASS.DisabledProperties 	= {
	["CharSkin"] = true
}

CLASS.AllowStash 			= false

CLASS.EquipmentSlots 		= {EQUIPMENT_ARMOR}
CLASS.WeaponSlots 			= {EQUIPMENT_RADIO, EQUIPMENT_PRIMARY, EQUIPMENT_SECONDARY, EQUIPMENT_MISC}

CLASS.ArmorLevel 			= ARMOR_HEAVY

CLASS.MoveSpeed 			= {
	Walk = 50,
	Run = 300,
	Jump = 300,
	Crouch = 50
}

CLASS.DeathSounds 			= {
		"elite/death/1.wav",
  		"elite/death/2.wav",
  		"elite/death/dth1 (1).wav",
  		"elite/death/dth1.wav",
  		"elite/death/dth2.wav",
  		"elite/death/dth3 (1).wav",
  		"elite/death/dth3.wav",
  		"elite/death/dth5.wav",
  		"elite/death/dth6.wav",
  		"elite/death/dth7.wav",
  		"elite/death/dth_fall2.wav",
}

CLASS.Voicelines 	= {
	["Smoke & Fire"] = "elite/taunt/tnt11.wav",
	["No Heart"] = "elite/taunt/tnt4 (1).wav",
  	["No match"] = "elite/taunt/tnt4.wav",
  	["Best you have"] = "elite/taunt/tnt6.wav",
	["No chance"] = "elite/taunt/tnt8.wav",
  	["You come to die"] = "elite/taunt/tnt9.wav",
    ["Injured"] = "elite/death/dth3 (1).wav",
  	["Injured 2"] = "elite/death/dth1 (1).wav",
	
}

if CLIENT then
	local overlay = CreateMaterial("EliteOverlay", "UnlitGeneric", {
		["$basetexture"] = "models/vuthakral/halo/HUD/overlay_elite",
		["$translucent"] = 1,
		["$ignorez"] = 1
	})

	function CLASS:PreDrawHUD()
		if not GAMEMODE:IsFirstPerson() or not GAMEMODE:GetSetting("hud_overlay") then
			return
		end

		cam.Start2D()
			surface.SetMaterial(overlay)
			surface.SetDrawColor(130, 75, 255, 255)
			surface.DrawTexturedRect(0, 0, ScrW(), ScrH())
			surface.DrawTexturedRect(0, 0, ScrW(), ScrH())
			surface.DrawTexturedRect(0, 0, ScrW(), ScrH())
		cam.End2D()
	end
else
	function CLASS:InitialSetup(ply)
		ply:GiveLanguage(LANG_COVENANT)
		ply:SetActiveLanguage(LANG_COVENANT)
	end

	function CLASS:SetupHands(ply, ent)
		ent:SetModel("models/weapons/c_arms_hev.mdl")
		ent:SetSkin(0)
		ent:SetBodyGroups("00000000")
	end

	function CLASS:GetModelData(ply)
		return {
			_base = {
				Model = "models/halo_reach/players/elite_minor.mdl",
				Skin = 1
			}
		}
	end
end

return CLASS