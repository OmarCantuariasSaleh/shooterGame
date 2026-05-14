extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(100, 500)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_up"):
		position += Vector2(0,-1) * 1000 * get_process_delta_time()
		$PlayerSprite.rotation += 10 * delta
	if Input.is_action_pressed("ui_down"):
			position += Vector2(0,1) * 1000 * get_process_delta_time()
			$PlayerSprite.rotation += -10 * delta
	if Input.is_action_pressed("ui_left"):
			position += Vector2(-1,0) * 1000 * get_process_delta_time()
			$PlayerSprite.rotation += -10 * delta
	if Input.is_action_pressed("ui_right"):
			position += Vector2(1,0) * 1000 * get_process_delta_time()
			$PlayerSprite.rotation += 10 * delta

	

	
