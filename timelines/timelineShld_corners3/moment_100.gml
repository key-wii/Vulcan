enemies = instance_number(obj_spawnerandenemyparent_parent);
if (enemies > 80 || passes < 15) exit;
//var flaming = instance_exists(obj_tank_move_flame);

var spawn1 = instance_create_layer(600 + 512, 410 + 512, "Enemy", obj_enemy_spawn);
var spawn2 = instance_create_layer(600 + 512, room_height - 400 - 512, "Enemy", obj_enemy_spawn);
var spawn3 = instance_create_layer(room_width - 600 - 512, 410 + 512, "Enemy", obj_enemy_spawn);
var spawn4 = instance_create_layer(room_width - 600 - 512, room_height - 400 - 512, "Enemy", obj_enemy_spawn);
var seedMax = 90 - passes;
if (seedMax > 10) seedMax = 10;
seed = irandom_range(0, seedMax);
if (seed == 1) {
	spawn1.enemy = obj_enemy_candler;
	spawn2.enemy = obj_enemy_candler;
	spawn3.enemy = obj_enemy_candler;
	spawn4.enemy = obj_enemy_flamer_fast;
	passes = -1;
} else if (seed == 2) {
	spawn1.enemy = obj_enemy_candler;
	spawn2.enemy = obj_enemy_candler;
	spawn3.enemy = obj_enemy_flamer_fast;
	spawn4.enemy = obj_enemy_candler;
	passes = -1;
} else if (seed == 3) {
	spawn1.enemy = obj_enemy_candler;
	spawn2.enemy = obj_enemy_flamer_fast;
	spawn3.enemy = obj_enemy_candler;
	spawn4.enemy = obj_enemy_candler;
	passes = -1;
} else if (seed == 4) {
	spawn1.enemy = obj_enemy_flamer_fast;
	spawn2.enemy = obj_enemy_candler;
	spawn3.enemy = obj_enemy_candler;
	spawn4.enemy = obj_enemy_candler;
	passes = -1;
} else if (seed == 5 || seed == 6) {
	spawn1.enemy = obj_enemy_candler;
	spawn2.enemy = obj_enemy_candler;
	spawn3.enemy = obj_enemy_candler;
	spawn4.enemy = obj_enemy_candler;
	passes = -1;
} else if (seed == 7 || seed == 8) {
	spawn1.enemy = obj_enemy_candler;
	spawn2.enemy = obj_enemy_flamer_fast;
	spawn3.enemy = obj_enemy_candler;
	spawn4.enemy = obj_enemy_flamer_fast;
	passes = -1;
} else if (seed == 9 || seed == 10) {
	spawn1.enemy = obj_enemy_candler;
	spawn2.enemy = obj_enemy_flamer_fast;
	spawn3.enemy = obj_enemy_candler;
	spawn4.enemy = obj_enemy_flamer_fast;
	passes = -1;
} else if (seed == 0) {
	spawn1.enemy = obj_enemy_flamer_fast;
	spawn2.enemy = obj_enemy_flamer_fast;
	spawn3.enemy = obj_enemy_flamer_fast;
	spawn4.enemy = obj_enemy_flamer_fast;
	passes = -1;
}

/*     if (enemies < 4) timeline_position = 550;
else if (enemies < 6) timeline_position = 500;
else */if (enemies < 8) timeline_position = 450;
else if (enemies < 10) timeline_position = 400;
else if (enemies < 12) timeline_position = 350;
else if (enemies < 14) timeline_position = 300;
else if (enemies < 16) timeline_position = 250;