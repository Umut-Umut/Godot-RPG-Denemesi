extends Control


onready var dialog_box : DialogueBox = get_node("DialogueBox")


func _ready():
	Notification.register_observer(self, Notification.Types.DialogueStarted)


func _on_Notify(notification_type : int, data : Notification.NotifyData):
	if notification_type == Notification.Types.DialogueStarted:
		dialog_box.set_data(data.dialog)
		dialog_box.start("giris")
	
	

