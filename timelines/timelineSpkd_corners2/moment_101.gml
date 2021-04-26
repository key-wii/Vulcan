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
if (global.checkpoint < 16 && enemies >= 36) exit;
else if (global.checkpoint < 19 && enemies >= 50) exit;
else if (enemies >= 15) exit;
//var flaming = instance_exists(obj_tank_move_flame);

var spawn1 = instance_create_layer(600 + 256, 410 + 256, "Enemy", obj_enemy_spawn);
var spawn2 = instance_create_layer(600 + 256, room_height - 400 - 346, "Enemy", obj_enemy_spawn);
var spawn3 = instance_create_layer(room_width - 600 - 346, 410 + 256, "Enemy", obj_enemy_spawn);
var spawn4 = instance_create_layer(room_width - 600 - 346, room_height - 400 - 346, "Enemy", obj_enemy_spawn);
seed = irandom_range(0, 8);
if (seed == 1) {
	var sp = irandom_range(1, 4);
	if (sp == 1) {
		spawn1.enemy = obj_enemy_r_grenader_big_spiked;
		spawn2.enemy = obj_enemy_bomber_spiked;
		spawn3.enemy = obj_enemy_bomber_spiked;
		spawn4.enemy = obj_enemy_b_viper_spiked;
	}
	if (sp == 2) {
		spawn1.enemy = obj_enemy_b_viper_spiked;
		spawn2.enemy = obj_enemy_r_grenader_big_spiked;
		spawn3.enemy = obj_enemy_bomber_spiked;
		spawn4.enemy = obj_enemy_bomber_spiked;
	}
	if (sp == 3) {
		spawn1.enemy = obj_enemy_bomber_spiked;
		spawn2.enemy = obj_enemy_b_viper_spiked;
		spawn3.enemy = obj_enemy_r_grenader_big_spiked;
		spawn4.enemy = obj_enemy_bomber_spiked;
	}
	if (sp == 4) {
		spawn1.enemy = obj_enemy_bomber_spiked;
		spawn2.enemy = obj_enemy_bomber_spiked;
		spawn3.enemy = obj_enemy_b_viper_spiked;
		spawn4.enemy = obj_enemy_r_grenader_big_spiked;
	}
} else if (seed == 2) {
	spawn1.enemy = obj_enemy_candler_spiked;
	spawn2.enemy = obj_enemy_r_viper_spiked;
	spawn3.enemy = obj_enemy_candler_spiked;
	spawn4.enemy = obj_enemy_r_viper_spiked;
} else if (seed == 3 ) {
	spawn1.enemy = obj_enemy_r_viper_spiked;
	spawn2.enemy = obj_enemy_candler_spiked;
	spawn3.enemy = obj_enemy_r_viper_spiked;
	spawn4.enemy = obj_enemy_candler_spiked;
} else if (seed == 4) {
	var sp = irandom_range(1, 4);
	if (sp == 1) {
		spawn1.enemy = obj_enemy_r_grenader_big_spiked;
		spawn2.enemy = obj_enemy_b_viper_spiked;
		spawn3.enemy = obj_enemy_slime_spiked;
		spawn4.enemy = obj_enemy_b_viper_spiked;
	}
	if (sp == 2) {
		spawn1.enemy = obj_enemy_b_viper;
		spawn2.enemy = obj_enemy_r_grenader_big_spiked;
		spawn3.enemy = obj_enemy_b_viper_wide_circle;
		spawn4.enemy = obj_enemy_slime_spiked;
	}
	if (sp == 3) {
		spawn1.enemy = obj_enemy_slime_spiked;
		spawn2.enemy = obj_enemy_b_viper_spiked;
		spawn3.enemy = obj_enemy_r_grenader_big_spiked;
		spawn4.enemy = obj_enemy_b_viper_spiked;
	}
	if (sp == 4) {
		spawn1.enemy = obj_enemy_b_viper_spiked;
		spawn2.enemy = obj_enemy_slime_spiked;
		spawn3.enemy = obj_enemy_b_viper_spiked;
		spawn4.enemy = obj_enemy_r_grenader_big_spiked;
	}
} else if (seed == 5) {
	spawn1.enemy = obj_enemy_s_armor_big_spiked2;
	spawn2.enemy = obj_enemy_s_armor_big_spiked2;
	spawn3.enemy = obj_enemy_s_armor_big_spiked2;
	spawn4.enemy = obj_enemy_s_armor_big_spiked2;
} else if (seed == 6) {
	spawn1.enemy = obj_enemy_r_viper_circle_spiked;
	spawn2.enemy = obj_enemy_s_grenader_big_spiked;
	spawn3.enemy = obj_enemy_r_viper_circle_spiked;
	spawn4.enemy = obj_enemy_s_grenader_big_spiked;
} else if (seed == 7 || seed == 8) {
	spawn1.enemy = obj_enemy_s_viper_wide_circle_spiked2;
	spawn2.enemy = obj_enemy_s_viper_wide_circle_spiked2;
	spawn3.enemy = obj_enemy_s_viper_wide_circle_spiked2;
	spawn4.enemy = obj_enemy_s_viper_wide_circle_spiked2;
} else {
	spawn1.enemy =  obj_enemy_s_grenader_big_spiked2;
	spawn2.enemy =  obj_enemy_r_viper_circle_spiked;
	spawn3.enemy =  obj_enemy_s_grenader_big_spiked2;
	spawn4.enemy =  obj_enemy_r_viper_circle_spiked;
}
if (start) exit;
     if (enemies < 4) timeline_position = 550;
else if (enemies < 6) timeline_position = 500;
else if (enemies < 8) timeline_position = 450;
else if (enemies < 10) timeline_position = 400;
else if (enemies < 12) timeline_position = 350;
else if (enemies < 14) timeline_position = 300;
else if (enemies < 16) timeline_position = 250;