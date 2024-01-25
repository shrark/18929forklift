extends Node

onready var forklift = $".."

var STEER_SPEED = 2

func _physics_process(delta):
	var inputX = Input.get_axis("d", "a")
	forklift.angular_velocity.y += inputX * STEER_SPEED * delta
