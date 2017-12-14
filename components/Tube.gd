extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export var speed = -300
var game
func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)
	pass
	
func _process(delta):
	set_pos(get_pos() + Vector2(speed * delta, 0))
	if get_pos().x <  -500:
		queue_free()		
	pass


func _on_Area2D_body_enter( body ):
	if body.get_name() == "Bird":
		game  = get_tree().get_current_scene()
		game.gameOver()
		pass
	pass


func _on_Score_body_enter( body ):
	game  = get_tree().get_current_scene()
	game.punctuation()
	pass
