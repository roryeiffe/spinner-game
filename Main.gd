extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Spinner1._spin()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_S:
			$Spinner1._spin()
			


func _on_Spinner1_finished(angle):
	print(angle)
