global.death = true;
if (instance_exists(obj_tank_pilot)) with (obj_tank_pilot) {
	cutscene = false;
	post_heart = 50;
	image_speed = 1;
	cut_r = 1; cut_g = 1; cut_g = 1;
}
if (instance_exists(obj_tank_move_flame)) with (obj_tank_move_flame) cutscene = false;
	else if (instance_exists(obj_tank_move)) with (obj_tank_move) cutscene = false;
instance_destroy();