extends Area2D


onready var parent : KinematicBody2D = get_parent()


export var dmg := 5


func _ready():
	if not parent:
		print_debug("Sword, there is no parent.")


func _input(event):
	if event is InputEventKey:
		if event.pressed and not event.echo:
			match event.scancode:
				KEY_X:
					monitoring = true
		else:
			if monitoring:
				monitoring = false




func _on_CKeyboard_update_direction(d):
	if self.scale.x != d:
		self.scale.x = d


func _on_Sword_body_entered(body):
	if body == parent:
		pass
	elif body is Entity:
		body.take_damage(dmg)
