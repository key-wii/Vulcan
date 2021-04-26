flame_end = false;
flame_end_count = 0;
flame_timer = 0;
//global.tankpower = 10;
var wheels_exist = instance_exists(obj_tank_move);
if(!wheels_exist) {
	instance_create_layer(x + 0, y + 0, "Player", obj_tank_move);
	obj_tank_move.can_move = true;
}