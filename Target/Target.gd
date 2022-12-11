extends StaticBody

func die():
	queue_free()

func work():
	if Input.is_action_just_pressed("shoot"):
		die()
