extends "res://IndustriesOfEnceladusRewrite/ships/modules/CargoAuxBase.gd"

export  var dronePrintTime = 0.0
export  var bulletPrintTime = 0.0
export  var powerDrawPrint = 70000.0
export (bool) var enabled = true
export  var modify_kgps_add = 0
export  (int, 10, 1000, 1) var modify_kgps_percent_multi = 100

const droneUnit = 0.1
const droneCostPerKg = {
	"Fe":0.8, 
	"Pt":0.2
}

const massDriverUnit = 10.0
const massDriverCostPerKg = {
	"Fe":0.9, 
	"V":0.1
}

var massDriverCostCache = {}
var droneCostCache = {}

onready var printA = $PrintAudio

onready var dronePrintCtr = dronePrintTime
onready var bulletPrintCtr = bulletPrintTime

var power = 0

func getStatus():
	return 100
func getPower():
	return clamp(power, 0, 1)

func tryToDraw(cost:Dictionary, unit:float)->bool:
	var have = true
	for m in cost:
		var how = cost[m] * unit
		if ship.getProcessedCargo(m) < how:
			have = false
	if not have:
		return false
		
	for m in cost:
		var how = cost[m] * unit
		ship.removeProcessedCargo(m, how)
	return true

var made_adjustment = false

var has_modified = false

var current_model = ""

var baseMineralEfficiency = 0
var basekgps = 0
var basePowerDrawPerKg = 0

var fabricationRate = 100.0
export var tuneable_speed_min = 0.75
export var tuneable_speed_max = 2.5

export var material_low = 0.5
export var material_high = 3.0
export var max_efficiency_reduction = 100

func get_fabrication_rate() -> float:
	return ship.getTunedValue(slotName, "IOE_TUNE_FAB_SPEED", fabricationRate)

func powerFromRatio(x: float) -> float:
	return (( 1.0 / ( x * ( 3.0 - x )) - 1 ) * 1.8 + 2 )

func get_power():
	var dynamicKgps = get_fabrication_rate()
	var ratio = dynamicKgps / fabricationRate
	var powerDrawKw = powerDrawPrint * ratio
	return powerDrawKw

func material_efficiency():
	var dynamicKgps = get_fabrication_rate()
	var ratio = dynamicKgps / fabricationRate
	var lv = range_lerp(ratio,material_low,material_high,0,1)
	return lv * max_efficiency_reduction

func getTuneables():
	var out = {}
	out.merge({"IOE_TUNE_FAB_SPEED": {
		"type": "float", 
		"min": ceil(fabricationRate * tuneable_speed_min), 
		"max": ceil(fabricationRate * tuneable_speed_max), 
		"step": 5, 
		"default": fabricationRate, 
		"current": get_fabrication_rate(), 
		"unit": "%", 
		"testProtocol": "cargo"
	}})
	return out

func getParameters():
	var out = {}
	var powerDrawKw = get_power()
	var powerDrawHuman = ["%s" % [CurrentGame.formatThousands(powerDrawKw / 1000)], "MW"] if powerDrawKw > 1000 else ["%s" % [CurrentGame.formatThousands(powerDrawKw)], "kW"]
	out.merge({"IOE_TUNE_PARAMETER_PRINT_POWER_DRAW": powerDrawHuman})
	out.merge({"IOE_TUNE_PARAMETER_PRINT_MATERIAL_EFFICIENCY":["%.1f" % material_efficiency(), "%"]})
	return out 


func calculate_costs():
	var modify = (float(material_efficiency()) / 100)
	for m in droneCostPerKg:
		droneCostCache[m] = float(droneCostPerKg[m]) * (1 + modify)
	for m in massDriverCostPerKg:
		massDriverCostCache[m] = float(massDriverCostPerKg[m]) * (1 + modify)

func getAmmoCost():
	if massDriverCostCache:
		return massDriverCostCache
	return massDriverCostPerKg

func getDroneCost():
	if droneCostCache:
		return droneCostCache
	return droneCostPerKg


func _ready():
	var ship = getShip()
	var processor
	var reinstance = false
	var current_aux = ship.getConfig("cargo.aux")
	var current_mpu = ship.getConfig("cargo.equipment")
	calculate_costs()
	if current_aux == systemName:
		if current_model != current_mpu:
			reinstance = true
			current_model = current_mpu
		var self_aux = systemName
		for node in ship.get_children():
			if "systemName" in node:
				var nname = node.name
				if node.systemName == current_mpu:
					processor = node
		if processor:
			if not has_modified:
				baseMineralEfficiency = processor.mineralEfficiency
				basekgps = processor.kgps
				basePowerDrawPerKg = processor.powerDrawPerKg
				modifyProcessor(processor,basekgps,basePowerDrawPerKg)
				has_modified = true
			else:
				modifyProcessor(processor,basekgps,basePowerDrawPerKg)
			
#				breakpoint
	

func _physics_process(delta):
	
	if enabled:
		if Tool.claim(ship):
			var pwr = get_power()
			var speedRatio = fabricationRate / get_fabrication_rate()
			
			if ship.droneParts + droneUnit <= ship.dronePartsMax and pwr > 0:
				if dronePrintCtr < dronePrintTime:
					var p = pwr * delta
					if ship.drawEnergy(p) >= p * 0.9:
						dronePrintCtr += delta
						
			if ship.massDriverAmmo + massDriverUnit <= ship.massDriverAmmoMax and pwr > 0:
				if bulletPrintCtr < bulletPrintTime:
					var p = pwr * delta
					if ship.drawEnergy(p) >= p * 0.9:
						bulletPrintCtr += delta
					
			if bulletPrintTime > 0 and bulletPrintCtr >= bulletPrintTime:
				if tryToDraw(getAmmoCost(), massDriverUnit):
					ship.addAmmo(massDriverUnit)
					bulletPrintCtr -= bulletPrintTime
					if bulletPrintTime > 1:
						if ship.isPlayerControlled() and printA:
							printA.play()
							
			if dronePrintTime > 0 and dronePrintCtr >= dronePrintTime:
				if tryToDraw(getDroneCost(), droneUnit):
					ship.addDrones(droneUnit)
					dronePrintCtr -= dronePrintTime
					if dronePrintTime > 1:
						if ship.isPlayerControlled() and printA:
							printA.play()
							
			Tool.release(ship)


func modifyProcessor(processor,nodeKGPS,nodePower):
	
	var clp = clamp(modify_kgps_percent_multi,10,1000)
	var cc = clp/100.0
	var pl = nodeKGPS * cc
	var om = pl + modify_kgps_add
	var newKGPS = int(pl)
	
	var powerFactor = float((float(newKGPS)/float(nodeKGPS)))
	var newPower = int(nodePower * powerFactor)
	
	processor.set("powerDrawPerKg",newPower)
	processor.set("kgps",newKGPS)
