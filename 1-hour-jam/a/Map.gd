extends Node2D

var level_int = "" 

func _ready():
	_get_level_name()
	
func _on_End_body_entered(_body):
	Fade.change_scene("res://Level%s.tscn"%str(level_int + 1), 0.2)
	
func _get_level_name():
	for letter in str(get_name()):
		if letter.is_valid_integer():
			level_int = "%s%s"%[level_int, letter]
	
	level_int = int(level_int)


func _on_Player_body_entered(_body):
	Fade.change_scene("res://Level%s.tscn"%str(level_int), 0.2)

func _on_spike_player():
	Fade.change_scene("res://Level%s.tscn"%str(level_int), 0.2)
