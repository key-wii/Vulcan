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
if (global.checkpoint < 6 && enemies >= 30) exit;
else if (global.checkpoint < 9 && enemies >= 48) exit;
else if (enemies >= 17) exit;
//var flaming = instance_exists(obj_tank_move_flame);

var spawn1 = instance_create_layer(600 + 256, 410 + 256, "Enemy", obj_enemy_spawn);
var spawn2 = instance_create_layer(600 + 256, room_height - 400 - 346, "Enemy", obj_enemy_spawn);
var spawn3 = instance_create_layer(room_width - 600 - 346, 410 + 256, "Enemy", obj_enemy_spawn);
var spawn4 = instance_create_layer(room_width - 600 - 346, room_height - 400 - 346, "Enemy", obj_enemy_spawn);
seed = irandom_range(0, 8);
if (seed == 5 && global.checkpoint < 5) seed = 0;
if (seed == 1) {
	var sp = irandom_range(1, 4);
	if (sp == 1) {
		spawn1.enemy = obj_enemy_s_grenader_big_spiked;
		spawn2.enemy = obj_enemy_flamer;
		spawn3.enemy = obj_enemy_flamer;
		spawn4.enemy = obj_enemy_s_viper;
	}
	if (sp == 2) {
		spawn1.enemy = obj_enemy_s_viper;
		spawn2.enemy = obj_enemy_s_grenader_big_spiked;
		spawn3.enemy = obj_enemy_flamer;
		spawn4.enemy = obj_enemy_flamer;
	}
	if (sp == 3) {
		spawn1.enemy = obj_enemy_flamer;
		spawn2.enemy = obj_enemy_s_viper;
		spawn3.enemy = obj_enemy_s_grenader_big_spiked;
		spawn4.enemy = obj_enemy_flamer;
	}
	if (sp == 4) {
		spawn1.enemy = obj_enemy_flamer;
		spawn2.enemy = obj_enemy_flamer;
		spawn3.enemy = obj_enemy_s_viper;
		spawn4.enemy = obj_enemy_s_grenader_big_spiked;
	}
} else if (seed == 2) {
	spawn1.enemy = obj_enemy_candler_spiked;
	spawn2.enemy = obj_enemy_r_viper;
	spawn3.enemy = obj_enemy_candler_spiked;
	spawn4.enemy = obj_enemy_r_viper;
} else if (seed == 3 ) {
	spawn1.enemy = obj_enemy_r_viper;
	spawn2.enemy = obj_enemy_candler_spiked;
	spawn3.enemy = obj_enemy_r_viper;
	spawn4.enemy = obj_enemy_candler_spiked;
} else if (seed == 4) {
	if (global.checkpoint >= 6) {
		var sp = irandom_range(1, 4);
		if (sp == 1) {
			spawn1.enemy = obj_enemy_s_grenader_big_spiked;
			spawn2.enemy = obj_enemy_s_viper;
			if (global.checkpoint >= 8) spawn3.enemy = obj_enemy_slime_spiked;
			else spawn3.enemy = obj_enemy_slime;
			spawn4.enemy = obj_enemy_s_viper;
		}
		if (sp == 2) {
			spawn1.enemy = obj_enemy_s_viper;
			spawn2.enemy = obj_enemy_s_grenader_big_spiked;
			spawn3.enemy = obj_enemy_s_viper;
			if (global.checkpoint >= 8) spawn4.enemy = obj_enemy_slime_spiked;
			else spawn4.enemy = obj_enemy_slime;
		}
		if (sp == 3) {
			if (global.checkpoint >= 8) spawn1.enemy = obj_enemy_slime_spiked;
			else spawn1.enemy = obj_enemy_slime;
			spawn2.enemy = obj_enemy_s_viper;
			spawn3.enemy = obj_enemy_s_grenader_big_spiked;
			spawn4.enemy = obj_enemy_s_viper;
		}
		if (sp == 4) {
			spawn1.enemy = obj_enemy_s_viper;
			if (global.checkpoint >= 8) spawn2.enemy = obj_enemy_slime_spiked;
			else spawn2.enemy = obj_enemy_slime;
			spawn3.enemy = obj_enemy_s_viper;
			spawn4.enemy = obj_enemy_s_grenader_big_spiked;
		}
	} else {
		spawn1.enemy = obj_enemy_s_circle;
		spawn2.enemy = obj_enemy_s_circle;
		spawn3.enemy = obj_enemy_s_circle;
		spawn4.enemy = obj_enemy_s_circle;
	}
} else if (seed == 5) {
	spawn1.enemy = obj_enemy_s_armor_big_spiked2;
	spawn2.enemy = obj_enemy_s_armor_big_spiked2;
	spawn3.enemy = obj_enemy_s_armor_big_spiked2;
	spawn4.enemy = obj_enemy_s_armor_big_spiked2;
} else if (seed == 6) {
	spawn1.enemy = obj_enemy_r_viper_circle;
	spawn2.enemy = obj_enemy_r_viper_circle;
	spawn3.enemy = obj_enemy_r_viper_circle;
	spawn4.enemy = obj_enemy_r_viper_circle;
} else if (seed == 7 || seed == 8) {
	spawn1.enemy = obj_enemy_s_viper_circle_spiked;
	spawn2.enemy = obj_enemy_s_viper_circle_spiked;
	spawn3.enemy = obj_enemy_s_viper_circle_spiked;
	spawn4.enemy = obj_enemy_s_viper_circle_spiked;
} else {
	spawn1.enemy =  obj_enemy_s_viper_circle;
	spawn2.enemy =  obj_enemy_s_viper_circle;
	spawn3.enemy =  obj_enemy_s_viper_circle;
	spawn4.enemy =  obj_enemy_s_viper_circle;
}
if (start) exit;
     if (enemies < 4) timeline_position = 550;
else if (enemies < 6) timeline_position = 500;
else if (enemies < 8) timeline_position = 450;
else if (enemies < 10) timeline_position = 400;
else if (enemies < 12) timeline_position = 350;
else if (enemies < 14) timeline_position = 300;
else if (enemies < 16) timeline_position = 250;