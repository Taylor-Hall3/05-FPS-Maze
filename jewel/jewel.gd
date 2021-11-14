extends Area


func _ready():
	pass


func _on_jewel_body_entered(body):
	if body.name == "Player":
		var exit = get_node_or_null("/root/Game/Maze/Exit")
		if exit != null:
			exit.unlock()
			var sound = get_node_or_null("/root/Game/jewel")
			if sound != null:
				sound.playing = true
			queue_free()
