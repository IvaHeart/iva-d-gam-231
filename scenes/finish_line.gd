extends Area2D

func _on_body_entered(body: Node) -> void:
	# Check if the body that entered is the player
	if body.is_in_group("player"):
		# Load the victory screen
		get_tree().change_scene_to_file("res://victory_screen.tscn")
