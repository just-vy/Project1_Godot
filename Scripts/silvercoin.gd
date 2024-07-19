extends Area3D

const DEGREE = 2

signal coin_collected

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate_y(deg_to_rad(DEGREE))


func _on_body_entered(body):
	if body.name == "Player":
		coin_collected.emit()
		print("collect coin")
		queue_free()