count++;
var xadjust = random_range(-1, 1) * 450;
var yadjust = random_range(-1, 1) * 450;
var spawn1 = instance_create_layer(xx + 704 + xadjust, yy - 704 + yadjust, "Enemy", obj_enemy_spawn);
xadjust = random_range(-1, 1) * 450;
yadjust = random_range(-1, 1) * 450;
var spawn2 = instance_create_layer(xx - 704 + xadjust, yy + 704 + yadjust, "Enemy", obj_enemy_spawn);
xadjust = random_range(-1, 1) * 450;
yadjust = random_range(-1, 1) * 450;
var spawn3 = instance_create_layer(xx - 704 + xadjust, yy - 704 + yadjust, "Enemy", obj_enemy_spawn);
xadjust = random_range(-1, 1) * 450;
yadjust = random_range(-1, 1) * 450;
var spawn4 = instance_create_layer(xx + 704 + xadjust, yy + 704 + yadjust, "Enemy", obj_enemy_spawn);
var seed = irandom_range(0, 10);
if (seed == 1) {
	spawn1.enemy = obj_enemy_candler;
	spawn2.enemy = obj_enemy_s;
	spawn3.enemy = obj_enemy_r;
	spawn4.enemy = obj_enemy_s_viper;
} else if (seed == 2) {
	spawn1.enemy = obj_enemy_b;
	spawn2.enemy = obj_enemy_candler;
	spawn3.enemy = obj_enemy_b;
	spawn4.enemy = obj_enemy_b;
} else if (seed == 3) {
	spawn1.enemy = obj_enemy_r;
	spawn2.enemy = obj_enemy_r;
	spawn3.enemy = obj_enemy_candler;
	spawn4.enemy = obj_enemy_r;
} else if (seed == 4) {
	spawn1.enemy = obj_enemy_s_viper;
	spawn2.enemy = obj_enemy_s_viper;
	spawn3.enemy = obj_enemy_s_viper;
	spawn4.enemy = obj_enemy_s_3round;
} else if (seed == 5) {
	if (!instance_exists(obj_enemy_candler_big))
		spawn1.enemy = obj_enemy_candler_big;
	else spawn1.enemy = obj_enemy_candler;
	spawn2.enemy = obj_enemy_flamer;
	spawn3.enemy = obj_enemy_s_quickshot;
	spawn4.enemy = obj_enemy_s_viper;
} else if (seed == 6) {
	spawn1.enemy = obj_enemy_s_armor_big;
	spawn2.enemy = obj_enemy_s_viper;
	spawn3.enemy = obj_enemy_s_armor_big;
	spawn4.enemy = obj_enemy_s_armor_big;
} else if (seed == 7) {
	spawn1.enemy = obj_enemy_s_3round;
	spawn2.enemy = obj_enemy_b;
	spawn3.enemy = obj_enemy_s_3round;
	spawn4.enemy = obj_enemy_flamer;
} else if (seed == 8) {
	spawn1.enemy = obj_enemy_laser;
	if (!instance_exists(obj_enemy_candler_big))
		spawn2.enemy = obj_enemy_candler_big;
	else spawn2.enemy = obj_enemy_candler;
	spawn3.enemy = obj_enemy_s_viper;
	spawn4.enemy = obj_enemy_s_quickshot;
} else if (seed == 9) {
	spawn1.enemy = obj_enemy_r;
	spawn2.enemy = obj_enemy_s_viper;
	spawn3.enemy = obj_enemy_laser;
	spawn4.enemy = obj_enemy_s_armor_big;
} else if (seed == 10) {
	spawn1.enemy = obj_enemy_s_quickshot;
	spawn2.enemy = obj_enemy_laser;
	spawn3.enemy = obj_enemy_s_viper;
	spawn4.enemy = obj_enemy_laser;
} else {
	spawn1.enemy = obj_enemy_flamer;
	spawn2.enemy = obj_enemy_b;
	spawn3.enemy = obj_enemy_candler;
	spawn4.enemy = obj_enemy_s_3round;
}
if (count <= 20) timeline_position = 351 + spdUp;