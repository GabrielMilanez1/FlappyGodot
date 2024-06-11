extends KinematicBody2D
	
var segura_passaro = true
	
	
func _ready():
	if (segura_passaro == true):
		mov.y = 0
		
		if (ScriptGlobal.personagem==1):
			$AnimationPlayer.play("amarelho")
		elif (ScriptGlobal.personagem==2):
			$AnimationPlayer.play("vermelho")
		elif (ScriptGlobal.personagem==3):
			$AnimationPlayer.play("azul")
		
		
# ↓↓
var mov = Vector2.ZERO 

func _process(delta):
	
	var altura_maxima = get_viewport().size.y 
	var largura_maxima = get_viewport().size.x 
	
	if (segura_passaro == false):
		if ($".".global_position.y < altura_maxima - 110):
			mov.y = ScriptGlobal.velocidade_queda_passaro

	if (Input.is_action_pressed("ui_up") and $".".global_position.y > 20):
		segura_passaro = false
		mov.y = -ScriptGlobal.velocidade_subida_passaro


	move_and_slide(mov) 
