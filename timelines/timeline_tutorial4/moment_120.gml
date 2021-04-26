var player_exists = instance_exists(obj_tank_pilot);
if (!player_exists) exit;
xx = obj_tank_pilot.x; yy = obj_tank_pilot.y;
var played_sound = false;
if (xx - 300 > 550) {
	audio_play_sound(snd_spawn_killer, 0, false);
	played_sound = true;
	var spawn = instance_create_layer(xx - 280, yy, "Enemy", obj_enemy_spawn);
	spawn.enemy = obj_enemy_tutorial_killer_s;
	spawn.set_dir = 0;
	spawn.image_speed = 1.4;
	with (spawn) alarm_set(0, 27);
}
if (xx + 300 < 2330) {
	if (!played_sound) audio_play_sound(snd_spawn_killer, 0, false);
	var spawn = instance_create_layer(xx + 280, yy, "Enemy", obj_enemy_spawn);
	spawn.enemy = obj_enemy_tutorial_killer_s;
	spawn.set_dir = 180;
	spawn.image_speed = 1.4;
	with (spawn) alarm_set(0, 27);
}