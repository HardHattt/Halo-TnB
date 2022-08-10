local CLASS = class.Create("base_species")

CLASS.Name 					= "Human"
CLASS.Team 					= TEAM_UNSC

CLASS.BaseHealth 			= 150

CLASS.WeaponLoadout 		= {"eternity_hands"}
CLASS.PlayerModels 			= {
	-- Male
	Model("models/ishi/halo_rebirth/player/offduty/male/offduty_g_yasser.mdl"),
	Model("models/ishi/halo_rebirth/player/offduty/male/offduty_g_yohannes.mdl"),
	Model("models/ishi/halo_rebirth/player/offduty/male/offduty_heretic.mdl"),
	Model("models/ishi/halo_rebirth/player/offduty/male/offduty_jeffrey.mdl"),
	Model("models/ishi/halo_rebirth/player/offduty/male/offduty_snippy.mdl"),
	-- Female
	Model("models/ishi/halo_rebirth/player/offduty/female/offduty_hank.mdl"),
	Model("models/ishi/halo_rebirth/player/offduty/female/offduty_miia.mdl"),
    Model("models/ishi/halo_rebirth/player/offduty/female/offduty_snowy.mdl")
}

CLASS.DisabledProperties 	= {
	["CharSkin"] = false
}

CLASS.AllowStash 			= true

CLASS.EquipmentSlots 		= {EQUIPMENT_HEAD, EQUIPMENT_TORSO, EQUIPMENT_BACK, EQUIPMENT_UNDERSUIT}
CLASS.WeaponSlots 			= {EQUIPMENT_ID, EQUIPMENT_RADIO, EQUIPMENT_PRIMARY, EQUIPMENT_SECONDARY, EQUIPMENT_MISC}

CLASS.DeathSounds 			= {
	[GENDER_MALE] = {
		"human/death/dth1 (1).wav",
		"human/death/dth1.wav",
		"human/death/dth2.wav",
		"human/death/dth3.wav",
		"human/death/dth4 (1).wav",
		"human/death/dth4.wav",
		"human/death/dth7 (1).wav",
		"human/death/dth7.wav",
		"human/death/dth8.wav"
	},
	[GENDER_FEMALE] = {
		"human/fdeath/dth1.wav",
		"human/fdeath/dth2.wav",
		"human/fdeath/dth3.wav",
		"human/fdeath/dth4 (1).wav",
		"human/fdeath/dth4.wav",
		"human/fdeath/dth5 (1).wav",
		"human/fdeath/dth5.wav",
		"human/fdeath/dth6 (1).wav",
		"human/fdeath/dth6.wav"
	}
}

if SERVER then
	local loadout = {
		[EQUIPMENT_HEAD] = "helmet_odst_basic",
		[EQUIPMENT_TORSO] = "armor_odst_h3",
		[EQUIPMENT_UNDERSUIT] = "undersuit_odst",
		[EQUIPMENT_RADIO] = "radio_basic"
	}

	function CLASS:InitialSetup(ply)
		ply:SetActiveLanguage(LANG_ENG)

		for k, v in pairs(loadout) do
			local item = GAMEMODE:CreateItem(v)

			ply:GetInventory(k):AddItem(item, 1, 1)
		end
	end

	function CLASS:HandleDeathSounds(ply)
		local tab = self.DeathSounds[ply:Gender()]

		if tab and #tab > 0 then
			local snd = table.Random(tab)

			ply:EmitSound(snd, 75, 100, 0.5)
		end
	end
end

return CLASS