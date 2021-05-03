extends Control

func transport(height):
	rect_position.y -= height + 10


func set_text(text):
	$Label.text = text


func show_hud(status):
	visible = status


func _on_talk_button_pressed():
	print("Selam")


func _on_info_button_pressed():
	print("Ben bir NPC yim seni moron")
