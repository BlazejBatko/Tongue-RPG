extends KinematicBody2D


var velocity = Vector2.ZERO 

const MAX_SPEED = 80
const ACCELERATION = 500
const FRICTION = 1000


onready var animationPlayer = $AnimationPlayer



# Called when the node enters the scene tree for the first time.


func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		if input_vector.x > 0:
			animationPlayer.play("Run Right")
		else:
			animationPlayer.play("RunLeft")
		velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta)
		velocity += input_vector * ACCELERATION * delta
		
	else:
		animationPlayer.play("IdleRight")
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
	velocity = move_and_slide(velocity)
		




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
