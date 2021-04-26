if (passes == -1) {
	passes = 0;
	exit;
}
if (flameKills == global.flameKills)
	passes++;
else {
	flameKills = global.flameKills;
	passes = 0;
}
enemies = instance_number(obj_spawnerandenemyparent_parent);
if (global.checkpoint < 19 && enemies >= 35) exit;
if (global.checkpoint >= 19 && enemies >= 40) exit;
//var flaming = instance_exists(obj_tank_move_flame);

var spawn1 = instance_create_layer(600 + 256, 410 + 256, "Enemy", obj_enemy_spawn);
var spawn2 = instance_create_layer(600 + 256, room_height - 400 - 346, "Enemy", obj_enemy_spawn);
var spawn3 = instance_create_layer(room_width - 600 - 346, 410 + 256, "Enemy", obj_enemy_spawn);
var spawn4 = instance_create_layer(room_width - 600 - 346, room_height - 400 - 346, "Enemy", obj_enemy_spawn);
seed = irandom_range(0, 8);
if (global.checkpoint >= 19 && (seed == 7 || seed == 8)) seed = 1;
if (seed == 1) {
	spawn1.enemy = obj_enemy_slime;
	spawn2.enemy = obj_enemy_slime;
	spawn3.enemy = obj_enemy_slime;
	spawn4.enemy = obj_enemy_slime;
	if (global.checkpoint >= 12) {
		var sp = irandom_range(1, 4);
		if (sp == 1) spawn1.enemy = obj_enemy_slime_dizzy;
		if (sp == 2) spawn2.enemy = obj_enemy_slime_dizzy;
		if (sp == 3) spawn3.enemy = obj_enemy_slime_dizzy;
		if (sp == 4) spawn4.enemy = obj_enemy_slime_dizzy;
	}
} else if (seed == 2) {
	spawn1.enemy = obj_enemy_s_viper_wide;
	spawn2.enemy = obj_enemy_s_viper_wide;
	spawn3.enemy = obj_enemy_s_viper_wide;
	spawn4.enemy = obj_enemy_s_viper_wide;
} else if (seed == 3 || seed == 4) {
	spawn1.enemy = obj_enemy_r_viper_wide;
	spawn2.enemy = obj_enemy_r_viper_wide;
	spawn3.enemy = obj_enemy_r_viper_wide;
	spawn4.enemy = obj_enemy_r_viper_wide;
} else if (seed == 5 || seed == 6) {
	spawn1.enemy = obj_enemy_s_grenader_big;
	spawn2.enemy = obj_enemy_s_grenader_big;
	spawn3.enemy = obj_enemy_s_grenader_big;
	spawn4.enemy = obj_enemy_s_grenader_big;
} else if (seed == 7 || seed == 8) {
	spawn1.enemy = obj_enemy_b_circle;
	spawn2.enemy = obj_enemy_b_circle;
	spawn3.enemy = obj_enemy_b_circle;
	spawn4.enemy = obj_enemy_b_circle;
} else {
	if (instance_number(obj_enemy_mage_viper_wide_circle) < 14)
		spawn1.enemy1 = obj_enemy_mage_viper_wide_circle;
	else spawn1.enemy =  obj_enemy_b_viper_wide_circle;
	if (instance_number(obj_enemy_mage_viper_wide_circle) < 13)
		spawn2.enemy1 = obj_enemy_mage_viper_wide_circle;
	else spawn2.enemy =  obj_enemy_b_viper_wide_circle;
	if (instance_number(obj_enemy_mage_viper_wide_circle) < 12)
		spawn3.enemy1 = obj_enemy_mage_viper_wide_circle;
	else spawn3.enemy =  obj_enemy_b_viper_wide_circle;
	if (instance_number(obj_enemy_mage_viper_wide_circle) < 11)
		spawn4.enemy1 = obj_enemy_mage_viper_wide_circle;
	else spawn4.enemy =  obj_enemy_b_viper_wide_circle;
}
if (start) exit;
     if (enemies < 4) timeline_position = 550;
else if (enemies < 6) timeline_position = 500;
else if (enemies < 8) timeline_position = 450;
else if (enemies < 10) timeline_position = 400;
else if (enemies < 12) timeline_position = 350;
else if (enemies < 14) timeline_position = 300;
else if (enemies < 16) timeline_position = 250;