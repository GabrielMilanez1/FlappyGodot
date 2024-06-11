extends Node2D


var ja_executou = false

var segura_fundo = true

func _ready():
	if (segura_fundo == true):
		$ParallaxBackground.scroll_base_offset.x -= 0 


var pontos_aux = 0 

func _process(delta):
	$ParallaxBackground/Pontos.text = str(ScriptGlobal.pontos) 
	
	if (segura_fundo == false):
		$ParallaxBackground.scroll_base_offset.x -= ScriptGlobal.velocidade_fundo 
	
	if (Input.is_action_pressed("ui_up")): 
		segura_fundo = false 
		
	if (ScriptGlobal.pontos % 10 == 0 and ScriptGlobal.pontos != 0 and ja_executou == false):
		ScriptGlobal.velocidade_fundo = ScriptGlobal.velocidade_fundo + 1
		ja_executou = true
		
	if (ScriptGlobal.pontos % 10 == 1):
		ja_executou = false
	
	if (pontos_aux!=ScriptGlobal.pontos):
		randomize()
		var indice = int(rand_range(0,9))
		var cores = ["verde","vermelho","azul","laranja","roxo","preto","rosa","verdelimao","cinza","marrom"];
		
		$ParallaxBackground/ParallaxLayer/AnimationPlayer.play(cores[indice])
		pontos_aux = ScriptGlobal.pontos
