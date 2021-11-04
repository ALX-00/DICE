extends CollisionPolygon2D
onready var window = get_node("/root/Scene1/AnimatedSprite")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	# get the Physics2DDirectSpaceState object
	var space = get_world_2d().direct_space_state
	# Get the mouse's position
	var mousePos = get_global_mouse_position()
	# Check if there is a collision at the mouse position
	if space.intersect_point(mousePos, 1, [], 2147483647, true, true):
		window.animation = "Window"
	else:
		window.animation = "static"
