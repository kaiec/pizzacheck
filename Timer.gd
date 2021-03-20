extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

signal timeout

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _process(delta):
	$Label.text = "%d" % int($Timer.time_left)

func start(v):
	$Timer.start(v)
	$Timer.paused = false


func _on_Timer_timeout():
	$Timer.stop()
	emit_signal("timeout")
