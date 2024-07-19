extends Label

var coins = 0

#func update_text():
	#text = "x " + str(coins)
	#print("Updating text: ", text)
	
func _ready():
	#update_text()
	set_text("Score: " + str(coins))
	print(coins)
	print("Updating text: ", get_text())

func _on_silver_coin_collected():
	coins += 1*200
	if coins == 800:
		get_tree().change_scene_to_file("res://win_screen.tscn")
	_ready()
	#update_text()
	#print(coins)
	#print("Updating text: ", text)
	
