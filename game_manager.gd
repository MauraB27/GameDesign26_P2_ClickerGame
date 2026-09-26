extends Control

var coin: int = 10
@onready var coin_label: Label = $CoinLabel
#Node $CoinLabel


#Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# setting initial coin to 0
	coin = 0


# receiver function for ClickerButton
func _on_button_down():
	# Add coin
	# when clicker is clicked, add 10 coins
	#coin += 10
	#print("this worked")
	coin += $ClickerButton.clicker_strength # can also do coin += 10
	
	# Update UI
	coin_label.text = "Coin: " + str(coin)
	print(coin)


func _on_clicker_button_clicked(amount: int) -> void:
	pass # Replace with function body.


func _on_generator_coin_generated(int: Variant) -> void:
	pass # Replace with function body.
