extends Node
@onready var points_label: Label = %PointsLabel

	
var points = 0

func add_points():
	points += 1
	print(points)
	points_label.text = "Score: " + str(points)
