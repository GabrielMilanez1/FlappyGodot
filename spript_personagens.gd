extends Node2D

func _ready():
	$inicio2/apassaro/Passaro/AnimationPlayer.play("amarelho")
	$inicio2/zpassaro/Passaro/AnimationPlayer.play("azul")
	$inicio2/vpassaro/Passaro/AnimationPlayer.play("vermelho")


func _on_amarelo_pressed():
	ScriptGlobal.personagem = 1
	get_tree().change_scene("res://cena_fase.tscn")

func _on_vermelho_pressed():
	ScriptGlobal.personagem = 2
	get_tree().change_scene("res://cena_fase.tscn")

func _on_azul_pressed():
	ScriptGlobal.personagem = 3
	get_tree().change_scene("res://cena_fase.tscn")
