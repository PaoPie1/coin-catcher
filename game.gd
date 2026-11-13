extends Node2D

var coin_scene: PackedScene = preload("res://coin.tscn")

func _on_coin_timer_timeout() -> void:
	var new_coin := coin_scene.instantiate()
	new_coin.position = Vector2(randf_range(16.0, 1136.0), -20)
	
	add_child(new_coin)
	
	#print("Timer fired!")
