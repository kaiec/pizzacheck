extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func add(v):
	score += v
	if score < 0:
		score = 0
	$Label.text = str(score)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
