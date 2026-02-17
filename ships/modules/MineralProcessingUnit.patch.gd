extends "res://ships/modules/MineralProcessingUnit.gd"

var bkgps = kgps

func getKgps() -> float:
	var base = ship.getTunedValue(slotName, "TUNE_MPU_SPEED", bkgps)
	var modify = kgps/bkgps
	var speed = base * modify
	return speed
