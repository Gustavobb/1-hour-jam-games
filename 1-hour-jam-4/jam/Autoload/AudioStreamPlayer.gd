extends AudioStreamPlayer

var go = 1

func _ready():
	play()

func _on_AudioStreamPlayer_finished():
	if go:
		Fade.change_scene("res://World/GO.tscn")
