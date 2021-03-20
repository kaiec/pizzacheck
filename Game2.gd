extends Node2D


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

func _ready():
	$FinishedLabel1.hide()
	$FinishedLabel2.hide()
	$backButton.hide()
	# $Timer.start(10)




func _on_Timer_timeout():
	$Controller.hide()
	$FinishedLabel.show()
	$backButton.show()
	$plate.hide_anim()


func _on_backButton_pressed():
	get_tree().change_scene("res://Title.tscn")


func check_win():
	if $Score2.score == 10:
		$Controller.hide()
		$Controller2.hide()
		$plate.hide_anim()
		$backButton.show()
		$FinishedLabel2.show()
	elif $Score.score == 10:
		$Controller.hide()
		$Controller2.hide()
		$plate.hide_anim()
		$backButton.show()
		$FinishedLabel1.show()
	else:
		$plate.next()

func _on_Controller_chosen(item):
	if item==$plate.missing:
		$Score.add(1)
	else:
		$Score2.add(1)
	check_win()
		
func _on_Controller2_chosen(item):
	if item==$plate.missing:
		$Score2.add(1)
	else:
		$Score.add(1)
	check_win()
