extends Node2D



func _ready():
	$Settings.button_position = Vector2(1210,20)
	$FinishedLabel.hide()
	$backButton.hide()
	$Timer.start(60)

func _on_Controller_chosen(item):
	if item==$plate.missing:
		$Score.add(1)
		$plate.next()


func _on_Timer_timeout():
	$Controller.hide()
	$FinishedLabel.show()
	$backButton.show()
	$plate.hide_anim()


func _on_backButton_pressed():
	get_tree().change_scene("res://Title.tscn")
