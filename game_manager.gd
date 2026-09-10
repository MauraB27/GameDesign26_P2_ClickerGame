extends Control

var coin: int 
@onready var coin_label: Label = $CoinLabel
#Node $CoinLabel


# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	# setting initial coin to 0
#	coin = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass

# receiver function for ClickerButton
func _on_button_down():
	# Add coin
	# when clicker is clicked, add 10 coins
	#coin += 10
	print("this worked")
	coin += $ClickerButton.clicker_strength # can also do coin += 10
	
	# Update UI
	coin_label.text = "Coin: " + str(coin)
	print(coin)
