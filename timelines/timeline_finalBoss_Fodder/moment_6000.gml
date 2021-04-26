with (spawner1) {
	spawner = instance_create_layer(x, y, "Enemy", obj_enemy_spawn);
	spawner.enemy = obj_enemy_b_grenader_big;
}
with (spawner2) {
	spawner = instance_create_layer(x, y, "Enemy", obj_enemy_spawn);
	spawner.enemy = obj_enemy_SH2;
}