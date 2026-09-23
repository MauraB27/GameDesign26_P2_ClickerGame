extends Control
var strength: int = 10
signal coin_generated(int)
@export var game_manager: Node

func _on_upgrade_button_2_pressed() -> void:
	#same as clicker
	print("Upgrade2 pressed")
	#var cost = clicker_strength * 3
	#if game_manager.coin >= cost:
	#clicker_strength *= 2
	
	#make the player pay for upgrading
	#	clicked.emit(-cost)

#func _on_timer_timeout() -> void:
	#emit signal
	#effects (Coin, sound)
