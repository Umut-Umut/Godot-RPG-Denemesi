extends Node2D

# Hareket ayarları
export var walk_speed := 200
export var run_speed := 350
export var jump_force := -400
export var gravity := 900

# Dahili değişkenler
var velocity := Vector2.ZERO
var jump_count := 0
const MAX_JUMPS := 2

func _physics_process(delta):
	var parent = get_parent()  # KinematicBody2D
	var input_direction := 0

	# Yatay hareket
	if Input.is_action_pressed("ui_right"):
		input_direction += 1
	if Input.is_action_pressed("ui_left"):
		input_direction -= 1
	
	var speed = run_speed if Input.is_action_pressed("l_shift") else walk_speed
	velocity.x = input_direction * speed

	# Yerçekimi
	velocity.y += gravity * delta

	# Hareketi uygula
	velocity = parent.move_and_slide(velocity, Vector2.UP)

	# Yer kontrolü
	if parent.is_on_floor():
		jump_count = 0

	# Zıplama
	if Input.is_action_just_pressed("ui_accept") and jump_count < MAX_JUMPS:
		velocity.y = jump_force
		jump_count += 1
