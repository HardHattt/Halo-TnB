ITEM = class.Create("base_clothing")

ITEM.Name 				= "Marine Armor"
ITEM.Description 		= "A customizable set of UNSC combat gear."

ITEM.OutlineColor 		= Color(127, 255, 159)

ITEM.Width 				= 2
ITEM.Height 			= 2

ITEM.EquipmentSlots 	= {EQUIPMENT_TORSO}

ITEM.License 			= LICENSE_QM

ITEM.ModelGroups 		= {"Marine"}

ITEM.Locked 			= false
ITEM.Cuffs 				= false

local fields = {
	"Face",
	"ChestPlate",
	"Cuffs",
	"ShoulderLeft",
	"ShoulderRight",
	"Belt",
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
				self.Face = math.random(0, 4)
				self.Cuffs = math.random(0, 1) == 1
				self.Chestplate = math.random(0, 13)
				self.ShoulderLeft = math.random(0, 5)
				self.ShoulderRight = math.random(0, 5)
				self.Belt = math.random(0, 2)
				self.ThighLeft = math.random(0, 5)
				self.ThighRight = math.random(0, 5)

				ply:HandlePlayerModel()
			end

		})

		table.insert(tab, {
			Name = "Set Face Apparel",
			Client = function()
				return GAMEMODE:OpenGUI("Input", "number", "Set Face Apparel", {
					Default = self.Face or 0,
				})
			end,
			Callback = function(val)
				self.Face = math.Clamp(math.Round(val), 0, 4)

				ply:HandlePlayerModel()
			end
		})

		table.insert(tab, {
			Name = "Set Chestplate",
			Client = function()
				return GAMEMODE:OpenGUI("Input", "number", "Set Chestplate", {
					Default = self.Chestplate or 0
				})
			end,
			Callback = function(val)
				self.Chestplate = math.Clamp(math.Round(val), 0, 13)

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
				self.ShoulderLeft = math.Clamp(math.Round(val), 0, 5)

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
				self.ShoulderRight = math.Clamp(math.Round(val), 0, 5)

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
			Name = "Set Left Thigh",
			Client = function()
				return GAMEMODE:OpenGUI("Input", "number", "Set Left Thigh", {
					Default = self.ThighLeft or 0
				})
			end,
			Callback = function(val)
				self.ThighLeft = math.Clamp(math.Round(val), 0, 5)

				ply:HandlePlayerModel()
			end
		})

		table.insert(tab, {
			Name = "Set Right Thigh",
			Client = function()
				return GAMEMODE:OpenGUI("Input", "number", "Set Left Thigh", {
					Default = self.ThighRight or 0
				})
			end,
			Callback = function(val)
				self.ThighRight = math.Clamp(math.Round(val), 0, 5)

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
					Face = self.Face,
					ChestPlate = self.Chestplate,
					Forearms = self.Cuffs and 1 or 0,
					Shoulder_Left = self.ShoulderLeft,
					Shoulder_Right = self.ShoulderRight,
					Belt = self.Belt,
					Thigh_Left = self.ThighLeft,
					Thigh_Right = self.ThighRight
				}
			}
		}
	end
end

return ITEM