extends Node
@onready var coin_sound: AudioStreamPlayer2D = $CoinSound
@onready var animation_player: AnimationPlayer = $AnimationPlayer

# Signal emitted when coin is collected
signal coin_collected

func _on_body_entered(body: Node2D) -> void:
	# Check if the body that entered is the player
	if body.is_in_group("player"):
		# Emit the coin collected signal
		emit_signal("coin_collected")
		# Play the coin sound
		coin_sound.play()
		# Play the pickup animation
		animation_player.play("pickup")
