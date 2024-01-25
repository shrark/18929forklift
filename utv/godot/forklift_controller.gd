extends RigidBody

export var MAX_SPEED = 2000
export var TURN_SPEED = 4
export var ACCELERATION = 10
export var BRAKE_FORCE = 20
var velocity = Vector3()
	
func _physics_process(delta):
	var target_velocity = Vector3()
	var target_angular_velocity = Vector3()
	if Input.is_action_pressed("w"):
		target_velocity += transform.basis.x * -MAX_SPEED * delta
	if Input.is_action_pressed("s"):
		target_velocity += transform.basis.x * MAX_SPEED * delta
		
	if Input.is_action_pressed("a"):
		rotation.y += TURN_SPEED * delta
	if Input.is_action_pressed("d"):
		rotation.y -= TURN_SPEED * delta
	
	velocity = velocity.linear_interpolate(target_velocity, ACCELERATION * delta)
	transform.origin += velocity * delta
	
	#var force_diff = target_velocity - target_angular_velocity
	#add_central_force(force_diff * ACCELERATION)
	
