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
if (xx - 300 > 550 + 256) {
	var spawn3 = instance_create_layer(xx - 280, yy, "Enemy", obj_enemy_spawn);
	spawn3.enemy = obj_enemy_tutorial_dumdum;
}
if (xx + 300 < 2330 + 256) {
	var spawn4 = instance_create_layer(xx + 280, yy, "Enemy", obj_enemy_spawn);
	spawn4.enemy = obj_enemy_tutorial_dumdum;
}
if (yy - 300 > 355 + 256 && xx - 300 > 550 + 256) {
	var spawn5 = instance_create_layer(xx - 280, yy - 280, "Enemy", obj_enemy_spawn);
	spawn5.enemy = obj_enemy_tutorial_dumdum;
}
if (yy + 300 < 2140 + 256 && xx + 300 < 2330 + 256) {
	var spawn6 = instance_create_layer(xx + 280, yy + 280, "Enemy", obj_enemy_spawn);
	spawn6.enemy = obj_enemy_tutorial_dumdum;
}
if (xx - 300 > 550 + 256 && yy + 300 < 2140 + 256) {
	var spawn7 = instance_create_layer(xx - 280, yy + 280, "Enemy", obj_enemy_spawn);
	spawn7.enemy = obj_enemy_tutorial_dumdum;
}
if (xx + 300 < 2330 + 256 && yy - 300 > 355 + 256) {
	var spawn8 = instance_create_layer(xx + 280, yy - 280, "Enemy", obj_enemy_spawn);
	spawn8.enemy = obj_enemy_tutorial_dumdum;
}
if (yy - 364 > 355 + 256) {
	var spawn1 = instance_create_layer(xx, yy - 344, "Enemy", obj_enemy_spawn);
	spawn1.enemy = obj_enemy_tutorial_dumdum;
}
if (yy + 364 < 2140 + 256) {
	var spawn2 = instance_create_layer(xx, yy + 344, "Enemy", obj_enemy_spawn);
	spawn2.enemy = obj_enemy_tutorial_dumdum;
}
if (xx - 364 > 550 + 256) {
	var spawn3 = instance_create_layer(xx - 344, yy, "Enemy", obj_enemy_spawn);
	spawn3.enemy = obj_enemy_tutorial_dumdum;
}
if (xx + 364 < 2330 + 256) {
	var spawn4 = instance_create_layer(xx + 344, yy, "Enemy", obj_enemy_spawn);
	spawn4.enemy = obj_enemy_tutorial_dumdum;
}
if (yy - 428 > 355 + 256) {
	var spawn1 = instance_create_layer(xx, yy - 408, "Enemy", obj_enemy_spawn);
	spawn1.enemy = obj_enemy_tutorial_dumdum;
}
if (yy + 428 < 2140 + 256) {
	var spawn2 = instance_create_layer(xx, yy + 408, "Enemy", obj_enemy_spawn);
	spawn2.enemy = obj_enemy_tutorial_dumdum;
}
if (xx - 428 > 550 + 256) {
	var spawn3 = instance_create_layer(xx - 408, yy, "Enemy", obj_enemy_spawn);
	spawn3.enemy = obj_enemy_tutorial_dumdum;
}
if (xx + 428 < 2330 + 256) {
	var spawn4 = instance_create_layer(xx + 408, yy, "Enemy", obj_enemy_spawn);
	spawn4.enemy = obj_enemy_tutorial_dumdum;
}