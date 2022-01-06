extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var spinner_speed = 0
var rng = RandomNumberGenerator.new()
var spinning = false
signal finished(angle)


# Called when the node enters the scene tree for the first time.
func _ready():
	print("started")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$arrow.rotate(spinner_speed);
	# if spinner is still moving
	if spinner_speed > 0:
		# decrease speed
		spinner_speed -= 0.005
	# if spinner is stopped
	else:
		# make sure spinner is stopped
		spinner_speed = 0
		# if spinning is true, the spin is now over
		if spinning:
			spinning = false
			# we will need to check the rotation and send it back to main
			emit_signal("finished",find_terminal($arrow.rotation))

# this function spins the spinner by randomly selecting a speed at which the spinner should spin 
# and assigning it to the spinner_speed variable:
func _spin():
	# only span if not spinning:
	if not spinning:
		rng.randomize()
		spinner_speed = rng.randf_range(200,1000)/1000
		spinning = true

# given an angle in radians, find the terminal angle:
func find_terminal(angle):
	var x = floor(angle / (PI*2))
	return angle - x*PI*2









