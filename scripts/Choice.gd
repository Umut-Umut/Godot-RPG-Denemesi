class_name Choice
extends Node


var text : String = "Tmm"
var next_dialog : Dialog


func _init(text_p : String, next_p : Dialog):
	self.text = text_p
	self.next_dialog = next_p
