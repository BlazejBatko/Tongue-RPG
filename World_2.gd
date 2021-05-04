extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$YSort/Player/AudioStreamPlayer.play()
	$YSort/Teleport/TransitionScreen/AnimationPlayer.play("fade_to_normal")# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
