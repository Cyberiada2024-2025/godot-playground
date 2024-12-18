extends RigidBody3D
class_name Bullet

var direction : Vector3 = Vector3(0,0,0)
const SPEED : float = 10
const MAX_LIFETIME : float = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#position += Vector3(0,0,1)*delta
	pass
	
func _physics_process(_delta) -> void:	
	position += direction * _delta * SPEED	

func SetDirection(direction : Vector3):
	self.direction = direction
