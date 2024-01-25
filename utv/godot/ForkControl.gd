extends Node

onready var fork_part = $"../Mesh/ForkPart"

func _physics_process(delta):
	var lift_range = Input.get_action_strength("E") - Input.get_action_strength("Q")
	var fork_pos = fork_part.transform.origin
	fork_part.transform.origin = Vector3(fork_pos.x, lerp(fork_pos.y, clamp(fork_pos.y + lift_range, 0, 12), 0.8), 0)
