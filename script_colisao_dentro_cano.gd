extends Area2D

func _ready():
	pass


func dentroCanoBody(body):
	if (body.name == "Passaro"):
		body.get_node("ponto").play()
		ScriptGlobal.pontos += ScriptGlobal.ponto_pra_cada_travessia
		
