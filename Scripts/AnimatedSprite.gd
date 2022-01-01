extends AnimatedSprite
onready var mindBox = get_owner().get_node("mindBox/Area2D/MindSprite/Label")
onready var mindCloud = get_owner().get_node("mindBox")
onready var mindSprite = get_owner().get_node("mindBox/Area2D/MindSprite")

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
	mindCloud.visible = true
	mindSprite.playing = true
	mindBox.text = "Hoy hace buen tiempo, el cielo seguramente se vea muy bien hoy."
	pass # Replace with function body.


func _on_Area_window_mouse_exited():
	animation = "Static"
	mindCloud.visible = false
	mindSprite.playing = false
	mindBox.text = ""
	pass # Replace with function body.


func _on_Area_door_mouse_entered():
	animation = "Door"
	mindCloud.visible = true
	mindSprite.playing = true
	mindBox.text = "Podría ir a por un vaso de leche."
	pass # Replace with function body.


func _on_Area_door_mouse_exited():
	animation = "Static"
	mindCloud.visible = false
	mindSprite.playing = false
	mindBox.text = ""
	pass # Replace with function body.


func _on_Area_bed_mouse_entered():
	animation = "Bed"
	mindCloud.visible = true
	mindSprite.playing = true
	mindBox.text = "La verdad que es bastante tarde, podría irme a dormir."
	pass # Replace with function body.


func _on_Area_bed_mouse_exited():
	animation = "Static"
	mindCloud.visible = false
	mindSprite.playing = false
	mindBox.text = ""
	pass # Replace with function body.


func _on_Area_desk_mouse_entered():
	animation = "Desk"
	mindCloud.visible = true
	mindSprite.playing = true
	mindBox.text = "No haría daño un poco de vicio nocturno."
	pass # Replace with function body.


func _on_Area_desk_mouse_exited():
	animation = "Static"
	mindCloud.visible = false
	mindSprite.playing = false
	mindBox.text = ""
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
