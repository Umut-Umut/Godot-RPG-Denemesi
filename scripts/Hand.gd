extends Area2D


func _ready():
	monitoring = false


func _input(event):
	if event is InputEventKey:
		match [event.is_echo(), event.is_pressed(), event.scancode]:
			[false, true, KEY_E]: # down
				set_monitoring(true)
			_:
				set_monitoring(false)

func set_monitoring(value: bool):
	if monitoring != value:
		monitoring = value


func _on_Hand_body_entered(body):
	if body is Player:
		pass
	elif body is NPC:
		body.dialogue()
	elif body is Entity:
		body.interact()
