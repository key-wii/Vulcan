//DEBUG: spawn 4 enemies
if (debug) {
	instance_create_layer(x + 200, y + 200, "Enemy", obj_enemy_s_circle);
	instance_create_layer(x + 200, y - 200, "Enemy", obj_enemy_s_circle);
	instance_create_layer(x - 200, y + 200, "Enemy", obj_enemy_s_circle);
	instance_create_layer(x - 200, y - 200, "Enemy", obj_enemy_s_circle);
	/*instance_create_layer(x + 200, y + 200, "Enemy", obj_enemy_s);
	instance_create_layer(x + 200, y - 200, "Enemy", obj_enemy_s);
	instance_create_layer(x - 200, y + 200, "Enemy", obj_enemy_s);
	instance_create_layer(x - 200, y - 200, "Enemy", obj_enemy_s);*/
}