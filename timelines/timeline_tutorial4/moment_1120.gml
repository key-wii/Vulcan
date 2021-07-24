var player_exists = instance_exists(obj_tank_pilot);
if (!player_exists) exit;
if (xx + 20 < 2330 && xx - 20 > 550 && yy + 20 < 2140 && yy - 20 > 355) {
	sound_machine(snd_spawn_killer, xx, yy);
	var spawn = instance_create_layer(xx, yy, "Enemy", obj_enemy_spawn);
	spawn.enemy = obj_enemy_tutorial_killer_s;
	spawn.set_dir = 225;
	spawn.image_speed = 1.4;
	with (spawn) alarm_set(0, 27);
}
xx -= 64;
yy -= 64;