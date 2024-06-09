extends CharacterBody2D

@export var speed = 650
@onready var _animation_player = $AnimatedSprite2D

func get_input():
	var getDirection = Input.get_vector("mvLeft","mvRight","mvUp","mvDown")
	velocity = getDirection * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
	_animation_player.play("Normal")
