extends Node2D

var time_start = 0
var time_now = 0
var time_check = false
onready var DialogBox = get_node("DialogBox")
func _ready():
	time_start = OS.get_unix_time()

func _process(delta):
	time_now = OS.get_unix_time()
	var time_elapsed = time_now - time_start
	#print(time_elapsed)
	if (time_elapsed == 15) :
		time_check = true
		
	if (time_check) :
		#print("Ahora")
		DialogBox.visible = true
