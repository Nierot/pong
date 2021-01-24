extends Area2D

export (NodePath) var ui_path
onready var ui = get_node(ui_path)

# wall
func _on_body_entered(ball):
	if ball.position.x < 10:
		ui.increment_left()
	elif ball.position.x > 1590:
		ui.increment_right()
	else:
		ball.bounce_off_wall()
		return
	
	get_owner().reset()
