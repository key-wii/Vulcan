if (grabbable) {
	switch (upgrade) {
		case 1: other.chargeUnlocked = true; break;
		case 2: other.dragonUnlocked = true; break;
		case 3: other.dizzyUnlocked = true; break;
		case 4: other.shieldUnlocked = true; break;
		case 5: other.spikesUnlocked = true; break;
		//default : other.chargeUnlocked = true; break;
	}
	with (other) {
		devil_refill = (max_trigger / 10);
		got_heart = true;
		cutscene = true;
		sprite_index = spPlayerTank_heart;
		image_speed = .3;
		//direction = point_direction(x, y, other.x, other.y);
	}
	if (instance_exists(obj_tank_move_flame)) with (obj_tank_move_flame) {
		cutscene = true;
		hspeed = 0;
		vspeed = 0;
	}
	else if (instance_exists(obj_tank_move)) with (obj_tank_move) {
		cutscene = true;
		hspeed = 0;
		vspeed = 0;
	}
	sound_machine(snd_grab_heart, x, y);
	grabbable = false;
	global.death = false;
	layer = layer_get_id("UI_Behind");
	alarm_set(10, 1);
	alarm_set(11, 1);
}