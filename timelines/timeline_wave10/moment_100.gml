var player_exists = instance_exists(obj_tank_pilot)
if (!player_exists) exit;
enemies = instance_number(obj_spawnerandenemyparent_parent);
if (enemies >= 26 && !start) exit;
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
if (start) seed = 1;
if (seed == 1 || seed == 2) {
	var enemy1 = obj_enemy_flamer;
	var enemy2 = obj_enemy_s_viper;
	var enemy3 = obj_enemy_s_armor_big;
	var enemy4 = obj_enemy_s_quickshot;
} else if (seed == 3 || seed == 4) {
	var enemy1 = obj_enemy_s_armor_big;
	var enemy2 = obj_enemy_flamer;
	var enemy3 = obj_enemy_s_quickshot;
	var enemy4 = obj_enemy_s_armor_big;
} else if (seed == 5 || seed == 6) {
	var enemy1 = obj_enemy_s_quickshot;
	var enemy2 = obj_enemy_s_armor_big;
	var enemy3 = obj_enemy_flamer;
	var enemy4 = obj_enemy_s_viper;
} else if (seed == 7 || seed == 8) {
	var enemy1 = obj_enemy_s_armor_big;
	var enemy2 = obj_enemy_flamer;
	var enemy3 = obj_enemy_s_viper;
	var enemy4 = obj_enemy_s_quickshot;
} else if (seed == 9 || seed == 10) {
	var enemy1 = obj_enemy_s_3round;
	var enemy2 = obj_enemy_flamer;
	var enemy3 = obj_enemy_s_3round;
	var enemy4 = obj_enemy_r;
} else if (seed == 11 || seed == 12) {
	var enemy1 = obj_enemy_flamer;
	var enemy2 = obj_enemy_s_3round;
	var enemy3 = obj_enemy_flamer;
	var enemy4 = obj_enemy_b;
} else if (seed == 13 || seed == 14) {
	var enemy1 = obj_enemy_candler;
	var enemy2 = obj_enemy_s_armor_big;
	var enemy3 = obj_enemy_s_3round;
	var enemy4 = obj_enemy_flamer;
} else if (seed == 15 || seed == 16) {
	var enemy1 = obj_enemy_s_3round;
	var enemy2 = obj_enemy_s_viper;
	var enemy3 = obj_enemy_flamer;
	var enemy4 = obj_enemy_s_armor_big;
} else if (seed == 17 || seed == 18) {
	var enemy1 = obj_enemy_s_armor_big;
	var enemy2 = obj_enemy_s_armor_big;
	var enemy3 = obj_enemy_s_armor_big;
	var enemy4 = obj_enemy_candler;
} else if (seed == 19 || seed == 20) {
	var enemy1 = obj_enemy_flamer;
	var enemy2 = obj_enemy_s_armor_big;
	var enemy3 = obj_enemy_b;
	var enemy4 = obj_enemy_s_armor_big;
} else if (seed == 17 || seed == 18) {
	var enemy1 = obj_enemy_r;
	var enemy2 = obj_enemy_s_armor_big;
	var enemy3 = obj_enemy_flamer;
	var enemy4 = obj_enemy_r;
} else if (seed == 19 || seed == 20) {
	var enemy1 = obj_enemy_b;
	var enemy2 = obj_enemy_r;
	var enemy3 = obj_enemy_s_armor_big;
	var enemy4 = obj_enemy_s_armor_big;
} else {
	var enemy1 = obj_enemy_flamer;
	var enemy2 = obj_enemy_flamer;
	var enemy3 = obj_enemy_flamer;
	var enemy4 = obj_enemy_flamer;
}

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
			if (enemy == obj_enemy_candler || enemy == obj_enemy_candler_big || enemy == obj_enemy_flamer)
				lCap += 300;
			lenx = irandom_range(lCap, widthCap);     leny = irandom_range(lCap, lengthCap);
		lenx = lengthdir_x(lenx, ddir); leny = lengthdir_y(leny, ddir);
		lenx += px; leny += py;
		if (lenx > edgeR) lenx = edgeR; if (lenx < edgeL) lenx = edgeL;
		if (leny > edgeD) leny = edgeD; if (leny < edgeU) leny = edgeU;
		var spawn1 = instance_create_layer(lenx, leny, "Enemy", obj_enemy_spawn);
	}
	
	if (_spawnNum >= 2) {
		enemy = enemy2; lCap = lowCap;
			ddir = random(1) * 360;
			if (enemy == obj_enemy_candler || enemy == obj_enemy_candler_big || enemy == obj_enemy_flamer)
				lCap += 300;
			lenx = irandom_range(lCap, widthCap);     leny = irandom_range(lCap, lengthCap);
		lenx = lengthdir_x(lenx, ddir); leny = lengthdir_y(leny, ddir);
		lenx += px; leny += py;
		if (lenx > edgeR) lenx = edgeR; if (lenx < edgeL) lenx = edgeL;
		if (leny > edgeD) leny = edgeD; if (leny < edgeU) leny = edgeU;
		var spawn2 = instance_create_layer(lenx, leny, "Enemy", obj_enemy_spawn);
	}
	
	if (_spawnNum >= 3) {
		enemy = enemy3; lCap = lowCap;
			ddir = random(1) * 360;
			if (enemy == obj_enemy_candler || enemy == obj_enemy_candler_big || enemy == obj_enemy_flamer)
				lCap += 300;
			lenx = irandom_range(lCap, widthCap);     leny = irandom_range(lCap, lengthCap);
		lenx = lengthdir_x(lenx, ddir); leny = lengthdir_y(leny, ddir);
		lenx += px; leny += py;
		if (lenx > edgeR) lenx = edgeR; if (lenx < edgeL) lenx = edgeL;
		if (leny > edgeD) leny = edgeD; if (leny < edgeU) leny = edgeU;
		var spawn3 = instance_create_layer(lenx, leny, "Enemy", obj_enemy_spawn);
	}
	
	if (_spawnNum >= 4) {
		enemy = enemy4; lCap = lowCap;
			ddir = random(1) * 360;
			if (enemy == obj_enemy_candler || enemy == obj_enemy_candler_big || enemy == obj_enemy_flamer)
				lCap += 300;
			lenx = irandom_range(lCap, widthCap);     leny = irandom_range(lCap, lengthCap);
		lenx = lengthdir_x(lenx, ddir); leny = lengthdir_y(leny, ddir);
		lenx += px; leny += py;
		if (lenx > edgeR) lenx = edgeR; if (lenx < edgeL) lenx = edgeL;
		if (leny > edgeD) leny = edgeD; if (leny < edgeU) leny = edgeU;
		var spawn4 = instance_create_layer(lenx, leny, "Enemy", obj_enemy_spawn);
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