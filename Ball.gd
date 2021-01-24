extends RigidBody2D

export var BEGIN_SPEED = 300
export var INCREMENT_SPEED = 25
var speed = BEGIN_SPEED
var direction = 1
var y_speed = 1

func _ready():
	# randomize the seed used in this instance and set a random direction
	randomize()
	if randf() > 0.5: direction = -1	

func _process(delta):
	position.x += direction * delta * speed
	position.y += delta * y_speed

func switch_direction(): direction = -direction
func bounce_off_wall(): y_speed = -y_speed

func bounce_off_peddle():
	y_speed = rand_range(-speed, speed)
	switch_direction()
	speed += INCREMENT_SPEED
	
