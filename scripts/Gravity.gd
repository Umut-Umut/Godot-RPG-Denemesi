extends Node2D

export var gravity := 900


var parent : KinematicBody2D

var velocity := Vector2.ZERO


func _ready():
	parent = get_parent()
	if not parent:
		print_debug("Parent must be a KinematicBody2D")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	velocity.y += gravity * delta
	velocity = parent.move_and_slide(velocity, Vector2.UP)
