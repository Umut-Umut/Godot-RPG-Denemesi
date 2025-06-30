extends Node2D

export var gravity := 900
export var speed := 200

var parent : KinematicBody2D

var velocity := Vector2.ZERO
var direction : Vector2 = Vector2.RIGHT


func _ready():
	parent = get_parent()
	if not parent:
		print_debug("Parent must be a KinematicBody2D")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

var denek = true
func _physics_process(delta):
	velocity.y += gravity * delta
	
	velocity.x = speed * direction.x
	velocity = parent.move_and_slide(velocity, Vector2.UP)
	
	if parent.is_on_wall():
		direction = -direction
