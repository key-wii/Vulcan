if (!instance_exists(obj_tank_pilot)) exit;
xx = obj_tank_pilot.x; yy = obj_tank_pilot.y;
if (yy - 300 > 355 + 256) {
	var spawn1 = instance_create_layer(xx, yy - 280, "Enemy", obj_enemy_spawn);
	spawn1.enemy = obj_enemy_tutorial_dumdum;
}
if (yy + 300 < 2140 + 256) {
	var spawn2 = instance_create_layer(xx, yy + 280, "Enemy", obj_enemy_spawn);
	spawn2.enemy = obj_enemy_tutorial_dumdum;
}
if (xx - 500 > 550 + 256) {
	var spawn3 = instance_create_layer(xx - 480, yy, "Enemy", obj_enemy_spawn);
	spawn3.enemy = obj_enemy_tutorial_dumdum;
}
if (xx + 500 < 2330 + 256) {
	var spawn4 = instance_create_layer(xx + 480, yy, "Enemy", obj_enemy_spawn);
	spawn4.enemy = obj_enemy_tutorial_dumdum;
}