ITEM = class.Create("base_clothing")

ITEM.Name 				= "ODST Armor"
ITEM.Description 		= "A customizable set of ODST combat gear."

ITEM.Model 			= Model("models/ishi/halo_rebirth/odst/male/props/chestplate.mdl")

ITEM.Color 				= Color(145, 145, 145)
ITEM.OutlineColor 		= Color(109, 109, 109)

ITEM.Width 				= 2
ITEM.Height 			= 2

ITEM.EquipmentSlots 	= {EQUIPMENT_TORSO}
ITEM.ModelGroups 		= {"ODST"}

ITEM.License 		= LICENSE_QM

ITEM.Locked 			= false
ITEM.Cuffs 				= false

local fields = {
	"Abdomen",
	"ChestPlate",
	"Cuffs",
	"ShoulderLeft",
	"ShoulderRight",
	"Belt",
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
				self.Abdomen = math.random(0, 4)
				self.Cuffs = math.random(0, 1) == 1
				self.Chestplatee = math.random(0, 6)
				self.ShoulderLeft = math.random(0, 6)
				self.ShoulderRight = math.random(0, 6)
				self.Belt = math.random(0, 6)
				self.Calves = math.random(0, 4)
				self.ThighLeft = math.random(0, 1)
				self.ThighRight = math.random(0, 1)

				ply:HandlePlayerModel()
			end

		})

		table.insert(tab, {
			Name = "Set Abdomen variant",
			Client = function()
				return GAMEMODE:OpenGUI("Input", "number", "Set Abdomen variant", {
					Default = self.Adbomen or 0,
				})
			end,
			Callback = function(val)
				self.Abdomen = math.Clamp(math.Round(val), 0, 4)

				ply:HandlePlayerModel()
			end
		})

		table.insert(tab, {
			Name = "Set Chestplate",
			Client = function()
				return GAMEMODE:OpenGUI("Input", "number", "Set Chestplate", {
					Default = self.Chestplatee or 0
				})
			end,
			Callback = function(val)
				self.Chestplatee = math.Clamp(math.Round(val), 0, 6)

				ply:HandlePlayerModel()
			end
		})

		table.insert(tab, {
			Name = "Toggle Cuffs",
			Callback = function()
				self.Cuffs = not self.Cuffs

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
				self.ShoulderLeft = math.Clamp(math.Round(val), 0, 6)

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
				self.ShoulderRight = math.Clamp(math.Round(val), 0, 6)

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
				self.Belt = math.Clamp(math.Round(val), 0, 6)

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
			Name = "Toggle Left Thigh",
			Callback = function()
				self.ThighLeft = not self.ThighLeft

				ply:HandlePlayerModel()
			end
		})

		table.insert(tab, {
			Name = "Toggle Right Thigh",
			Callback = function()
				self.ThighRight = not self.ThighRight

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
					ChestPlate = self.Chestplatee,
					Forearms = self.Cuffs and 1 or 0,
					Shoulder_Left = self.ShoulderLeft,
					Shoulder_Right = self.ShoulderRight,
					Belt = self.Belt,
					Calves = self.Calves,
					Thigh_Left = self.ThighLeft and 1 or 0,
					Thigh_Right = self.ThighRight and 1 or 0
				}
			}
		}
	end
end

return ITEM