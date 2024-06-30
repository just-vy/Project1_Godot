extends CharacterBody3D

const DEGREE = 2
var speed := 5.0
#const JUMP_VELOCITY = 4.5
#const MAX_JUMP_TIME = 5.0
#
var bluepill = false
var redpill = false
#var jump_timer = 0.0
#var is_jumping = false

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
#@onready var jump_progress_bar = $SubViewport_jump/JumpBar 

#func _on_bluepill_collected():
	#bluepill = true
	#jump_timer = MAX_JUMP_TIME
	#jump_progress_bar.value = 1.0
	#print("Blue pill collected. Can jump now!")

func _on_bluepill_collected():
	speed -= 1

func _physics_process(delta):
	#print("is_on_floor:", is_on_floor())
	#print("Input.is_action_just_pressed(ui_accept):", Input.is_action_just_pressed("ui_accept"))
	#print("bluepill:", bluepill)
	#print("jump_timer:", jump_timer)
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta
#
	## Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor() and bluepill and !is_jumping:
			#is_jumping = true
			#velocity.y = JUMP_VELOCITY
			#print("Jump intitiated!")
	#if is_jumping:
		#if jump_timer < MAX_JUMP_TIME:
			#jump_timer -= delta
			#print("Jumping!")
		#else:
			#is_jumping = false
			#bluepill = false
	## Update jump bar
	#jump_progress_bar.value = 1.0 - jump_timer / MAX_JUMP_TIME
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * speed
		velocity.z = direction.z * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		velocity.z = move_toward(velocity.z, 0, speed)

	move_and_slide()
	
	# Make CameraController matches the position of player
	$CamearaController.position = lerp($CamearaController.position, position, 0.15)


func _on_enemy_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene_to_file("res://lose_screen.tscn")
		print("hit!")


func _on_redpill_collected():
	speed += 1
