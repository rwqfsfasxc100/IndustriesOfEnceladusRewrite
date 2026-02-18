extends "res://ships/modules/MineralProcessingUnit.gd"

var bkgps = 50.0

func _enter_tree():
	print("MPU CODE CHANGED on ",self.name)
	bkgps = float(kgps)

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
