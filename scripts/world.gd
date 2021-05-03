extends Node2D

onready var hud_scene = preload("res://scenes/hud.tscn")
var hud

var random = RandomNumberGenerator.new()
var file = File.new()
var file_name = "data.save"

var names = read_data().split(",")

func _ready():
	var count = 0
	for obje in get_tree().get_nodes_in_group("npcs"):
		obje.hud.set_text(names[count])
		count += 1

func read_data():
	file.open(file_name, file.READ)
	var data = file.get_var(true)
	file.close()
	return data


func write_data(data):
	file.open(file_name, file.WRITE)
	file.store_var(data, true)
	file.close()
