extends "res://ships/modules/MineralProcessingUnit.gd"

var bkgps = 0.0
var bmineralefficiency = 0.0
var bpower = 0.0

func _enter_tree():
	bkgps = float(kgps)
	bmineralefficiency = float(mineralEfficiency)
	bpower = float(powerDrawPerKg)

func setKgps(k):
	kgps = k

func setEfficiency(m):
	mineralEfficiency = m

func setPower(p):
	powerDrawPerKg = p

func getKgps(default = true) -> float:
	var modify = 1.0
	var base = ship.getTunedValue(slotName, "TUNE_MPU_SPEED", bkgps)
	if default:
		modify = kgps/bkgps
	var speed = base * modify
	return speed

func getTuneables():
	return {
		"TUNE_MPU_SPEED": {
			"type": "float", 
			"min": float(bkgps) * 0.5, 
			"max": float(bkgps) * 1.5, 
			"step": ceil(float(bkgps) / 100), 
			"default": kgps, 
			"current": getKgps(false), 
			"unit": "kg/s", 
			"testProtocol": "cargo"
		}
	}
