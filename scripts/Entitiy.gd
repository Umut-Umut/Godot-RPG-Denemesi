class_name Entity
extends Node2D


export var hp := 100

# Called when the node enters the scene tree for the first time.
func _ready():
	print(name)


func interact(_tool = null):
	prints(name, "ellendi")


func take_damage(damage):
	hp -= damage
	if hp <= 0:
		self.queue_free()
	prints(name, damage)
