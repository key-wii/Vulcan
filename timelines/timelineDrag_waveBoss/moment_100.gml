var spawn = instance_create_layer(xx, yy, "Enemy", obj_enemy_spawn);
with (spawn) {
	enemy = obj_enemy_respawner_controller;
	image_xscale = 3;
	image_yscale = 3;
	image_speed = .12;
	alarm_set(0, 330);
	//alarm_set(0, 1);
}