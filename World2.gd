extends Node2D

	
func _ready():
	$YSort/Player/AudioStreamPlayer.play()
	$YSort/Teleport/TransitionScreen/AnimationPlayer.play("fade_to_normal")#
	

