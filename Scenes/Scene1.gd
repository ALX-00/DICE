extends Node2D
var Click = Input.is_action_pressed("Interaction")
var Ready = null

func _ready():
	get_node("Area_room").connect("mouse_enter", self, "MouseHover")

func MouseHover():
	print ("THE MOUSE IS HOVERING!!!")
