if (devil_trigger >= 100) {
	shielding = false;
	if (global.flameKills > 0)
		with (controller) {
			if (alarm_get(2) < 20) alarm_set(2, alarm_get(2) + 10);
			else alarm_set(2, alarm_get(2) + 2);
			if (alarm_get(2) > 79) alarm_set(2, 79);
		}
	if (shoot_rotate == 0)
		direction = point_direction(x, y, mouse_x, mouse_y);
	used_charge = false;
	uncharged_press = false;
	
	var wheeeel = false;
	wheeeel = instance_exists(obj_tank_move);
	if(wheeeel) {
		obj_tank_move.can_move = false;
	}
	windup_flame = 18;
	flaming = true;

	alarm_set(1, 0);
	with(obj_tank_move) instance_destroy();
	global.tankpower = 0;
} else {
	audio_play_sound(snd_devil_trigger_fail, false, false);
	uncharged_press = true;
}