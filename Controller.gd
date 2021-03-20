extends GridContainer

signal chosen(item)

func _ready():
	var _res= $Button1.connect("pressed", self, "on_button_pressed", ["tomato"])
	_res= $Button2.connect("pressed", self, "on_button_pressed", ["mozarella"])
	_res= $Button3.connect("pressed", self, "on_button_pressed", ["oregano"])
	_res= $Button4.connect("pressed", self, "on_button_pressed", ["olives"])
	_res= $Button5.connect("pressed", self, "on_button_pressed", ["peperoni"])
	_res= $Button6.connect("pressed", self, "on_button_pressed", ["champignon"])
	_res= $Button7.connect("pressed", self, "on_button_pressed", ["broccoli"])
	_res= $Button8.connect("pressed", self, "on_button_pressed", ["corn"])
	
	
func on_button_pressed(result):
	emit_signal("chosen", result)
