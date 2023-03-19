extends KinematicBody
onready var jogador=get_parent().get_node("jogador")

func _process(delta):
	olhe_para()
#	var loo=look_at(jogador.global_transform.origin,Vector3.UP)
func olhe_para():
	var x=jogador.global_translation-global_translation
	var anglex=x.angle_to(jogador.global_translation)
	rotation.y=anglex
	print(x)
