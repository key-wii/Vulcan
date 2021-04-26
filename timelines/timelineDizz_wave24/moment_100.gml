var player_exists = instance_exists(obj_tank_pilot)
if (!player_exists) exit;
enemies = instance_number(obj_spawnerandenemyparent_parent);
if (enemies >= 36 && !start) exit;
var px = obj_tank_pilot.x;
var py = obj_tank_pilot.y;
var widthCap = 1500; var lengthCap = 1050;
var lowCap = 0; var highCap = 0;
if (instance_exists(obj_tank_move))
	if (obj_tank_move.speed == 0) lowCap += 64;
if (instance_exists(obj_tank_move_flame))
	if (obj_tank_move_flame.speed == 0) lowCap += 64;
if (enemies > 6)  { lowCap += 100; highCap += 50; }
if (enemies > 12) { lowCap += 100; highCap += 50; }
if (enemies > 18) { lowCap += 100; highCap += 50; }
if (enemies > 24) { lowCap += 100; highCap += 50; }
if (enemies > 30) { lowCap += 100; highCap += 50; }
var edgeL = px - widthCap; var edgeR = px + widthCap;
var edgeU = py - lengthCap; var edgeD = py + lengthCap;
if (edgeL < 600 + 256) edgeL = 600 + 256; if (edgeR > room_width - 600 - 346) edgeR = room_width - 600 - 346 - 2;
if (edgeU < 400 + 256) edgeU = 410 + 256; if (edgeD > room_height - 400 - 346) edgeD = room_height - 400 - 346 - 2;
var flaming = instance_exists(obj_tank_move_flame);

//pick how many enemies to spawn
var _spawnNum = spawnNum;
spawnNum += count;
if (spawnNum > 4) spawnNum -= 4;
count += 1;
if (count > 4) count = 1;

//randomly pick 4 enemies to spawn
var seed = irandom_range(0, 20);
if (seed == 1) {
	if (instance_number(obj_enemy_r_3round) <= 4)
		var enemy1 = obj_enemy_r_3round;
	else var enemy1 = obj_enemy_candler;
	var enemy2 = obj_enemy_slime_dizzy;
	if (instance_number(obj_enemy_dizzy_viper_circle) < 12)
		var enemy3 = obj_enemy_dizzy_viper_circle;
	else var enemy3 = obj_enemy_b_grenader_big;
	var enemy4 = obj_enemy_b_3round;
} else if (seed == 2) {
	if (instance_number(obj_enemy_r_3round) <= 4)
		var enemy1 = obj_enemy_r_3round;
	else var enemy1 = obj_enemy_dizzy_viper_circle;
	var enemy2 = obj_enemy_r_viper_wide_circle;
	var enemy3 = obj_enemy_r_viper_wide;
	if (instance_number(obj_enemy_dizzy_viper_circle) < 12)
		var enemy4 = obj_enemy_dizzy_viper_circle;
	else var enemy4 = obj_enemy_b_grenader_big;
} else if (seed == 3) {
	if (instance_number(obj_enemy_r_3round) <= 4)
		var enemy1 = obj_enemy_r_3round;
	else var enemy1 = obj_enemy_b_viper_wide_circle;
	if (!instance_exists(obj_enemy_candler_big_dizzy))
		var enemy2 = obj_enemy_candler_big_dizzy;
	else var enemy2 = obj_enemy_flamer_dizzy;
	var enemy3 = obj_enemy_b_grenader_big;
	var enemy4 = obj_enemy_b_3round;
	var enemy4 = obj_enemy_b_3round;
} else if (seed == 4) {
	if (instance_number(obj_enemy_dizzy_viper_circle) < 12)
		var enemy1 = obj_enemy_dizzy_viper_circle;
	else var enemy1 = obj_enemy_b_grenader_big;
	if (instance_number(obj_enemy_dizzy_viper_circle) < 11)
		var enemy2 = obj_enemy_dizzy_viper_circle;
	else var enemy2 = obj_enemy_r_viper_wide;
	if (!instance_exists(obj_enemy_candler_big_dizzy))
		var enemy3 = obj_enemy_candler_big_dizzy;
	else var enemy3 = obj_enemy_slime_dizzy;
	if (instance_number(obj_enemy_r_3round) <= 3)
		var enemy4 = obj_enemy_r_3round;
	else var enemy4 = obj_enemy_b_3round;
} else if (seed == 5) {
	var enemy1 = obj_enemy_b_3round;
	if (instance_number(obj_enemy_r_3round) <= 4)
		var enemy2 = obj_enemy_r_3round;
	else var enemy2 = obj_enemy_b_3round;
	var enemy3 = obj_enemy_flamer_dizzy;
	if (instance_number(obj_enemy_dizzy_viper_circle) < 12)
		var enemy4 = obj_enemy_dizzy_viper_circle;
	else var enemy4 = obj_enemy_b_viper_wide_circle;
} else if (seed == 6) {
	if (instance_number(obj_enemy_dizzy_viper_circle) < 12)
		var enemy1 = obj_enemy_dizzy_viper_circle;
	else var enemy1 = obj_enemy_flamer_dizzy;
	if (instance_number(obj_enemy_r_3round) <= 4)
		var enemy2 = obj_enemy_r_3round;
	else var enemy2 = obj_enemy_s_viper_wide;
	var enemy3 = obj_enemy_s_viper_wide;
	if (instance_number(obj_enemy_dizzy_viper_circle) < 11)
		var enemy4 = obj_enemy_dizzy_viper_circle;
	else var enemy4 = obj_enemy_b_grenader_big;
} else if (seed == 7) {
	if (instance_number(obj_enemy_dizzy_viper_circle) < 12)
		var enemy1 = obj_enemy_dizzy_viper_circle;
	else var enemy1 = obj_enemy_s_viper_wide;
	if (instance_number(obj_enemy_r_3round) <= 4)
		var enemy2 = obj_enemy_r_3round;
	else var enemy2 = obj_enemy_candler;
	if (!instance_exists(obj_enemy_candler_big_dizzy))
		var enemy3 = obj_enemy_candler_big_dizzy;
	else var enemy3 = obj_enemy_slime_dizzy;
	var enemy4 = obj_enemy_s_viper_wide;
} else if (seed == 8) {
	if (instance_number(obj_enemy_r_3round) <= 4)
		var enemy1 = obj_enemy_r_3round;
	else var enemy1 = obj_enemy_b_viper_wide_circle;
	if (instance_number(obj_enemy_dizzy_viper_circle) < 12)
		var enemy2 = obj_enemy_dizzy_viper_circle;
	else var enemy2 = obj_enemy_s_viper_wide;
	if (!instance_exists(obj_enemy_candler_big_dizzy))
		var enemy3 = obj_enemy_candler_big_dizzy;
	else var enemy3 = obj_enemy_slime_dizzy;
	var enemy4 = obj_enemy_b_viper_wide_circle;
} else if (seed == 9) {
	if (instance_number(obj_enemy_r_3round) <= 4)
		var enemy1 = obj_enemy_r_3round;
	else var enemy1 = obj_enemy_b_grenader_big;
	if (instance_number(obj_enemy_dizzy_viper_circle) < 12)
		var enemy2 = obj_enemy_dizzy_viper_circle;
	else var enemy2 = obj_enemy_candler;
	var enemy3 = obj_enemy_b_3round;
	if (instance_number(obj_enemy_dizzy_viper_circle) < 11)
		var enemy4 = obj_enemy_dizzy_viper_circle;
	else var enemy4 = obj_enemy_flamer_dizzy;
} else if (seed == 10) {
	if (instance_number(obj_enemy_r_3round) <= 4)
		var enemy1 = obj_enemy_r_3round;
	else var enemy1 = obj_enemy_b_3round;
	var enemy2 = obj_enemy_flamer_dizzy;
	if (!instance_exists(obj_enemy_candler_big_dizzy))
		var enemy3 = obj_enemy_candler_big_dizzy;
	else var enemy3 = obj_enemy_flamer_dizzy;
	if (instance_number(obj_enemy_dizzy_viper_circle) < 12)
		var enemy4 = obj_enemy_dizzy_viper_circle;
	else var enemy4 = obj_enemy_b_viper_wide_circle;
} else if (seed == 11) {
	if (instance_number(obj_enemy_dizzy_viper_circle) < 12)
		var enemy1 = obj_enemy_dizzy_viper_circle;
	else var enemy1 = obj_enemy_b_viper_wide_circle;
	if (instance_number(obj_enemy_dizzy_viper_circle) < 10)
		var enemy2 = obj_enemy_dizzy_viper_circle;
	else var enemy2 = obj_enemy_b_viper_wide_circle;
	var enemy3 = obj_enemy_b_viper_wide_circle;
	var enemy4 = obj_enemy_b_viper_wide_circle;
} else if (seed == 12) {
	if (instance_number(obj_enemy_dizzy_viper_circle) < 12)
		var enemy1 = obj_enemy_dizzy_viper_circle;
	else var enemy1 = obj_enemy_b_3round;
	var enemy2 = obj_enemy_s_viper_wide_circle;
	if (!instance_exists(obj_enemy_candler_big_dizzy))
		var enemy3 = obj_enemy_candler_big_dizzy;
	else var enemy3 = obj_enemy_candler;
	var enemy4 = obj_enemy_b_grenader_big;
} else if (seed == 13) {
	if (instance_number(obj_enemy_dizzy_viper_circle) < 12)
		var enemy1 = obj_enemy_dizzy_viper_circle;
	else var enemy1 = obj_enemy_candler;
	if (instance_number(obj_enemy_r_3round) <= 4)
		var enemy2 = obj_enemy_r_3round;
	else var enemy2 = obj_enemy_flamer_dizzy;
	if (!instance_exists(obj_enemy_candler_big_dizzy))
		var enemy3 = obj_enemy_candler_big_dizzy;
	else var enemy3 = obj_enemy_candler;
	var enemy4 = obj_enemy_b_grenader_big;
} else if (seed == 14) {
	if (instance_number(obj_enemy_r_3round) <= 4)
		var enemy1 = obj_enemy_r_3round;
	else var enemy1 = obj_enemy_b_3round;
	var enemy2 = obj_enemy_flamer_dizzy;
	if (instance_number(obj_enemy_dizzy_viper_circle) < 12)
		var enemy3 = obj_enemy_dizzy_viper_circle;
	else var enemy3 = obj_enemy_candler;
	if (instance_number(obj_enemy_dizzy_viper_circle) < 11)
		var enemy4 = obj_enemy_dizzy_viper_circle;
	else var enemy4 = obj_enemy_b_3round;
} else if (seed == 15) {
	if (instance_number(obj_enemy_dizzy_viper_circle) < 12)
		var enemy1 = obj_enemy_dizzy_viper_circle;
	else var enemy1 = obj_enemy_flamer_dizzy;
	var enemy2 = obj_enemy_flamer_dizzy;
	if (instance_number(obj_enemy_dizzy_viper_circle) < 11)
		var enemy3 = obj_enemy_dizzy_viper_circle;
	else var enemy3 = obj_enemy_r_viper_wide;
	if (instance_number(obj_enemy_dizzy_viper_circle) < 10)
		var enemy4 = obj_enemy_dizzy_viper_circle;
	else var enemy4 = obj_enemy_r_viper_wide;
} else if (seed == 16) {
	if (instance_number(obj_enemy_mage_viper_wide_circle) < 9)
		var enemy1 = obj_enemy_mage_viper_wide_circle;
	else var enemy1 = obj_enemy_b_viper_wide_circle;
	if (instance_number(obj_enemy_dizzy_viper_circle) < 12)
		var enemy2 = obj_enemy_dizzy_viper_circle;
	else var enemy2 = obj_enemy_candler;
	if (instance_number(obj_enemy_dizzy_viper_circle) < 11)
		var enemy3 = obj_enemy_dizzy_viper_circle;
	else var enemy3 = obj_enemy_r_viper_wide;
	var enemy4 = obj_enemy_b_3round;
} else if (seed == 17 || seed == 18) {
	if (instance_number(obj_enemy_mage_viper_wide) < 9)
		var enemy1 = obj_enemy_mage_viper_wide;
	else var enemy1 = obj_enemy_b_3round;
	if (instance_number(obj_enemy_mage_viper_wide) < 8)
		var enemy2 = obj_enemy_mage_viper_wide;
	else var enemy2 = obj_enemy_flamer_dizzy;
	var enemy3 = obj_enemy_b_viper_wide_circle;
	var enemy4 = obj_enemy_flamer_dizzy;
} else if (seed == 19 || seed == 20) {
	if (!instance_exists(obj_enemy_candler_big_dizzy))
		var enemy1 = obj_enemy_candler_big_dizzy;
	else var enemy1 = obj_enemy_b_3round;
	if (instance_number(obj_enemy_mage_viper_wide_circle) < 9)
		var enemy2 = obj_enemy_mage_viper_wide_circle;
	else var enemy2 = obj_enemy_b_3round;
	if (instance_number(obj_enemy_mage_viper_wide_circle) < 8)
		var enemy3 = obj_enemy_mage_viper_wide_circle;
	else var enemy3 = obj_enemy_slime_dizzy;
	if (instance_number(obj_enemy_mage_viper_wide_circle) < 7)
		var enemy4 = obj_enemy_mage_viper_wide_circle;
	else var enemy4 = obj_enemy_candler;
} else {
	if (instance_number(obj_enemy_dizzy_viper_circle) < 12)
		var enemy1 = obj_enemy_dizzy_viper_circle;
	else var enemy1 = obj_enemy_flamer_dizzy;
	if (instance_number(obj_enemy_dizzy_viper_circle) < 11)
		var enemy2 = obj_enemy_dizzy_viper_circle;
	else var enemy2 = obj_enemy_flamer_dizzy;
	if (instance_number(obj_enemy_mage_viper_wide) < 9)
		var enemy3 = obj_enemy_mage_viper_wide;
	else var enemy3 = obj_enemy_flamer_dizzy;
	if (instance_number(obj_enemy_mage_viper_wide) < 8)
		var enemy4 = obj_enemy_mage_viper_wide;
	else var enemy4 = obj_enemy_slime_dizzy;
}

if (quickSpawn) {
	var spawner = obj_enemy_spawn_fast;
	quickSpawn = false;
} else var spawner = obj_enemy_spawn;
//randomly decide where they will spawn
with (obj_tank_pilot) {
	var ddir; var lenx; var leny; var enemy; var lCap;
	//var spawn1; var spawn2; var spawn3; var spawn4;
	
	if (_spawnNum >= 1) {
		enemy = enemy1; lCap = lowCap;
		ddir = random(1) * 360;
		if (flaming)
			if (ddir > -22.5 && ddir < 22.5  ||
				ddir > 67.5 && ddir < 112.5  ||
				ddir > 157.5 && ddir < 202.5 ||
				ddir > 247.5 && ddir < 292.5) ddir += 45;
		if (enemy == obj_enemy_candler || enemy == obj_enemy_candler_big ||
			enemy == obj_enemy_candler_big_dizzy || enemy == obj_enemy_flamer_dizzy ||
			string_count("controller", object_get_name(enemy)) > 0)
				lCap += 300;
		lenx = irandom_range(lCap, widthCap);     leny = irandom_range(lCap, lengthCap);
		lenx = lengthdir_x(lenx, ddir); leny = lengthdir_y(leny, ddir);
		lenx += px; leny += py;
		if (string_count("controller", object_get_name(enemy)) > 0) {
			if (lenx > edgeR - 300) lenx = edgeR - 300; if (lenx < edgeL + 300) lenx = edgeL + 300;
			if (leny > edgeD - 300) leny = edgeD - 300; if (leny < edgeU + 300) leny = edgeU + 300;
		} else {
			if (lenx > edgeR) lenx = edgeR; if (lenx < edgeL) lenx = edgeL;
			if (leny > edgeD) leny = edgeD; if (leny < edgeU) leny = edgeU;
		}
		var spawn1 = instance_create_layer(lenx, leny, "Enemy", spawner);
	}
	
	if (_spawnNum >= 2) {
		enemy = enemy2; lCap = lowCap;
		if (enemy == obj_enemy_candler || enemy == obj_enemy_candler_big ||
			enemy == obj_enemy_candler_big_dizzy || enemy == obj_enemy_flamer_dizzy ||
			string_count("controller", object_get_name(enemy)) > 0)
				lCap += 300;
		lenx = irandom_range(lCap, widthCap);     leny = irandom_range(lCap, lengthCap);
		lenx = lengthdir_x(lenx, ddir); leny = lengthdir_y(leny, ddir);
		lenx += px; leny += py;
		if (string_count("controller", object_get_name(enemy)) > 0) {
			if (lenx > edgeR - 300) lenx = edgeR - 300; if (lenx < edgeL + 300) lenx = edgeL + 300;
			if (leny > edgeD - 300) leny = edgeD - 300; if (leny < edgeU + 300) leny = edgeU + 300;
		} else {
			if (lenx > edgeR) lenx = edgeR; if (lenx < edgeL) lenx = edgeL;
			if (leny > edgeD) leny = edgeD; if (leny < edgeU) leny = edgeU;
		}
		var spawn2 = instance_create_layer(lenx, leny, "Enemy", spawner);
	}
	
	if (_spawnNum >= 3) {
		enemy = enemy3; lCap = lowCap;
		ddir = random(1) * 360;
		if (enemy == obj_enemy_candler || enemy == obj_enemy_candler_big ||
			enemy == obj_enemy_candler_big_dizzy || enemy == obj_enemy_flamer_dizzy ||
			string_count("controller", object_get_name(enemy)) > 0)
				lCap += 300;
		lenx = irandom_range(lCap, widthCap);     leny = irandom_range(lCap, lengthCap);
		lenx = lengthdir_x(lenx, ddir); leny = lengthdir_y(leny, ddir);
		lenx += px; leny += py;
		if (string_count("controller", object_get_name(enemy)) > 0) {
			if (lenx > edgeR - 300) lenx = edgeR - 300; if (lenx < edgeL + 300) lenx = edgeL + 300;
			if (leny > edgeD - 300) leny = edgeD - 300; if (leny < edgeU + 300) leny = edgeU + 300;
		} else {
			if (lenx > edgeR) lenx = edgeR; if (lenx < edgeL) lenx = edgeL;
			if (leny > edgeD) leny = edgeD; if (leny < edgeU) leny = edgeU;
		}
		var spawn3 = instance_create_layer(lenx, leny, "Enemy", spawner);
	}
	
	if (_spawnNum >= 4) {
		enemy = enemy4; lCap = lowCap;
		ddir = random(1) * 360;
		if (enemy == obj_enemy_candler || enemy == obj_enemy_candler_big ||
			enemy == obj_enemy_candler_big_dizzy || enemy == obj_enemy_flamer_dizzy ||
			string_count("controller", object_get_name(enemy)) > 0)
				lCap += 300;
		lenx = irandom_range(lCap, widthCap);     leny = irandom_range(lCap, lengthCap);
		lenx = lengthdir_x(lenx, ddir); leny = lengthdir_y(leny, ddir);
		lenx += px; leny += py;
		if (string_count("controller", object_get_name(enemy)) > 0) {
			if (lenx > edgeR - 300) lenx = edgeR - 300; if (lenx < edgeL + 300) lenx = edgeL + 300;
			if (leny > edgeD - 300) leny = edgeD - 300; if (leny < edgeU + 300) leny = edgeU + 300;
		} else {
			if (lenx > edgeR) lenx = edgeR; if (lenx < edgeL) lenx = edgeL;
			if (leny > edgeD) leny = edgeD; if (leny < edgeU) leny = edgeU;
		}
		var spawn4 = instance_create_layer(lenx, leny, "Enemy", spawner);
	}
}

//spawn these enemies
if (_spawnNum >= 1) spawn1.enemy = enemy1;
if (_spawnNum >= 2) spawn2.enemy = enemy2;
if (_spawnNum >= 3) spawn3.enemy = enemy3;
if (_spawnNum >= 4) spawn4.enemy = enemy4;

if (start) exit;
//Less enemies means more enemies need to spawn in quicker
     if (enemies < 4) timeline_position = 550;
else if (enemies < 6) timeline_position = 500;
else if (enemies < 8) timeline_position = 450;
else if (enemies < 10) timeline_position = 400;
else if (enemies < 12) timeline_position = 350;
else if (enemies < 14) timeline_position = 300;
else if (enemies < 16) timeline_position = 250;

