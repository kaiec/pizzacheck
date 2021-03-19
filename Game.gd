extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _input(event):
	if event.is_action_pressed("ui_accept"):
		print("Shuffle")
		$plate.shuffle()


func _on_Button1_pressed():
	print("Hi")
	print($GridContainer/Button1/icon.texture.resource_name)
