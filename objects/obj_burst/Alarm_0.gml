var wheels_exist = instance_exists(obj_tank_move_flame);
if (wheels_exist) {
	direction = obj_tank_move_flame.direction
	alarm_set(1, 1);
}
var wheels_exist = instance_exists(obj_tank_move);
if (wheels_exist == true) {
	direction = obj_tank_move.direction
}
image_angle = direction;