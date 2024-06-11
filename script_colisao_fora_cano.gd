extends Area2D

func _ready():
	pass 

func bateuForaCano(body):
	if (body.name == "Passaro"):
		body.get_node("audioFail").play()
		ScriptGlobal.velocidade_fundo = 0
		ScriptGlobal.velocidade_subida_passaro = -ScriptGlobal.velocidade_queda_passaro
		yield(get_tree().create_timer(1.5), "timeout")
		get_tree().change_scene("res://cena_game_over.tscn")
