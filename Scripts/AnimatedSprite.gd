extends AnimatedSprite
onready var dialogueBox = get_owner().get_node("DialogBox/Panel/DialogText")

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
	dialogueBox.text = "Hoy hace buen tiempo, el cielo seguramente se vea muy bien hoy."
	pass # Replace with function body.


func _on_Area_window_mouse_exited():
	animation = "Static"
	dialogueBox.text = ""
	pass # Replace with function body.


func _on_Area_door_mouse_entered():
	animation = "Door"
	dialogueBox.text = "Podría ir a por un vaso de leche."
	pass # Replace with function body.


func _on_Area_door_mouse_exited():
	animation = "Static"
	dialogueBox.text = ""
	pass # Replace with function body.


func _on_Area_bed_mouse_entered():
	animation = "Bed"
	dialogueBox.text = "La verdad que es bastante tarde, podría irme a dormir."
	pass # Replace with function body.


func _on_Area_bed_mouse_exited():
	animation = "Static"
	dialogueBox.text = ""
	pass # Replace with function body.


func _on_Area_desk_mouse_entered():
	animation = "Desk"
	dialogueBox.text = "No haría daño un poco de vicio nocturno."
	pass # Replace with function body.


func _on_Area_desk_mouse_exited():
	animation = "Static"
	dialogueBox.text = ""
	pass # Replace with function body.

func windowIsClicked(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		get_tree().change_scene("res://Scenes/PlaceHolder.tscn")
	pass # Replace with function body.


func DoorIsClicked(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		get_tree().change_scene("res://Scenes/PlaceHolder.tscn")
	pass # Replace with function body.


func BedIsClicked(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		get_tree().change_scene("res://Scenes/PlaceHolder.tscn")
	pass # Replace with function body.


func DeskIsClicked(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		get_tree().change_scene("res://Scenes/Dark_room.tscn")
	pass # Replace with function body.
