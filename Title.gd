extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Settings.button_position = Vector2(1210,20)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_1player_pressed():
	get_tree().change_scene("res://Game.tscn")


func _on_credits_pressed():
	get_tree().change_scene("res://Credits.tscn")



func _on_2player_pressed():
	get_tree().change_scene("res://Game2.tscn")
