if (instance_number(obj_enemy_parent) > 0) {
	timeline_position -= 20;
	exit;
}
if (!instance_exists(obj_tank_pilot)) exit;
if (obj_tank_pilot.damage > 0) audio_play_sound(snd_heal, 0, false);
with (controller_tutorial) alarm_set(3, 1);