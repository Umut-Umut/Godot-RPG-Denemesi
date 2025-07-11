extends Area2D


export var dmg := 5


func _ready():
	monitoring = false


func _input(event):
	if event is InputEventKey:
		match [event.is_echo(), event.is_pressed(), event.scancode]:
			[false, true, KEY_X]: # down
				set_monitoring(true)
			_:
				set_monitoring(false)


func set_monitoring(value: bool):
	if monitoring != value:
		monitoring = value


func _on_CKeyboard_update_direction(d):
	if self.scale.x != d:
		self.scale.x = d


func _on_Sword_body_entered(body):
	if body is Player:
		pass
	elif body is Entity:
		body.take_damage(dmg)
