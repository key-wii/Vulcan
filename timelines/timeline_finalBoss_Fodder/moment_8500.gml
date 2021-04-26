if (start) {
	with (spawner1) {
		spawner = instance_create_layer(x, y, "Enemy", obj_enemy_spawn);
		spawner.enemy =  obj_enemy_s_boss_rematch_final;
		spawner.image_xscale = 2;
		spawner.image_yscale = 2;
	}
	with (spawner2) {
		spawner = instance_create_layer(x, y, "Enemy", obj_enemy_spawn);
		spawner.enemy = obj_enemy_b;
		spawner.image_xscale = 2;
		spawner.image_yscale = 2;
	}
}
start = false;