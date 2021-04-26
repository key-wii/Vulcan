if (!follow) exit;
var tank_move_exists = instance_exists(obj_tank_move);
if(tank_move_exists && obj_tank_move.speed != 0) {
	vspeed = obj_tank_move.vspeed;
	hspeed = obj_tank_move.hspeed;
	speed += 1;
}
var tank_move_flame_exists = instance_exists(obj_tank_move_flame);
if(tank_move_flame_exists && obj_tank_move_flame.speed != 0) {
	vspeed = obj_tank_move_flame.vspeed;
	hspeed = obj_tank_move_flame.hspeed;
	speed += 1;
}