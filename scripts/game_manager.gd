extends Node
class_name GameManager

# Track the player's score
var score: int = 0

func _ready() -> void:
	# Connect to the main scene's coin collected signal
	# This will be connected when the level loads
	pass

func add_points(points: int) -> void:
	score += points
	print("Score: ", score)
	# You can emit a signal here to update the UI
	emit_signal("score_changed", score)

func _on_coin_collected() -> void:
	add_points(2)
	print("Coin collected!")

func _on_player_reached_finish() -> void:
	print("Player reached finish line!")
	# You can add victory screen logic here
	# For now, just print a message
	# You might want to load a victory scene or show a UI
	# get_tree().change_scene_to_file("res://victory_screen.tscn")

func _on_area_2d_body_entered(body: Node2D) -> void:
	# Check if the body that entered is the player
	if body.is_in_group("player"):
		# Load the victory screen
		get_tree().change_scene_to_file("res://victory_screen.tscn")
 
