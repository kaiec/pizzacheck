extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _input(event):
	if event.is_action_pressed("ui_accept"):
		print("Shuffle")
		$plate.next()




func _on_music_button_toggled(button_pressed):
	if button_pressed:
		$AudioStreamPlayer.play()
	else:
		$AudioStreamPlayer.stop()


func _on_settings_pressed():
	$settings_dialog.show()


func _on_close_settings_pressed():
	$settings_dialog.hide()


func _on_volume_value_changed(value):
	$AudioStreamPlayer.volume_db = value
