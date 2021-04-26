if (!instance_exists(obj_tank_pilot)) exit;
xxx = 0; yyy = 0;
var dis1 = point_distance(obj_tank_pilot.x, obj_tank_pilot.y, xx - 0, yy + 576);
var dis2 = point_distance(obj_tank_pilot.x, obj_tank_pilot.y, xx + 0, yy - 576);
var dis3 = point_distance(obj_tank_pilot.x, obj_tank_pilot.y, xx + 576, yy + 0);
var dis4 = point_distance(obj_tank_pilot.x, obj_tank_pilot.y, xx - 576, yy - 0);
				dis = dis1;
if (dis > dis2) dis = dis2;
if (dis > dis3) dis = dis3;
if (dis > dis4) dis = dis4;
if (dis == dis1) yyy += 576;
if (dis == dis2) yyy -= 576;
if (dis == dis3) xxx += 576;
if (dis == dis4) xxx -= 576;
var spawn = instance_create_layer(xx + xxx, yy + yyy, "Enemy", obj_enemy_spawn_fast);
spawn.enemy = obj_enemy_candler_dizzy_boss;
spawn.image_xscale = 2;
spawn.image_yscale = 2;

if (instance_number(obj_enemy_bbbird_s) <= 3) {
	var spawn1 = instance_create_layer(xx + 0, yy - 830, "Enemy", obj_enemy_spawn);
	spawn1.enemy = obj_enemy_bbbird_s;
	spawn1.set_dir = 270;
}
if (instance_number(obj_enemy_bbbird_s) <= 2) {
	var spawn2 = instance_create_layer(xx + 845, yy + 0, "Enemy", obj_enemy_spawn);
	spawn2.enemy = obj_enemy_bbbird_s;
	spawn2.set_dir = 180;
}
if (instance_number(obj_enemy_bbbird_s) <= 1) {
	var spawn3 = instance_create_layer(xx - 820, yy + 0, "Enemy", obj_enemy_spawn);
	spawn3.enemy = obj_enemy_bbbird_s;
	spawn3.set_dir = 90;
}
if (instance_number(obj_enemy_bbbird_s) == 0) {
	var spawn4 = instance_create_layer(xx + 0, yy + 855, "Enemy", obj_enemy_spawn);
	spawn4.enemy = obj_enemy_bbbird_s;
	spawn4.set_dir = 0;
}

instance_create_layer(xx + 1080, yy - 1080, "Floor", obj_enemy_hive);
instance_create_layer(xx - 1080, yy + 1080, "Floor", obj_enemy_hive);
instance_create_layer(xx + 1080, yy + 1080, "Floor", obj_enemy_hive);
instance_create_layer(xx - 1080, yy - 1080, "Floor", obj_enemy_hive);