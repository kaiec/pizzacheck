extends GridContainer

signal chosen(item)

func _ready():
	$Button1.connect("pressed", self, "on_button_pressed", ["tomato"])
	$Button2.connect("pressed", self, "on_button_pressed", ["mozarella"])
	$Button3.connect("pressed", self, "on_button_pressed", ["oregano"])
	$Button4.connect("pressed", self, "on_button_pressed", ["olives"])
	$Button5.connect("pressed", self, "on_button_pressed", ["peperoni"])
	$Button6.connect("pressed", self, "on_button_pressed", ["champignon"])
	$Button7.connect("pressed", self, "on_button_pressed", ["broccoli"])
	$Button8.connect("pressed", self, "on_button_pressed", ["corn"])
	
	
func on_button_pressed(result):
	
	print(result)
