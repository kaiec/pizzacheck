extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var key = "A" setget set_key
export var show_key = false setget set_show_key
export var icon_texture: Resource setget set_icon_texture

func set_show_key(v):
	show_key = v
	$Label.visible = v

func _ready():
	$Label.visible = show_key

func set_key(v):
	key = v
	$Label.text = key

func set_icon_texture(v):
	icon_texture = v
	$icon.texture = icon_texture
	$icon.scale = $icon_size.get_rect().size / self.icon_texture.get_size()



func _on_Button_pressed():
	$AnimationPlayer.play("pressed")
