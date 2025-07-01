extends Node


enum NotificationTypes {
	
}


var observers : Dictionary = {}


func register_observer(observer : Node, notification_type : int):
	assert(observer.has_method("_on_Notify"), observer.name)
	
	var group : Array = observers.get(notification_type, [])
	if group:
		group.append(observer)
	else:
		observers[notification_type] = [observer]


func notify(notification_type : int):
	var group : Array = observers.get(notification_type, [])
	if not group:
		prints("Bu bildirimi dinleyen kimse yok", notification_type)
		return
	
	for observer in group:
		observer._on_Notify(notification_type)
