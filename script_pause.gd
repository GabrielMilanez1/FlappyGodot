extends Node2D

func _ready():
	visible = false
	get_tree().paused = false

func _process(delta):
	if(Input.is_action_just_pressed("pause")):
		get_tree().paused = !get_tree().paused
		visible = get_tree().paused
