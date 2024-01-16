extends KinematicBody

export var max_speed = 5
export var forward_velocity = Vector3(1, 0, 0)
var velocity = Vector3()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_right"):
		rotation_degrees.y -= max_speed*10*delta
	elif Input.is_action_pressed("ui_left"):
		rotation_degrees.y += max_speed*10*delta

#	if Input.is_action_pressed("ui_right")  && $Timer.is_stopped():
#		rotation_degrees.y -= 10
#		$Timer.start()
#	elif Input.is_action_pressed("ui_left") && $Timer.is_stopped():
#		rotation_degrees.y += 10
#		$Timer.start()
	
#	if Input.is_action_pressed("ui_right")  && $Timer.is_stopped():
#		velocity.x = 1
#	elif Input.is_action_pressed("ui_left") && $Timer.is_stopped():
#		velocity.x = -1
#	else:
#		velocity.x = 0
		
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
	
	move_and_slide(max_speed*velocity.rotated(Vector3(0, 1, 0), rotation.y))
#	$Camera.global_transform = transform
#	$Camera.global_translation += Vector3(0, 1.5, 2.3)
#	$Camera.global_rotation.x += -15.5 
