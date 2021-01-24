extends Node2D

const BALL_POS = Vector2(800, 450)
const PEDDLE_Y = 450

func _ready():
	reset()

func reset():
	$Ball.position = BALL_POS
	$Left.position.y = PEDDLE_Y
	$Right.position.y = PEDDLE_Y
