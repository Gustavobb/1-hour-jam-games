extends Node2D
	
func _input(event):
	if event.is_action_pressed("restart"):
		Fade.change_scene("res://World/Level1.tscn")
		GlobalAudioStreamPlayer.play()
