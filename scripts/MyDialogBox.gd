class_name MyDialogBox
extends Control


export (PackedScene) var option_btn
var data : DialogueData

var option_buttons : Array = []


func set_data(value : DialogueData):
	data = value


func start(id : String):
	if not data:
		print_debug(name, " No data")
		return
	
	if not data.starts.has(id):
		print_debug(name, " No id")
	
	
