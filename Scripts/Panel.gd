extends Panel
const LoadTextFile = preload("res://Scripts/LoadTextFile.gd")

onready var dialogText = get_node("DialogText")
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

func _on_Panel_gui_input(event):
	
	if (event is InputEventMouseButton && event.pressed):
		if(count < (textArray.size() - 1)):
			count += 1
		else:
			print("No hay más elementos en la lista.\n")
			
		dialogText.text = textArray[count]
	pass # Replace with function body.
