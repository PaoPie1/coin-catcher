extends Area2D

@export var fall_speed: float = 200.0

func _physics_process(delta: float) -> void:
	position.y += fall_speed * delta

func _on_body_entered(body: Node2D) -> void:
	print("Caught by: ", body.name)
	queue_free()
