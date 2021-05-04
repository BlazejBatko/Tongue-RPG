extends CanvasLayer

signal transitioned


	
	
func transition():
	$AnimationPlayer.play("fade_to_black")
	



func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "fade_to_black":
		emit_signal("transitioned")
		yield(get_tree().create_timer(0.3),"timeout")
		$AnimationPlayer.play("fade_to_normal")
		
		
		
