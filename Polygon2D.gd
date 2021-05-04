extends Polygon2D

func _ready():
	visible = false



func _on_Area2D_body_entered(body):
	visible = true


func _on_Area2D_body_exited(body):
	visible = false
