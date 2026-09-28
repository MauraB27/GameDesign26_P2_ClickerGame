extends Control

var coin: int
@onready var coin_label: Label = $CoinLabel
#Node $CoinLabel

#Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# setting initial coin to 0
	coin = 0

func _on_generator_coin_generated(int: Variant) -> void:
	pass # Replace with function body.

# receiver function for ClickerButton
func _on_clicker_button_coin_generated(amount: int) -> void:
	#add coin
	coin += amount # can also do coin += 10
	
	# Update UI
	coin_label.text = "Coin: " + str(coin)
	print(coin)
