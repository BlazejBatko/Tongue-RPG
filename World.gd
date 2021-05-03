extends Node2D

	
const SQLite = preload("res://addons/godot-sqlite/bin/gdsqlite.gdns")
var db
var db_name = "res://DataStore/database"
var slowo
var slowoAngielskie
var rng = RandomNumberGenerator.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	db = SQLite.new()
	db.path = db_name
	readFromDB()
	
	

func readFromDB():	
	db.open_db()
	var tableName = "Slowa"
	db.query("select * from " + tableName + ";")
	rng.randomize()
	var i = rng.randi_range(0, db.query_result.size() - 1)
	print(i)
	slowo = db.query_result[i]["Polskie"]
	slowoAngielskie = db.query_result[i]["Angielskie"]
	
	

