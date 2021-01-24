extends Node2D

export var player = "ONE"
export var speed = 250
export var node_size = 100

var screen_size

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport().size
	
func _physics_process(delta):
	if player == "ONE":
		if Input.is_action_pressed("player_one_up"):
			move_up(delta)
		if Input.is_action_pressed("player_one_down"):
			move_down(delta)
	elif player == "TWO":
		if Input.is_action_pressed("player_two_up"):
			move_up(delta)
		if Input.is_action_pressed("player_two_down"):
			move_down(delta)

func move_down(delta):
	if position.y + (node_size/2) < screen_size.y:
		position.y += speed * delta

func move_up(delta):
	if position.y - (node_size/2) > 0:
		position.y -= speed * delta


func _on_body_entered(ball):
	ball.bounce_off_peddle()
