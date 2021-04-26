with (spawner1) {
	spawner = instance_create_layer(x, y, "Enemy", obj_enemy_spawn);
	spawner.enemy = obj_enemy_candler_spiked2;
}
with (spawner2) {
	spawner = instance_create_layer(x, y, "Enemy", obj_enemy_spawn);
	spawner.enemy = obj_enemy_flamer_dizzy;
}