extends VehicleBody3D

const MAX_STEER = 0.4
const MAX_RPM = 150
const MAX_TORQUE = 500
const HORSE_POWER = 75
const REVERSE_POWER = -HORSE_POWER * 2 # -50
const STUCK_TIME_THRESHOLD = 0.5

var stuck_timer = 0
var is_stuck = false
@onready var rayF = $rayForward
@onready var rayFL = $rayForwLeft
@onready var rayFR = $rayForwRight
@onready var rayL = $rayLeft
@onready var rayR = $rayRight

func _physics_process(delta):
	pass


func check_stuck_condition(delta):
	if linear_velocity.length() < 1.0:
		stuck_timer += delta
	else:
		stuck_timer = 0
	is_stuck = stuck_timer > STUCK_TIME_THRESHOLD



func update_raycasts():
	rayF.force_raycast_update()
	rayFL.force_raycast_update()
	rayFR.force_raycast_update()
	rayL.force_raycast_update()
	rayR.force_raycast_update()




func calc_engine_force(accel, rpm):
	return accel * MAX_TORQUE * (1 - rpm / MAX_RPM)



func check_and_right_vehicle():
	if self.global_transform.basis.y.dot(Vector3.UP) < 0:
		var current_rotation = self.rotation_degrees
		current_rotation.x = 0 # Reset ptich
		current_rotation.z = 0 # Reset Roll
		self.rotation_degrees = current_rotation
