extends MeshInstance3D

const DEGREE = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_left"):
		rotate_z(deg_to_rad(-DEGREE))
	elif Input.is_action_pressed("ui_right"):
		rotate_z(deg_to_rad(DEGREE))
	elif Input.is_action_pressed("ui_up"):
		rotate_x(deg_to_rad(-DEGREE))
	elif Input.is_action_pressed("ui_down"):
		rotate_x(deg_to_rad(DEGREE))
