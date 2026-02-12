extends Control

@onready var coin_count_label: Label = $HBoxContainer/CoinCount

func _ready():
	# Connect to the GameManager's score_changed signal
	var game_manager = get_node("/root/Level_01/GameManager")
	if game_manager:
		game_manager.score_changed.connect(_on_score_changed)
		# Update initial score
		_on_score_changed(game_manager.score)

func _on_score_changed(new_score: int):
	coin_count_label.text = str(new_score)
