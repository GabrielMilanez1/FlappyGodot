extends Node2D

func _ready():
	pass

func _process(delta):
	$"."/Pontos.text = str(ScriptGlobal.pontos)
	
	if (Input.is_action_just_pressed("ui_select")):
		get_tree().change_scene("res://cena_fase.tscn")
		ScriptGlobal.pontos = 0;
		ScriptGlobal.velocidade_fundo = ScriptGlobal.velocidade_fundo_padrao
		ScriptGlobal.velocidade_subida_passaro = ScriptGlobal.velocidade_subida_passaro_padrao

func _on_Button_pressed():
	get_tree().change_scene("res://cena_personagens.tscn")
	ScriptGlobal.pontos = 0;
	ScriptGlobal.velocidade_fundo = ScriptGlobal.velocidade_fundo_padrao
	ScriptGlobal.velocidade_subida_passaro = ScriptGlobal.velocidade_subida_passaro_padrao
