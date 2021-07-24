if (devil_trigger < 100) {
	alarm_set(1, 1);
	exit;
}
if (damage > maxHp - 200) {
	alarm_set(4, 1);
	exit;
}

//flame mode
flaming = true;
gunning = false;
grenading = false;
charging = false;
spinSpd = -12;
wheels.spd = 8;
if (instance_exists(obj_tank_pilot))
	if (point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot.y) > 700)
		wheels.spd = 9;

audio_play_sound(snd_charge, false, false);
//sprite_index = spPlayerTankFl_big_charged;
if (sprite_index != spPlayerTankFl_big) sprite_index = spPlayerTankFl_big;
wheels.spd = 0;
alarm_set(2, 50);

windup = maxWindup;
if (instance_exists(flame))
	if (flame != id) instance_destroy(flame);
alarm_set(5, 0);
alarm_set(10, 0);
alarm_set(0, 0);
alarm_set(6, 0);

swung = false;
alarm_set(4, 260 + maxWindup);

devil_trigger -= 100;