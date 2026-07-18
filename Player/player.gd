extends CharacterBody3D

@export_group("Camera")
@export_range(0.0, 1.0) var mouse_sensitivity := 0.25

@export_group("Movement")
@export var move_speed := 8.0
@export var acceleration := 20.0

var _camera_input_direction := Vector2.ZERO

@onready var _cam_piv: Node3D = %CamPiv
@onready var _camera: Camera3D = %Camera3D

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("left_click"):
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	if event.is_action_pressed("ui_cancel"):
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE

func _unhandled_input(event: InputEvent) -> void:
	var is_cam_motion := (
		event is InputEventMouseMotion and 
		Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED
	)
	if is_cam_motion:
		_camera_input_direction = event.relative * mouse_sensitivity
		
func _physics_process(delta: float) -> void:
	_cam_piv.rotation.x += _camera_input_direction.y * delta
	_cam_piv.rotation.x = clamp(_cam_piv.rotation.x, -PI/6.0, PI/3.0) #clamp -30-60 deg

	_cam_piv.rotation.x -= _camera_input_direction.x * delta
	
	_camera_input_direction = Vector2.ZERO
	
	var raw_input := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	var forward := _camera.global_basis.z
	var right := _camera.global_basis.x
	
	var move_direction := forward * raw_input.y + right * raw_input.x
	move_direction.y = 0.0
	move_direction = move_direction.normalized()
	
	velocity = velocity.move_toward(move_direction * move_speed, acceleration * delta)
	move_and_slide()
