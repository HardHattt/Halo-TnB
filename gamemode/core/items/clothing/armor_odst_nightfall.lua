ITEM = class.Create("base_clothing")

ITEM.Name 			= "Nightfall ODST Armor"
ITEM.Description 	= "A set of ODST armor that can be layered over the older Nightfall undersuit."

ITEM.Model 			= Model("models/ishi/halo_rebirth/player/offduty/male/props/vest_nightfall_alice.mdl")

ITEM.Color 				= Color(145, 145, 145)
ITEM.OutlineColor 		= Color(127, 0, 255)

ITEM.Width 			= 2
ITEM.Height 		= 2

ITEM.ArmorLevel 	= ARMOR_HEAVY

ITEM.EquipmentSlots = {EQUIPMENT_TORSO}
ITEM.ModelGroups 	= {"Off-Duty"}

ITEM.Locked 			= false

local fields = {
	"Abdomen",
	"Vest",
	"GauntletLeft",
  	"GauntletRight",
	"ShoulderLeft",
	"ShoulderRight",
	"Cod",
	"Calves",
	"ThighLeft",
	"ThighRight"
}

function ITEM:GetOptions(ply)
	local tab = {}

	if ply:IsAdmin() then
		table.insert(tab, {
			Name = self.Locked and "Unlock" or "Lock",
			Callback = function()
				self.Locked = not self.Locked
			end
		})

	end

	if not self.Locked then
		table.insert(tab, {
			Name = "Randomize",
			Callback = function()
				self.Abdomen = math.random(0, 3)
				self.GauntletLeft = math.random(0, 4)
          		self.GauntletRight = math.random(0, 4)
				self.ShoulderLeft = math.random(0, 6)
				self.ShoulderRight = math.random(0, 6)
				self.Belt = math.random(0, 2)
				self.Calves = math.random(0, 4)
				self.ThighLeft = math.random(0, 2)
				self.ThighRight = math.random(0, 3)

				ply:HandlePlayerModel()
			end

		})

		table.insert(tab, {
			Name = "Set Abdomen Variant",
			Client = function()
				return GAMEMODE:OpenGUI("Input", "number", "Set Abdomen Variant", {
					Default = self.Adbomen or 0,
				})
			end,
			Callback = function(val)
				self.Abdomen = math.Clamp(math.Round(val), 0, 3)

				ply:HandlePlayerModel()
			end
		})

		table.insert(tab, {
			Name = "Set Gauntlet Left",
			Client = function()
				return GAMEMODE:OpenGUI("Input", "number", "Set Gauntlet Left", {
					Default = self.GauntletLeft or 0
				})
			end,
			Callback = function(val)
				self.GauntletLeft = math.Clamp(math.Round(val), 0, 4)

				ply:HandlePlayerModel()
			end
		})
    
		table.insert(tab, {
			Name = "Set Gaultlet Right",
			Client = function()
				return GAMEMODE:OpenGUI("Input", "number", "Set Gauntlet Right", {
					Default = self.GauntletRight or 0
				})
			end,
			Callback = function(val)
				self.GauntletRight = math.Clamp(math.Round(val), 0, 4)

				ply:HandlePlayerModel()
			end
		})

		table.insert(tab, {
			Name = "Set Left Shoulder",
			Client = function()
				return GAMEMODE:OpenGUI("Input", "number", "Set Left Shoulder", {
					Default = self.ShoulderLeft or 0
				})
			end,
			Callback = function(val)
				self.ShoulderLeft = math.Clamp(math.Round(val), 0, 7)

				ply:HandlePlayerModel()
			end
		})

		table.insert(tab, {
			Name = "Set Right Shoulder",
			Client = function()
				return GAMEMODE:OpenGUI("Input", "number", "Set Right Shoulder", {
					Default = self.ShoulderRight or 0
				})
			end,
			Callback = function(val)
				self.ShoulderRight = math.Clamp(math.Round(val), 0, 7)

				ply:HandlePlayerModel()
			end
		})

		table.insert(tab, {
			Name = "Set Belt",
			Client = function()
				return GAMEMODE:OpenGUI("Input", "number", "Set Belt", {
					Default = self.Belt or 0
				})
			end,
			Callback = function(val)
				self.Belt = math.Clamp(math.Round(val), 0, 2)

				ply:HandlePlayerModel()
			end
		})

		table.insert(tab, {
			Name = "Set Calves",
			Client = function()
				return GAMEMODE:OpenGUI("Input", "number", "Set Calves", {
					Default = self.Calves or 0
				})
			end,
			Callback = function(val)
				self.Calves = math.Clamp(math.Round(val), 0, 4)

				ply:HandlePlayerModel()
			end
		})

		table.insert(tab, {
			Name = "Set Thigh Left",
			Client = function()
				return GAMEMODE:OpenGUI("Input", "number", "Set Thigh Left", {
					Default = self.ThighLeft or 0
				})
			end,
			Callback = function(val)
				self.ThighLeft = math.Clamp(math.Round(val), 0, 2)

				ply:HandlePlayerModel()
			end
		})

		table.insert(tab, {
			Name = "Set Thigh Right",
			Client = function()
				return GAMEMODE:OpenGUI("Input", "number", "Set Thigh Right", {
					Default = self.ThighRight or 0
				})
			end,
			Callback = function(val)
				self.ThighRight = math.Clamp(math.Round(val), 0, 3)

				ply:HandlePlayerModel()
			end
		})
	end

	for _, v in pairs(self:ParentCall("GetOptions", ply)) do
		table.insert(tab, v)
	end

	return tab
end

if SERVER then
	function ITEM:GetModelData(ply)
		return {
			_base = {
				Skin = self.Visor,
				PlayerColor = self.ArmorColor,
				Bodygroups = {
					Abdomen = self.Abdomen,
					Gauntlet_Left = self.GauntletLeft,
          			Gauntlet_Right = self.GauntletRight,
					Shoulder_Left = self.ShoulderLeft,
					Shoulder_Right = self.ShoulderRight,
					Cod = self.Belt,
					Calves = self.Calves,
					Thigh_Left = self.ThighLeft,
					Thigh_Right = self.ThighRight
				}
			}
		}
	end
end

return ITEM