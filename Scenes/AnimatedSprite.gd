extends AnimatedSprite
const LoadTextFile = preload("res://Scripts/LoadTextFile.gd")

onready var dialogText = get_node("Label")
onready var textArray
onready var count = 0
onready var textLoader = LoadTextFile.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	textArray = textLoader.load_text_file("res://Dialogs/dialog.txt")
	dialogText.text = textArray[0]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_Area_window_mouse_entered():
	pass # Replace with function body.
