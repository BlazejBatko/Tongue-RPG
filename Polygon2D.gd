extends Polygon2D

func _ready():
	visible = false
	
func _on_Area2D_body_entered(body):
	visible = true


func _on_Area2D_body_exited(body):
	visible = false



export(Color) var OutLine = Color(0,0,0) setget set_color
export(float) var Width = 2.0 setget set_width

func _draw():
	var poly = get_polygon()
	for i in range(1 , poly.size()):
		draw_line(poly[i-1] , poly[i], OutLine , Width)
	draw_line(poly[poly.size() - 1] , poly[0], OutLine , Width)

func set_color(color):
	OutLine = color
	update()

func set_width(new_width):
	Width = new_width
	update()
