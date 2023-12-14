extends Sprite3D

var coins = 5
var playerName = "robot"
var hearts = 3.5
const SPEED = 2
var isRight = true
var haveKey = false

# Called when the node enters the scene tree for the first time.
func _ready():
	print(addTheseNumbers(3, 4))
	# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	moveSprite()

func minion():
	print("banana")

func addTheseNumbers(x, y):
	return x + y
	
func moveSprite():
	if Input.is_action_pressed("ui_left"):
		rotate_y(deg_to_rad(SPEED))
	elif  Input.is_action_pressed("ui_right"):
		rotate_y(deg_to_rad(-SPEED))
	elif Input.is_action_pressed("ui_up"):
		rotate_x(deg_to_rad(-SPEED))
	elif Input.is_action_pressed("ui_down"):
		rotate_x(deg_to_rad(SPEED))
