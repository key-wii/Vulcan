if (instance_number(obj_enemy_bbbird_s2) <= 5) {
	var spawn1 = instance_create_layer(xx + 0, yy - 840, "Enemy", obj_enemy_spawn);
	spawn1.enemy = obj_enemy_bbbird_s;
	spawn1.set_dir = 270;
}
if (instance_number(obj_enemy_bbbird_s2) <= 4) {
	var spawn2 = instance_create_layer(xx + 870, yy + 0, "Enemy", obj_enemy_spawn);
	spawn2.enemy = obj_enemy_bbbird_s;
	spawn2.set_dir = 180;
}
if (instance_number(obj_enemy_bbbird_s) <= 5) {
	var spawn3 = instance_create_layer(xx - 840, yy + 0, "Enemy", obj_enemy_spawn);
	spawn3.enemy = obj_enemy_bbbird_s;
	spawn3.set_dir = 90;
}
if (instance_number(obj_enemy_bbbird_s) <= 4) {
	var spawn4 = instance_create_layer(xx + 0, yy + 860, "Enemy", obj_enemy_spawn);
	spawn4.enemy = obj_enemy_bbbird_s2;
	spawn4.set_dir = 0;
}