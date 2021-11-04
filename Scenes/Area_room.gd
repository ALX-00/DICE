extends Area2D

signal mouse_hovering(position, velocity)

var is_hovering = false
export var hover_emission_rate = 1.0
var hover_accumulator = 0.0

func _ready():
	#set_fixed_process(true)
	connect("mouse_hovering", get_parent(), "on_mouse_hovering")

func _fixed_process(delta):
	hover_accumulator += delta
	if is_hovering && hover_accumulator >= hover_emission_rate:
		var true_speed = Vector2(0,0)
		# if we changed position
		if get_viewport().get_mouse_position() != last_mouse_position:
			# then grab the latest mouse velocity
			true_speed = Input.get_last_mouse_speed()
		# Regardless, update the last known mouse position
		last_mouse_position = get_viewport().get_mouse_position()
		emit_signal("mouse_hovering", last_mouse_position, true_speed)
		while hover_accumulator >= hover_emission_rate:
			hover_accumulator -= hover_emission_rate

func on_mouse_entered():
	is_hovering = true

func on_mouse_exited():
	is_hovering = false
