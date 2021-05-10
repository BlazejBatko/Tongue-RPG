extends KinematicBody2D

const PlayerhurtSound = preload("res://Player/PlayerHurtSound.tscn")


var velocity = Vector2.ZERO 

const SQLite = preload("res://bin/gdsqlite.gdns")
enum { #tworzenie zmiennych (stałych) którym przypisywane są wartości: dla tego przypadku MOVE = 0, ROLL = 1, ATTACK = 2.
	MOVE,
	ROLL,
	ATTACK
}
var state = MOVE
export var MAX_SPEED = 80
export var  ACCELERATION = 500
export var FRICTION = 1000
var roll_vector = Vector2.DOWN
var stats = PlayerStats


onready var animationPlayer = $AnimationPlayer
onready var animationTree = $AnimationTree
onready var animationState = animationTree.get("parameters/playback")
onready var swordHitbox = $HitboxPivot/SwordHitbox
onready var hurtbox = $Hurtbox
onready var blinkAnimationPlayer = $BlinkAnimationPlayer
onready var button = get_node("../../CanvasLayer/Button")
onready var teleport = get_node("../Teleport")

func _ready():
	randomize()
	stats.connect("no_health", self, "death")
	animationTree.active = true # animation tree nie bedzie włączone dopóki gra nie wystartuje. (do tworzenia animacji)
	swordHitbox.knockback_vector = roll_vector
	button.visible = false
	

func death():
	teleport.visible = false
	get_tree().paused = true
	button.visible = true
	
	

	
##Smh manipulative by the physics MOVE ROLL ATTACK movement
func _physics_process(delta):
	match state:
		MOVE:
			move_state(delta)
		ROLL:
			roll_state(delta)
		ATTACK:
			attack_state(delta)
		

func move_state(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		roll_vector = input_vector
		swordHitbox.knockback_vector = input_vector
		animationTree.set("parameters/Idle/blend_position", input_vector)
		animationTree.set("parameters/Run/blend_position", input_vector)
		animationTree.set("parameters/Attack/blend_position", input_vector)
		animationTree.set("parameters/Roll/blend_position", input_vector)
		animationState.travel("Run")
		velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta)
		
		
	else:
		animationState.travel("Idle")
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
		
	move()
	if Input.is_action_just_pressed("Roll"):
		
		state = ROLL

	if Input.is_action_just_pressed("Attack"):
		state = ATTACK
func roll_state(_delta):
	velocity = roll_vector * MAX_SPEED * 1.3
	animationState.travel("Roll")
	move()
		
		
func attack_state(_delta):
	velocity = Vector2.ZERO
	animationState.travel("Attack")

func move():
	velocity = move_and_slide(velocity)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func attack_animation_finished():
	state = MOVE
	
func roll_animation_finished():
	state = MOVE


func _on_Hurtbox_area_entered(area):
	stats.health -= area.damage
	hurtbox.start_invincibility(0.6)
	hurtbox.create_hit_effect()
	var playerHurtSound = PlayerhurtSound.instance()
	get_tree().current_scene.add_child(playerHurtSound)


func _on_Hurtbox_invincibility_started():
	blinkAnimationPlayer.play("Start")


func _on_Hurtbox_invincibility_ended():
	blinkAnimationPlayer.play("Stop")


func _on_Button_pressed():
	
	
	$TransitionScreen.transition()
	
	yield(get_tree().create_timer(0.9),"timeout")
	
	get_tree().reload_current_scene()
	stats.health = 4
	get_tree().paused = false
	$TransitionScreen/AnimationPlayer.play("fade_to_normal")


func _on_Button2_pressed():
	pass # Replace with function body.
