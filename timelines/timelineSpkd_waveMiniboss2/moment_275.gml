if (instance_number(obj_enemy_bbbird_s) <= 3) {
	var spawn1 = instance_create_layer(xx + 0, yy - 840, "Enemy", obj_enemy_spawn);
	spawn1.enemy = obj_enemy_bbbird_s;
	spawn1.set_dir = 270;
}
if (instance_number(obj_enemy_bbbird_s) <= 2) {
	var spawn2 = instance_create_layer(xx + 870, yy + 0, "Enemy", obj_enemy_spawn);
	spawn2.enemy = obj_enemy_bbbird_s;
	spawn2.set_dir = 180;
}
if (instance_number(obj_enemy_bbbird_s) <= 1) {
	var spawn3 = instance_create_layer(xx - 815, yy + 0, "Enemy", obj_enemy_spawn);
	spawn3.enemy = obj_enemy_bbbird_s;
	spawn3.set_dir = 90;
}
if (instance_number(obj_enemy_bbbird_s) == 0) {
	var spawn4 = instance_create_layer(xx + 0, yy + 830, "Enemy", obj_enemy_spawn);
	spawn4.enemy = obj_enemy_bbbird_s;
	spawn4.set_dir = 0;
}