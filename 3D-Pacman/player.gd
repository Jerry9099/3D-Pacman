extends KinematicBody

export var max_speed = 5
var velocity = Vector3()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = 1
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -1
	else:
		velocity.x = 0
		
	if Input.is_action_pressed("ui_up"):
		velocity.z = -1
	elif Input.is_action_pressed("ui_down"):
		velocity.z = 1
	else:
		velocity.z = 0
		
	if Input.is_action_pressed("ui_select"):
		velocity.y = 1
	else:
		velocity.y = -1
	
	move_and_slide(max_speed*velocity)
