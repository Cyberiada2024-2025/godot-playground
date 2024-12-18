extends Node3D

class_name Weapon

@export var bullet : PackedScene = preload("res://Prefabs/Bullet.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func Shoot(Direction:Vector3):
	var b : Bullet= bullet.instantiate() # tworzę	
	get_tree().root.add_child(b) # dodaje do  sceny
	b.position = self.global_position	
	b.direction = Direction
	print("SHOOT")
	
