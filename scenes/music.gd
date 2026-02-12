extends AudioStreamPlayer

func _ready() -> void:
	finished.connect(_loop)

func _loop() -> void:
	play()
