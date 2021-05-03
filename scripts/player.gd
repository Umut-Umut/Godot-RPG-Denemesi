extends KinematicBody2D

var vel = Vector2(0, 0)
var acc = 10
var slowdown = 0.2
var max_speed = 150

func _ready():
	pass


func _process(_delta):
	controls()
	vel = move_and_slide(vel)

var is_walk = true
var is_run = false
func controls():
	if is_walk:
		max_speed = 100
	elif is_run:
		max_speed = 500
	
	# Left Right
	if Input.is_action_pressed("d"):
		vel.x = min(vel.x+acc, max_speed)
	elif Input.is_action_pressed("a"):
		vel.x = max(vel.x-acc, -max_speed)
	else:	vel.x = lerp(vel.x, 0, slowdown)
	
	# Up Down
	if Input.is_action_pressed("s"):
		vel.y = min(vel.y+acc, max_speed)
	elif Input.is_action_pressed("w"):
		vel.y = max(vel.y-acc, -max_speed)
	else:	vel.y = lerp(vel.y, 0, slowdown)
	
	#run
	if Input.is_action_pressed("l_shift"):
		is_walk = false
		is_run = true
	else:
		is_walk = true
		is_run = false

var npcs = {}
var count = 0
func _on_interaction_body_entered(body):
	if body.collision_layer == 2:
		body.show_hud(true)
		npcs[count] = body
		body.self_count = count
		count += 1


func _on_interaction_body_exited(body):
	if body.collision_layer == 2:
		body.show_hud(false)
		npcs[body.self_count] = 0
		count -= 1
