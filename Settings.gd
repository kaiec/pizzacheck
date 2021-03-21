extends Node2D

export var button_position = Vector2(0,0) setget set_button_position

func set_button_position(v: Vector2):
	button_position = v
	$settings.rect_global_position = v

func _ready():
	$settings_dialog/ColorRect/Node2D/volume.value = SoundManager.get_bg_volume()
	$settings_dialog/ColorRect/Node2D/music_button.pressed = SoundManager.is_bg_playing()


func _on_settings_pressed():
	$settings_dialog.show()


func _on_close_settings_pressed():
	$settings_dialog.hide()


func _on_music_button_toggled(button_pressed):
	if button_pressed:
		SoundManager.play_bg()
	else:
		SoundManager.stop_bg()



func _on_volume_value_changed(value):
	SoundManager.set_bg_volume(value)
