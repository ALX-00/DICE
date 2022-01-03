extends Node2D
const LoadTextFile = preload("res://Scripts/LoadTextFile.gd")

onready var dialogText = get_node("Panel/DialogText")
onready var textArray
onready var count = 0
var count_text_anim = 0
onready var textLoader = LoadTextFile.new()
var fullText = false
var already = false

# Called when the node enters the scene tree for the first time.
func _ready():
	textArray = textLoader.load_text_file("res://Dialogs/dialog.txt")
	dialogText.text = textArray[0]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (!(fullText && already)):
		for ch in dialogText.text:
			count_text_anim = (count_text_anim + 0.001)
			dialogText.percent_visible = count_text_anim
			if (count_text_anim < 1) :
				fullText = false
			else :
				fullText = true
				already = true
	elif (visible == false ) :
		count_text_anim = 0
		fullText = false
		already = false
	if(fullText):
		get_node("Panel/AnimatedSprite").visible = true
	else:
		get_node("Panel/AnimatedSprite").visible = false
	pass

func _on_Panel_gui_input(event):
	
	if (event is InputEventMouseButton && event.pressed):
		#fullText = false
		if(count < (textArray.size() - 2)):
			count += 1
			count_text_anim = 0
			#fullText = false
			already = false
		else:
			#print("No hay más elementos en la lista.\n")
			get_node("Panel").visible = false
		dialogText.text = textArray[count]
	pass # Replace with function body.
