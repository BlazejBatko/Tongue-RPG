extends Control


var notPaused = true

func _ready():
	visible = false
	pass
	

func _process(delta):
	
	if Input.is_action_just_pressed("pause"):
		if notPaused:
			get_tree().paused = true
			notPaused = false
			visible = true
		else :
			get_tree().paused = false
			notPaused = true
			visible = false
			
			
	

func _on_HSlider_value_changed(value):
		AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), value)
	
	


func _on_Button_pressed():
	get_tree().change_scene("res://MainMenu.tscn")
