extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var texture: Resource setget set_texture

func set_texture(v):
	texture = v
	$icon.texture = texture
	$icon.scale = $icon_size.get_rect().size / texture.get_size()

# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
