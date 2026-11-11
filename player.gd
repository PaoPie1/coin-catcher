extends CharacterBody2D

@export var speed: float = 300.0

func _physics_process(_delta: float) -> void:
	var direction := Input.get_axis("move_left", "move_right")
	
	velocity.x = direction * speed
	velocity.y = 0
	
	move_and_slide()
	
	position.x = clamp(position.x, 16.0, 1136.0)
