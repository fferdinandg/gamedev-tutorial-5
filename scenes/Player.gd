extends KinematicBody2D

export (int) var speed = 400
export (int) var GRAVITY = 1200
export (int) var jump_speed = -600
export (int) var jump_count = 0
const MAX_JUMP_COUNT = 2
# implementasi double jump dari sini https://www.youtube.com/watch?v=f0r3EgjQNak


const UP = Vector2(0,-1)

var velocity = Vector2()

func get_input():
	velocity.x = 0
	if jump_count < MAX_JUMP_COUNT and Input.is_action_just_pressed('ui_up'):
		velocity.y = jump_speed
		jump_count += 1;
	if jump_count < MAX_JUMP_COUNT and !is_on_floor() and Input.is_action_just_pressed('ui_up'):
		velocity.y = jump_speed
		jump_count +=2; # agar saat jatuh, hanya bisa double jump sekali
	if Input.is_action_pressed('ui_right'):
		velocity.x += speed
	if Input.is_action_pressed('ui_left'):
		velocity.x -= speed
	if is_on_floor():
		jump_count = 0
func _physics_process(delta):
	velocity.y += delta * GRAVITY
	get_input()
	velocity = move_and_slide(velocity, UP)
	

