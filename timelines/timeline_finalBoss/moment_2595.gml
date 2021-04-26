if (instance_exists(obj_tank_move)) var pMove = obj_tank_move;
else if (instance_exists(obj_tank_move_flame))  var pMove = obj_tank_move_flame;
else exit;
with (pMove) {
	can_move = false;
	speed = 0;
}