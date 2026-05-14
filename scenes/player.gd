extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(100, 500)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += Vector2(1,0) * 50 * delta
	$PlayerSprite.rotation += 10 * delta
	
func _input(event: InputEvent) -> void:
	if event.is_action("up"):
		position += Vector2(0,-1) * 1000 * get_process_delta_time()
		$PlayerSprite.rotation = 0
	elif event.is_action("down"):
			position += Vector2(0,-1) * 1000 * get_process_delta_time()
			$PlayerSprite.rotation = 0
