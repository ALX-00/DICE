extends AnimatedSprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_window_mouse_entered():
	animation = "Window"
	pass # Replace with function body.


func _on_Area_window_mouse_exited():
	animation = "Static"
	pass # Replace with function body.


func _on_Area_door_mouse_entered():
	animation = "Door"
	pass # Replace with function body.


func _on_Area_door_mouse_exited():
	animation = "Static"
	pass # Replace with function body.


func _on_Area_bed_mouse_entered():
	animation = "Bed"
	pass # Replace with function body.


func _on_Area_bed_mouse_exited():
	animation = "Static"
	pass # Replace with function body.


func _on_Area_desk_mouse_entered():
	animation = "Desk"
	pass # Replace with function body.


func _on_Area_desk_mouse_exited():
	animation = "Static"
	pass # Replace with function body.
