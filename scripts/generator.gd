extends Position2D

onready var TubeComponent = preload("../components/Tube.tscn")

func _ready():
	
	pass


func _on_Timer_timeout():
	var tube = TubeComponent.instance()
	tube.set_pos(get_pos() + Vector2(0,rand_range(-260, -440)))
	get_owner().add_child(tube)
	pass
