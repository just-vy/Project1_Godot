extends Label

var coins = 0

func update_text():
	text = "Coins: " + str(coins)
	print("Updating text: ", text)
	
func _ready():
	update_text()
	print(coins)

func _on_silver_coin_collected():
	coins += 1
	update_text()
	print(coins)
