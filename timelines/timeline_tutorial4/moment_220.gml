var player_exists = instance_exists(obj_tank_pilot);
if (!player_exists) exit;
xx = obj_tank_pilot.x; yy = obj_tank_pilot.y;
var played_sound = false;
if (yy - 300 > 355) {
	sound_machine(snd_spawn_killer, xx, yy - 280);
	played_sound = true;
	var spawn = instance_create_layer(xx, yy - 280, "Enemy", obj_enemy_spawn);
	spawn.enemy = obj_enemy_tutorial_killer_s;
	spawn.set_dir = 270;
	spawn.image_speed = 1.4;
	with (spawn) alarm_set(0, 27);
}
if (yy + 300 < 2140) {
	if (!played_sound) sound_machine(snd_spawn_killer, xx, yy + 280);
	var spawn = instance_create_layer(xx, yy + 280, "Enemy", obj_enemy_spawn);
	spawn.enemy = obj_enemy_tutorial_killer_s;
	spawn.set_dir = 90;
	spawn.image_speed = 1.4;
	with (spawn) alarm_set(0, 27);
}