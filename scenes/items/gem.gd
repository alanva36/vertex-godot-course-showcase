extends Area2D

@export var sfx: AudioStreamPlayer2D

func spawn_feedback():
	var scene_to_spawn = preload("res://scenes/items/feedback.tscn")
	var new_scene_instance = scene_to_spawn.instantiate()
	get_tree().current_scene.add_child(new_scene_instance)  # Add the instance as a child of the current scene
	new_scene_instance.global_position = global_position

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		spawn_feedback()
		hide()
		GameManager.add_score(1)
		sfx.play()
		await get_tree().create_timer(0.6).timeout
		queue_free()
