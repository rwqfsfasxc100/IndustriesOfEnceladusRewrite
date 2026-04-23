extends "res://enceladus/Upgrades.gd"

onready var params_box = get_node_or_null(NodePath("VB/WindowMargin/TabHintContainer/Window/UPGRADE_SIMULATION/MarginContainer/ShipParams"))

func _ready():
	var startIndex = 24
	var holdLabel = Label.new()
	var holdReadout = Label.new()
	var holdUnit = Label.new()
	var crewQualityLabel = Label.new()
	var crewQualityReadout = Label.new()
	var crewQualityUnit = Label.new()
	
	holdLabel.text = "HUD_HOLD_CAP"
	holdLabel.uppercase = true
	holdLabel.modulate = Color(0.5,3,0.5)
	holdReadout.text = "   0.00"
	holdReadout.align = Label.ALIGN_RIGHT
	holdUnit.text = "t"
	holdUnit.modulate = Color(0.5,3,0.5)
	crewQualityLabel.text = "HUD_CREW_QUALITY"
	crewQualityLabel.uppercase = true
	crewQualityLabel.modulate = Color(0.5,3,0.5)
	crewQualityReadout.text = "   0.00"
	crewQualityReadout.align = Label.ALIGN_RIGHT
	crewQualityUnit.text = "%"
	crewQualityUnit.modulate = Color(0.5,3,0.5)
	
	holdReadout.set_script(load("res://hud/SensorDisplay.gd"))
	holdReadout.sensor = "hold"
	holdReadout.format = "%7.1f"
	holdReadout.control = true
	holdReadout.controlFormat = "%+7.1f"
	holdReadout.minWarn = 0
	holdReadout.minErr = 0
	holdReadout.maxWarn = 10000000
	holdReadout.maxErr = 10000000
	holdReadout.conversion = 0.001
	holdReadout.flashTime = 1
	
	crewQualityReadout.set_script(load("res://hud/SensorDisplay.gd"))
	crewQualityReadout.sensor = "crew.quality"
	crewQualityReadout.format = "%7.0f"
	crewQualityReadout.control = true
	crewQualityReadout.controlFormat = "%+7.0f"
	crewQualityReadout.minWarn = 0.81
	crewQualityReadout.minErr = 0.61
	crewQualityReadout.maxWarn = 10
	crewQualityReadout.maxErr = 10
	crewQualityReadout.conversion = 100
	crewQualityReadout.flashTime = 1
	
	params_box.add_child(holdLabel)
	params_box.add_child(holdReadout)
	params_box.add_child(holdUnit)
	params_box.add_child(crewQualityLabel)
	params_box.add_child(crewQualityReadout)
	params_box.add_child(crewQualityUnit)
	
	params_box.move_child(holdLabel,24)
	params_box.move_child(holdReadout,25)
	params_box.move_child(holdUnit,26)
	params_box.move_child(crewQualityLabel,27)
	params_box.move_child(crewQualityReadout,28)
	params_box.move_child(crewQualityUnit,29)
	
	pass

