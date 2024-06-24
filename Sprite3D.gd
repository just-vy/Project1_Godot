extends Sprite3D

const DEGREE = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#if Input.is_action_pressed("ui_left"):
		#rotate_y(deg_to_rad(-DEGREE))
	#elif Input.is_action_pressed("ui_right"):
		#rotate_y(deg_to_rad(DEGREE))
	rotate_y(deg_to_rad(DEGREE))
