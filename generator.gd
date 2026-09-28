extends Control

var generator_strength: int = 10
signal coin_generated(amount: int)
#coin scene will come in automatically
@onready var coin_scene: PackedScene = load("res://rigid_body_2d.tscn")
@export var game_manager: Node 


func _on_timer_timeout() -> void:
	#emit signal
	coin_generated.emit(generator_strength)
	print("timer timed out")
	#effects (coin, sound)
	
	
	#spawn the packed scene
	#var c = coin_scene.instantiate() #create the coin, store as c
	#add_child(c) #add it to the tree
	#c.global_position = get_global_mouse_position()

func _on_upgrade_button_2_pressed() -> void:
	print("Upgrade2 pressed")
	#clicker_strength = clicker_strength * 3
	#print("hello2")
	
	var cost = generator_strength * 3
	if game_manager.coin >= cost:
		generator_strength *= 2
	
	#make the player pay for upgrading
		game_manager.coin -= cost
