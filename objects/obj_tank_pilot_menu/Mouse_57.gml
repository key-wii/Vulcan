if (flaming == true) {
	used_charge = false;
	bull_hit_count = 0;

	with(obj_tank_move_flame) instance_destroy();
	with(obj_flame) instance_destroy();
	alarm_set(10, 6);
	var wheels_exist = instance_exists(obj_tank_move);
	if(!wheels_exist) {
		var wheels = instance_create_layer(x + 0, y + 0, "Player", obj_tank_move);
		wheels.topSpeed += 3;
		obj_tank_move.can_move = true;
	}

	windup_flame = 0;
	flame_sound = 1;
	flame_timer = 0;

	flame_end = true;
	flame_end_count = 15;
	global.tankpower = 0;
	
	/*if (weapon == 0) sprite_index = spPlayerTankY;
	if (weapon == 1) sprite_index = spPlayerTankG;
	if (weapon == 2) sprite_index = spPlayerTankB;*/

	flaming = false;
}