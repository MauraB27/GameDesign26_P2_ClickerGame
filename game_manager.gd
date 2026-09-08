extends Control

var coin: int 
@export var clicker_strength: int
@onready var coin_label: Label = $CoinLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# setting initial coin to 0
	coin = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# receiver function for ClickerButton
func _on_button_down() -> void:
	#print("Hi")
	
	# when clicker is clicked, add 10 coins
	coin = coin + clicker_strength # can also do coin += 10
	
	coin_label.text = "Coin: " + str(coin)
	print(coin)


func _on_upgrade_button_pressed() -> void:
	print("Upgrade pressed")
	
	clicker_strength = clicker_strength * 2
