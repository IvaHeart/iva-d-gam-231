extends CenterContainer

@onready var coin_count_label: Label = $HBoxContainer/CoinCount
@onready var game_manager: GameManager = %GameManager

func _process(delta: float) -> void:
	coin_count_label.text =str(game_manager.score)
