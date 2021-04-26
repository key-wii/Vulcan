var spawn1 = instance_create_layer(xx + 0, yy - 90, "Enemy", obj_enemy_spawn);
spawn1.enemy = obj_enemy_s_boss_rematch;
spawn1.image_xscale = 2;
spawn1.image_yscale = 2;

var xx2 = lengthdir_x(90, 210);
var yy2 = lengthdir_y(90, 210);
var spawn2 = instance_create_layer(xx + xx2, yy + yy2, "Enemy", obj_enemy_spawn);
spawn2.enemy = obj_enemy_b_boss_rematch;
spawn2.image_xscale = 2;
spawn2.image_yscale = 2;

var xx3 = lengthdir_x(90, 330);
var yy3 = lengthdir_y(90, 330);
var spawn3 = instance_create_layer(xx + xx3, yy + yy3, "Enemy", obj_enemy_spawn);
spawn3.enemy = obj_enemy_r_boss_rematch;
spawn3.image_xscale = 2;
spawn3.image_yscale = 2;

if (instance_number(obj_enemy_dragonfly_s) <= 7) {
	var spawn1 = instance_create_layer(xx + 0, yy - 840, "Enemy", obj_enemy_spawn);
	spawn1.enemy = obj_enemy_dragonfly_s;
	spawn1.set_dir = 270;
}
if (instance_number(obj_enemy_dragonfly_s) <= 6) {
	var spawn2 = instance_create_layer(xx + 870, yy + 0, "Enemy", obj_enemy_spawn);
	spawn2.enemy = obj_enemy_dragonfly_s;
	spawn2.set_dir = 180;
}
if (instance_number(obj_enemy_dragonfly_s) <= 5) {
	var spawn3 = instance_create_layer(xx - 815, yy + 0, "Enemy", obj_enemy_spawn);
	spawn3.enemy = obj_enemy_dragonfly_s;
	spawn3.set_dir = 90;
}
if (instance_number(obj_enemy_dragonfly_s) <= 4) {
	var spawn4 = instance_create_layer(xx + 0, yy + 830, "Enemy", obj_enemy_spawn);
	spawn4.enemy = obj_enemy_dragonfly_s;
	spawn4.set_dir = 0;
}

instance_create_layer(xx + 0, yy - 672, "Floor", obj_enemy_hive);
xx2 = lengthdir_x(672, 210);
yy2 = lengthdir_y(672, 210);
instance_create_layer(xx + xx2, yy + yy2, "Floor", obj_enemy_hive);
xx3 = lengthdir_x(672, 330);
yy3 = lengthdir_y(672, 330);
instance_create_layer(xx + xx3, yy + yy3, "Floor", obj_enemy_hive);

instance_create_layer(xx + 1152, yy - 1152, "Floor", obj_enemy_hive);
instance_create_layer(xx - 1152, yy + 1152, "Floor", obj_enemy_hive);
instance_create_layer(xx + 1152, yy + 1152, "Floor", obj_enemy_hive);
instance_create_layer(xx - 1152, yy - 1152, "Floor", obj_enemy_hive);