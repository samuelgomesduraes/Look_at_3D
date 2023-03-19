extends KinematicBody
var motion=Vector3()
var speed=10
var gravidade=20
onready var camera=get_parent().get_node("Camera")
func _ready():
	pass # Replace with function body.

func _process(delta):
#	camera.look_at(global_translation,Vector3.UP)
	motion.y+=-gravidade*delta
	movimentacao()
	if Input.is_action_just_pressed("space"):
		motion.y=10
	move_and_slide(motion)

func movimentacao():
	var mov=Vector3(0,0,0)
	if Input.is_action_pressed("a"):
		mov-=transform.basis.x * speed
	if Input.is_action_pressed("d"):
		mov+=transform.basis.x * speed
	if Input.is_action_pressed("w"):
		mov-=transform.basis.z * speed
	if Input.is_action_pressed("s"):
		mov+=transform.basis.z * speed
	move_and_slide(mov)
