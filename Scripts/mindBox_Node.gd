extends Node2D
#const LoadTextFile = preload("res://Scripts/LoadTextFile.gd")

onready var dialogText = get_node("Area2D/MindSprite/Label")
#onready var textArray
onready var count = 0
#onready var textLoader = LoadTextFile.new()
var fullText = false
var already = false

# Called when the node enters the scene tree for the first time.
func _ready():
	#textArray = textLoader.load_text_file("res://Dialogs/dialog.txt")
	#dialogText.text = textArray[0]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (!(fullText && already)):
		for ch in dialogText.text:
			count = (count + 0.001)
			dialogText.percent_visible = count
			if (count <= 1) :
				fullText = false
			else :
				fullText = true
				already = true
	elif (visible == false ) :
		count = 0
		fullText = false
		already = false
	pass
