if (instance_number(obj_enemy_parent) > maxEnemies) exit;
var spawn1 = instance_create_layer(xx + 0, yy - 672, "Enemy", obj_enemy_spawn);
spawn1.enemy = obj_enemy_s_viper_circle;
var xx2 = lengthdir_x(672, 210);
var yy2 = lengthdir_y(672, 210);
var spawn2 = instance_create_layer(xx + xx2, yy + yy2, "Enemy", obj_enemy_spawn);
spawn2.enemy = obj_enemy_b_viper_circle;
var xx3 = lengthdir_x(672, 330);
var yy3 = lengthdir_y(672, 330);
var spawn3 = instance_create_layer(xx + xx3, yy + yy3, "Enemy", obj_enemy_spawn);
spawn3.enemy = obj_enemy_r_viper_circle;

if (bosses == 3 && count <= 10) exit;

var spawn4 = instance_create_layer(xx + 1152, yy - 1152, "Enemy", obj_enemy_spawn_fast);
var spawn5 = instance_create_layer(xx - 1152, yy + 1152, "Enemy", obj_enemy_spawn_fast);
var spawn6 = instance_create_layer(xx + 1152, yy + 1152, "Enemy", obj_enemy_spawn_fast);
var spawn7 = instance_create_layer(xx - 1152, yy - 1152, "Enemy", obj_enemy_spawn_fast);
if (count mod 3 == 1) {
	spawn4.enemy = obj_enemy_s_grenader_big;
	spawn5.enemy = obj_enemy_s_grenader_big;
	spawn6.enemy = obj_enemy_s_grenader_big;
	spawn7.enemy = obj_enemy_s_grenader_big;
} else if (count mod 3 == 2) {
	spawn4.enemy = obj_enemy_b_grenader_big;
	spawn5.enemy = obj_enemy_b_grenader_big;
	spawn6.enemy = obj_enemy_b_grenader_big;
	spawn7.enemy = obj_enemy_b_grenader_big;
} else if (count mod 3 == 0) {
	spawn4.enemy = obj_enemy_r_grenader_big;
	spawn5.enemy = obj_enemy_r_grenader_big;
	spawn6.enemy = obj_enemy_r_grenader_big;
	spawn7.enemy = obj_enemy_r_grenader_big;
}

if (bosses == 1  || count > 20) {
		spawn1.enemy = obj_enemy_s_quickshot;
		spawn2.enemy = obj_enemy_b_quickshot;
		spawn3.enemy = obj_enemy_r_quickshot;
}