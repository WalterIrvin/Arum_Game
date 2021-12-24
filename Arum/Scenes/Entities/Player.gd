extends KinematicBody2D


# Declare member variables here. Examples:
var direction = Vector2.ZERO
var velocity = Vector2.ZERO
var base_speed = 100


func _ready():
	"""Function called when script is loaded, variables can be set here in
	a similar fashion to a constructor."""
	pass # Replace with function body.


func _process(delta):
	"""Function called each frame in the game loop, delta represents time since
	last frame, note that move_and_slide already accounts for delta, so there is
	no need to add for it twice."""
	get_dir()
	velocity = direction * base_speed
	velocity = move_and_slide(velocity)

func get_dir():
	"""This function gathers the input fields and sets a direction vector
	accordingly."""
	
	direction = Vector2.ZERO
	if Input.is_action_pressed("move_left"):
		direction.x = -1
	if Input.is_action_pressed("move_right"):
		direction.x = 1
		
	if Input.is_action_pressed("move_up"):
		direction.y = -1
	if Input.is_action_pressed("move_down"):
		direction.y = 1
		
	
