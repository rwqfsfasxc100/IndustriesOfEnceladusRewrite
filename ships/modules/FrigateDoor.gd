extends RigidBody2D

export var mat = "CARGO_EQUIPMENT"
export var equipment = true
export var lidarResponse = 2
export var pinned = false

func getScan():
	return mat
	
var ship
func _ready():
	ship = get_parent()
	while not ship.has_method("isPlayerControlled"):
		ship = ship.get_parent()
	
	contacts_reported = 3
	
func getTransponder():
	return ship.getTransponder()

onready var initialPosition = position
export var snapBackDistance = 0.5



	
onready var lastLinearVelocity = linear_velocity
onready var lastAngularVelocity = angular_velocity
func _integrate_forces(state):
	if ship and ship.setup and mode == MODE_RIGID:
		set_deferred("mode",MODE_CHARACTER)
	if pinned and initialPosition.distance_to(position) > snapBackDistance:
		position = initialPosition
	
	var cnt = state.get_contact_count()
	if cnt > 0:
		for i in range(cnt):
			
			var impactPoint = state.get_contact_local_position(i) - global_position
			var angularVelocityAtImpact = impactPoint.rotated(PI / 2) * lastAngularVelocity
			var velocityAtImpact = lastLinearVelocity + angularVelocityAtImpact
			var vec = velocityAtImpact - state.get_contact_collider_velocity_at_position(i)
			var obj = state.get_contact_collider_object(i)
			var oh = hash(obj)
			if not (ship.cargoLut.has(oh) or (ship.physicsExclude.has(obj)) or ("fresh" in obj and obj.fresh)):
				if obj != ship and Tool.claim(obj):
					if "mass" in obj:
						var penetration = obj.get("penetration")
						if penetration == null:
							penetration = 1
						var spd = vec.length()
						var energy = penetration * spd * spd * min(mass, obj.mass) / 2000
						
						if energy > 100.0 and not ship.cutscene:
							var pt = state.get_contact_local_position(i)
							ship.addIntegratedDamage(obj, energy, pt)
					Tool.release(obj)
	lastLinearVelocity = linear_velocity
	lastAngularVelocity = angular_velocity

func applyEnergyDamage(energy, point, delta):
	return ship.applyEnergyDamage(energy, point, delta)

func applyKineticDamage(energy, point, delta = null):
	ship.applyKineticDamage(energy, point, delta)
	
func applyEmpDamage(energy, point, delta):
	ship.applyEmpDamage(energy, point, delta)

func applyHostility(f, amt, broadcast = true, factor = 0.25):
	ship.applyHostility(f, amt, broadcast, factor)
