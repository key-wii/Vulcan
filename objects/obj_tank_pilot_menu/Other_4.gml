if (flaming_while_pausing && mouse_check_button(mb_right) == false) {
	
	with (obj_flame) with (particleMachine) instance_destroy();
	
	//code from Global Right Released
	used_charge = false;
	bull_hit_count = 0;

	with(obj_tank_move_flame) instance_destroy();
	with(obj_flame) instance_destroy();

	windup_flame = 0;
	flame_sound = 1;
	global.tankpower = 0;
	
	/*if (weapon == 0) sprite_index = spPlayerTankY;
	if (weapon == 1) sprite_index = spPlayerTankG;
	if (weapon == 2) sprite_index = spPlayerTankB;*/

	flaming = false;
	
	//code from Alarm 10
	flame_end = false;
	flame_end_count = 0;
	flame_timer = 0;
	global.tankpower = 10;
	var wheels_exist = instance_exists(obj_tank_move);
	if(!wheels_exist) {
		var wheels = instance_create_layer(x + 0, y + 0, "Player", obj_tank_move);
		wheels.topSpeed += 3;
		obj_tank_move.can_move = true;
	}
	
	//code from End Step
	var ex, ey;
	ex = mouse_x;
	ey = mouse_y;
	direction = point_direction(x, y, ex, ey);
	image_angle = direction;
	
	
	flaming_while_pausing = false;
}