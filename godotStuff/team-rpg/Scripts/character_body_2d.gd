extends CharacterBody2D


const SPEED = 150.0


func _physics_process(_delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var axis_x := Input.get_axis("move_left", "move_right")
	var axis_y := Input.get_axis("move_up", "move_down")
	var direction = Vector2(axis_x, axis_y).normalized()
	if direction:
		velocity = direction * SPEED
	else:
		velocity = velocity.move_toward(Vector2.ZERO, SPEED)
	move_and_slide()
