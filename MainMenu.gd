extends Control




func _ready():
	$AudioStreamPlayer.play()

func _on_Button_pressed():
	get_tree().change_scene("res://World.tscn")


func _on_Button2_pressed():
	get_tree().quit()
