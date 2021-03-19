extends Node2D

onready var shadow_material = preload("res://shadow_material.tres")
onready var outline_material = preload("res://outline_material.tres")

var values = ["oregano", "peperoni", "mozarella", "corn", "tomato", "olives", "broccoli", "champignon"]
var missing = "oregano"
	
	
func shuffle():
	var posnos = range(7)
	posnos.shuffle()
	values.shuffle()
	missing = values[0]
	for v in $vegetables.get_children():
		v = v as Sprite
		if v.name == missing:
			v.hide()
			continue
		v.position = $positions.get_child(posnos.pop_back()).position
		var scale = rand_range(0.7, 1.25)
		#v.scale = Vector2(scale, scale)
		#v.set_material(outline_material)
		v.show()

func next():
	$AnimationPlayer.play("shuffle")

# Called when the node enters the scene tree for the first time.
func _ready():
	$vegetables.show()
	shuffle()

