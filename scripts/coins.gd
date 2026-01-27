extends Node


func _on_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
	print("Coin +1")
	queue_free()
