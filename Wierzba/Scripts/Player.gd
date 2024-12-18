extends RigidBody3D


@onready var weapon : Weapon = $Weapon

const MAX_SPEED : float = 10
const force : float = 100


		

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _input(event):
	
	var camera = get_viewport().get_camera_3d()
	var position2D = get_viewport().get_mouse_position()
	var dropPlane  = Plane(Vector3(0, 0, 10), 0)
	#var cursorPos3D = dropPlane.intersects_ray(camera.project_ray_origin(position2D),camera.project_ray_normal(position2D))	
	var cursorPos3D = camera.project_position(position2D,0)
	
	##print(cursorPos3D)
	
	# Mouse in viewport coordinates.	
	if event is InputEventMouseMotion:
		pass
		
	if event.is_action_pressed("LMB"):
		
		weapon.Shoot((cursorPos3D-position).normalized())
		  		



func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("Forward"):		
		apply_force(
			Vector3(0,0,force) * delta 
		)
		
	if Input.is_action_pressed("Backward"):
		apply_force(
			Vector3(0,0,-force) * delta 
		)
		
	if Input.is_action_pressed("Left"):
		apply_force(
			Vector3(force,0,0) * delta 
		)
	
	if Input.is_action_pressed("Right"):
		apply_force(
			Vector3(-force,0,0) * delta 
		)
