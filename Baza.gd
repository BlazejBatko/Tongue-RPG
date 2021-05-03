extends Spatial

const SQLite = preload("res://bin/gdsqlite.gdns")
var db
var db_name = "res://DataStore/database"


func _ready():
	db = SQLite.new()
	db.path = db_name
	pass
	
func readFromDB():
	db.open_db()
	var tableName = "Slowa"
	db.query("select * from " + tableName + ";")
	for i in range(0, db.query_result.size()):
		print("Qurey results ", db.query_result[i]["Angielskie"], db.query_result[i]["Polskie"])
