extends Button


func _on_pressed() -> void:
	# Load the main level when play again is pressed
	get_tree().change_scene_to_file("res://scenes/level_01.tscn")
	
	
