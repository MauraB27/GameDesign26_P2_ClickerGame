extends Button

var clicker_strength: int = 10
signal clicked(int)
#coin scene will come in automatically
@onready var coin_scene: PackedScene = load("res://rigid_body_2d.tscn")
@export var game_manager: Node 

#func _on_button_down() -> void:
	
	
	# Other juicy stuff here too

func _on_upgrade_button_pressed() -> void:
	print("Upgrade pressed")
	#clicker_strength = clicker_strength * 3
	#print("hello2")
	
	var cost = clicker_strength * 3
	if game_manager.coin >= cost:
		clicker_strength *= 2
	
	#make the player pay for upgrading
		game_manager.coin -= cost


func _on_pressed() -> void:
	clicked.emit(clicker_strength)
	#spawn the packed scene
	var c = coin_scene.instantiate() #create the coin, store as c
	add_child(c) #add it to the tree
	c.global_position = get_global_mouse_position()


#func _on_clicked(amount: int) -> void:
	#pass # Replace with function body.
