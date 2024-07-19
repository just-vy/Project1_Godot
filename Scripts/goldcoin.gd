extends Area3D

const DEGREE = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotate_y(deg_to_rad(DEGREE))


func _on_body_entered(body):
	queue_free()
	get_tree().change_scene_to_file("res://win_screen.tscn")
