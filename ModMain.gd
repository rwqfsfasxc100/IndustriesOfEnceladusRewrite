extends Node

# Set mod priority if you want it to load before/after other mods
# Mods are loaded from lowest to highest priority, default is 0
const MOD_PRIORITY = -99
# Name of the mod, used for writing to the logs
const MOD_NAME = "Industries of Enceladus Compat Port"
const MOD_VERSION_MAJOR = 2
const MOD_VERSION_MINOR = 7
const MOD_VERSION_BUGFIX = 10
const MOD_VERSION_METADATA = ""
# Path of the mod folder, automatically generated on runtime
var modPath:String = get_script().resource_path.get_base_dir() + "/"
# Required var for the replaceScene() func to work
var _savedObjects := []

var modSettings = {}

var ADD_EQUIPMENT_SLOTS = []
var ADD_EQUIPMENT_ITEMS = []
var EQUIPMENT_TAGS = {}
var SLOT_TAGS = {}

var verbose = false

func _init(modLoader = ModLoader):
# Must load DLC early for it to properly function.
	# Modify Settings.gd first so we can load config and DLC
	
	var ConfigDriver = load("res://HevLib/pointers/ConfigDriver.gd")
	loadDLC()
	
	verbose = ConfigDriver.__get_value("IndustriesOfEnceladusRewrite","IOE_CONFIG_OPTIONS","verbose_logging")
	
	var self_path = self.get_script().get_path()
	var self_directory = self_path.split(self_path.split("/")[self_path.split("/").size() - 1])[0]
	var self_check = load(self_directory + "mod_checker_script.tscn").instance()
	add_child(self_check)
	
	installScriptExtension("ships/modules/MineralProcessingUnit.patch.gd")
	
# replace ShipParams for hold percentage fill readout
	replaceScene("hud/trtl/ShipParams.tscn")
# install ship-ctrl.gd, adds hold sensors and AP setup
	installScriptExtension("ships/ship-ctrl.gd")
# install AutopilotOverlay.gd for new AP type
	installScriptExtension("hud/AutopilotOverlay.gd")

	replaceScene("sfx/torch-PMS.tscn")
	replaceScene("sfx/torch-ZUBRIN.tscn")
	
	replaceScene("story/TheRing.tscn")
	
# replace weapons and WeaponSlot
	
	l("Setting up aesthetic adjustments")
	replaceScene("weapons/railgun_tor.tscn")
		
# replace Dealer.tscn for our "promo images" (that i don't have lol)
	
	replaceScene("enceladus/Dealer.tscn")
	
	
# install the Shipyard.gd script extension, which loads replacements + new ships
	installScriptExtension("enceladus/Upgrades.gd")
	l("Initialised!", MOD_NAME)


func _ready():
	replaceScene("comms/conversation/subtrees/DIALOG_PIRATE_SUPPORT.tscn")
	l("Ready!")



# Helper function to extend scripts
# Loads the script you pass, checks what script is extended, and overrides it
func installScriptExtension(path:String):
	var childPath:String = str(modPath + path)
	var childScript:Script = ResourceLoader.load(childPath,"",true)

	childScript.new()

	var parentScript:Script = childScript.get_base_script()
	var parentPath:String = parentScript.resource_path

	l("Installing script extension: %s <- %s" % [parentPath, childPath])

	childScript.take_over_path(parentPath)


# Helper function to replace scenes
# Can either be passed a single path, or two paths
# With a single path, it will replace the vanilla scene in the same relative position
func replaceScene(newPath:String, oldPath:String = ""):
	l("Updating scene: %s" % newPath)

	if oldPath.empty():
		oldPath = str("res://" + newPath)

	newPath = str(modPath + newPath)

	var scene := ResourceLoader.load(newPath,"",true)
	scene.take_over_path(oldPath)
	_savedObjects.append(scene)
	l("Finished updating: %s" % oldPath)


# Instances Settings.gd, loads DLC, then frees the script.
func loadDLC():
	l("Preloading DLC as workaround")
	var DLCLoader:Settings = preload("res://Settings.gd").new()
	DLCLoader.loadDLC()
	DLCLoader.queue_free()
	l("Finished loading DLC")


# Func to print messages to the logs
func l(msg:String, title:String = MOD_NAME, version:String = str(MOD_VERSION_MAJOR) + "." + str(MOD_VERSION_MINOR) + "." + str(MOD_VERSION_BUGFIX)):
	if not MOD_VERSION_METADATA == "":
		version = version + "-" + MOD_VERSION_METADATA
	Debug.l("[%s V%s]: %s" % [title, version, msg])
