extends Control

var d_temp : DialoguePanel


func _ready():
	Notification.register_observer(self, Notification.Types.DialogueStarted)


func _on_Notify(notification_type : int, params : Array):
	assert(not params.empty(), "Where is dialogue data?")
	
	if d_temp and d_temp.ownr == params.back():
		d_temp.queue_free()
	
	var d_pck : PackedScene = load("res://scenes/DialoguePanel.tscn")
	var d = d_pck.instance()
	add_child(d)
	d_temp = d
	
	d.ownr = params.back()
	d.set_text(params[0])
	d.set_choices(params[1][0], params[1][1])
	
	var pos = params[2] - (d.rect_size / 2)
	pos.y -= d.rect_size.y
	d.rect_position = pos
	

