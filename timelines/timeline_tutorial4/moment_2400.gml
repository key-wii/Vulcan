var player_exists = instance_exists(obj_tank_pilot);
if (!player_exists) exit;
xx = obj_tank_pilot.x - 192; yy = obj_tank_pilot.y + 270;
if (xx + 20 < 2330 && xx - 20 > 550 && yy + 20 < 2140 && yy - 20 > 355) {
	audio_play_sound(snd_spawn_killer, 0, false);
	var spawn = instance_create_layer(xx, yy, "Enemy", obj_enemy_spawn);
	spawn.enemy = obj_enemy_tutorial_killer_r;
	spawn.set_dir = 90;
	spawn.image_speed = 1.4;
	with (spawn) alarm_set(0, 27);
}
xx += 192;