class_name NPC
extends Entity


export (Resource) var dialog

var notfy_data : Notification.NotifyData


func _ready():
	notfy_data = Notification.NotifyData.new()


func dialogue():
	if not dialog:
		# Can return either random or standard dialogues like "Hello", "Good morning", etc.
		return
	
	notfy_data.dialog = dialog
	Notification.notify(Notification.Types.DialogueStarted, notfy_data)
