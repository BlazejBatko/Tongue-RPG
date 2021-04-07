extends KinematicBody2D


var velocity = Vector2.ZERO 

enum { #tworzenie zmiennych (stałych) którym przypisywane są wartości: dla tego przypadku MOVE = 0, ROLL = 1, ATTACK = 2.
	MOVE,
	ROLL,
	ATTACK
}
var state = MOVE
const MAX_SPEED = 80
const ACCELERATION = 500
const FRICTION = 1000


onready var animationPlayer = $AnimationPlayer
onready var animationTree = $AnimationTree
onready var animationState = animationTree.get("parameters/playback")


func _ready():
	animationTree.active = true # animation tree nie bedzie włączone dopóki gra nie wystartuje. (do tworzenia animacji)
# Called when the node enters the scene tree for the first time.

	

func _physics_process(delta):
	match state:
		MOVE:
			move_state(delta)
		ROLL:
			pass
		ATTACK:
			attack_state(delta)
		

func move_state(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		animationTree.set("parameters/Idle/blend_position", input_vector)
		animationTree.set("parameters/Run/blend_position", input_vector)
		animationTree.set("parameters/Attack/blend_position", input_vector)
		animationState.travel("Run")
		velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta)
		
		
	else:
		animationState.travel("Idle")
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
	velocity = move_and_slide(velocity)

	if Input.is_action_just_pressed("Attack"):
		state = ATTACK
		
		
func attack_state(delta):
	velocity = Vector2.ZERO
	animationState.travel("Attack")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func attack_animation_finished():
	state = MOVE
