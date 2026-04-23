extends RigidBody2D

export var faction = "asteroid"
export var lidarResponse = 2
export var mystery = true
export var mood = "mystery"

export var complexShape = true
export var offsetTargetting = true

func getComposition():
	return {"Fe": 1.0}

func getScan():
	var v = randf()
	var comp = getComposition()
	for c in comp:
		v -= comp[c]
		if (v < 0):
			return c
	return "Fe"

func getCollider():
	var dpc = get_node_or_null("Detacher/SpawnCollider")
	if dpc:
		return dpc
	
	var collider = []
	for c in get_children():
		if c is CollisionShape2D or c is CollisionPolygon2D:
			collider.append(c)
	return collider

var field = null

func _ready():
	field = get_parent()
	if not field.has_method("spawnAsteroidByClass"):
		field = null
						
func _process(delta):
	if mystery:
		CurrentGame.emit_signal("moodChange", mood, delta)

