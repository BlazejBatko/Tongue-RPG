extends StaticBody2D
var wpisany
const SQLite = preload("res://addons/godot-sqlite/bin/gdsqlite.gdns")
var db
var db_name = "res://DataStore/database"
var slowo
var slowoAngielskie
var rng = RandomNumberGenerator.new()
onready var animacja = get_node("TransitionScreen")
onready var inputField = get_node("Polygon2D/LineEdit")
onready var labelText = get_node("Polygon2D/Label")

func _ready():
	db = SQLite.new()
	db.path = db_name
	inputField.connect("text_entered", self, "text_entered")
	readFromDB()
	
	
	
func text_entered(text):
	wpisany =inputField.text
	
	sprawdzanie() 
	
func _on_Area2D_body_entered(body):
	labelText.set_text("Przetłumacz podane słowo:\n"+slowo)
	
	
func readFromDB():	
	db.open_db()
	var tableName = "Slowa"
	db.query("select * from " + tableName + ";")
	rng.randomize()
	var i = rng.randi_range(0, db.query_result.size() - 1)
	print(i)
	slowo = db.query_result[i]["Polskie"]
	slowoAngielskie = db.query_result[i]["Angielskie"]
	
	
func _input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_ENTER:
			inputField.grab_focus()
			if inputField.has_focus():
				get_tree().paused = true
		if event.pressed and event.scancode == KEY_ESCAPE:
			inputField.release_focus()
			get_tree().paused = false	
	
	
func sprawdzanie():
	if wpisany == slowoAngielskie:
		$TransitionScreen.transition()
		yield(get_tree().create_timer(0.9),"timeout")
		get_tree().change_scene("res://World_2.tscn")
		$TransitionScreen/AnimationPlayer.play("fade_to_normal")
		get_tree().paused = false
		rng.randomize()
		
	else:
		print("niepoprawna")
		

	
