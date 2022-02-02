extends KinematicBody2D


var velocity
var speed = 500.0
var damage = 1

func _physics_process(_delta):
	velocity = move_and_slide(velocity, Vector2.UP)
func _ready():
	velocity = Vector2(0, -speed).rotated(rotation)


func _on_Timer_timeout():
	queue_free()


func _on_Area2D_body_entered(body):
	queue_free()
