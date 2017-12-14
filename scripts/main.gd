extends Node2D

onready var bird = get_node("Bird")
onready var backGround = get_node("Background")
onready var gameOver = get_node("GameOver")
onready var scoreTXT = get_node("UI/Interface/Label")
var score = 0
var state = 0 #1 => in game 2 => game over


func _ready():
	pass

func gameOver():
	bird.apply_impulse(Vector2(0,0), Vector2(-800,0))
	backGround.stop()
	state = 2
	gameOver.start()
	pass

func _on_GameOver_timeout():
	get_tree().reload_current_scene()
	pass # replace with function body
	
func punctuation():
	score += 1
	scoreTXT.set_text(str(score))
	pass
