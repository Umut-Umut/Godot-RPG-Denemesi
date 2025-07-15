class_name DialoguePanel
extends PanelContainer


onready var lbl_text : Label = $VBoxContainer/Text
onready var btn_ch1 : Button = $VBoxContainer/Ch1
onready var btn_ch2 : Button = $VBoxContainer/Ch2


var ownr : NPC = null


func _ready():
	pass
	


func set_text(text : String):
	lbl_text.text = text


func set_choices(ch1 : String, ch2 : String):
	btn_ch1.text = ch1
	btn_ch2.text = ch2
