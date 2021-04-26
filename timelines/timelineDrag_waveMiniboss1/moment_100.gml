var spawn = instance_create_layer(xx, yy, "Enemy", obj_enemy_spawn);
spawn.enemy = obj_enemy_hydra_boss_controller;
spawn.image_xscale = 2.5;
spawn.image_yscale = 2.5;

if (instance_number(obj_enemy_dragonfly_s) <= 3) {
	var spawn1 = instance_create_layer(xx + 0, yy - 830, "Enemy", obj_enemy_spawn);
	spawn1.enemy = obj_enemy_dragonfly_s;
	spawn1.set_dir = 270;
}
if (instance_number(obj_enemy_dragonfly_s) <= 2) {
	var spawn2 = instance_create_layer(xx + 845, yy + 0, "Enemy", obj_enemy_spawn);
	spawn2.enemy = obj_enemy_dragonfly_s;
	spawn2.set_dir = 180;
}
if (instance_number(obj_enemy_dragonfly_s) <= 1) {
	var spawn3 = instance_create_layer(xx - 820, yy + 0, "Enemy", obj_enemy_spawn);
	spawn3.enemy = obj_enemy_dragonfly_s;
	spawn3.set_dir = 90;
}
if (instance_number(obj_enemy_dragonfly_s) == 0) {
	var spawn4 = instance_create_layer(xx + 0, yy + 855, "Enemy", obj_enemy_spawn);
	spawn4.enemy = obj_enemy_dragonfly_s;
	spawn4.set_dir = 0;
}

instance_create_layer(xx + 620, yy, "Floor", obj_enemy_hive);
instance_create_layer(xx - 620, yy, "Floor", obj_enemy_hive);
instance_create_layer(xx, yy + 620, "Floor", obj_enemy_hive);
instance_create_layer(xx, yy - 620, "Floor", obj_enemy_hive);

instance_create_layer(xx + 1152, yy - 1152, "Floor", obj_enemy_hive);
instance_create_layer(xx - 1152, yy + 1152, "Floor", obj_enemy_hive);
instance_create_layer(xx + 1152, yy + 1152, "Floor", obj_enemy_hive);
instance_create_layer(xx - 1152, yy - 1152, "Floor", obj_enemy_hive);