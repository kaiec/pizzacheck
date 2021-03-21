extends Node2D

var fx_active = true
var fx_volume = -20

func play_bg():
	if not $AudioStreamPlayer.playing:
		$AudioStreamPlayer.play()

func stop_bg():
	if $AudioStreamPlayer.playing:
		$AudioStreamPlayer.stop()

func set_bg_volume(v):
	$AudioStreamPlayer.volume_db = v


func get_bg_volume():
	return $AudioStreamPlayer.volume_db
	
func is_bg_playing():
	return $AudioStreamPlayer.playing


func _ready():
	$AudioStreamPlayer.volume_db = -20

func play(fx):
	if fx_active:
		var audioplayer = get_node(fx) as AudioStreamPlayer
		audioplayer.volume_db = fx_volume
		audioplayer.play()
