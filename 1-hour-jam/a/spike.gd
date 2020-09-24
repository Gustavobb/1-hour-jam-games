extends Sprite

signal player

func _on_Area2D_body_entered(body):
	emit_signal("player")
	$AudioStreamPlayer.play()
