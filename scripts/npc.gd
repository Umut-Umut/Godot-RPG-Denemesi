extends KinematicBody2D

onready var hud = get_node("hud")

var self_count

func _ready():
	#hud.set_text(self_name)
	hud.transport($Sprite.texture.get_height())


#func _process(delta):
#	pass


func show_hud(status):
	hud.visible = status
