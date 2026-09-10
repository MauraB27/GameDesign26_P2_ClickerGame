extends Button

@export var clicker_strength: int = 10
signal clicked(amount: int)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_down() -> void:
	# Emit signal with current strength
	clicked.emit(clicker_strength)
	
	# Other juicy stuff here too

func _on_upgrade_button_pressed() -> void:
	print("Upgrade pressed")
	clicker_strength = clicker_strength * 2
	print("hello2")
