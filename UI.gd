extends Control

var score_left = 0
var score_right = 0

func _ready():
	update()

func increment_left():
	score_left += 1
	update()
	
func increment_right(): 
	score_right += 1
	update()
	
func update():
	$Left.text = str(score_left)
	$Right.text = str(score_right)
