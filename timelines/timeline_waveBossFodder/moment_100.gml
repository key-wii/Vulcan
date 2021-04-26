var player_exists = instance_exists(obj_tank_pilot)
var boss_exists = instance_exists(obj_boss_parent)
if (!player_exists || !boss_exists) exit;
var spawnCap = 20;
var bossMaxHp = obj_boss_parent.maxHp; var bossCritHp = obj_boss_parent.critHp;
var bossHp = obj_boss_parent.maxHp - obj_boss_parent.damage;
var critHp = false;
if (bossHp < bossCritHp + 10 &&
	!obj_boss_parent.desperationUsed) critHp = true;
else if (bossHp < bossMaxHp * .25) spawnCap += 15;
else if (bossHp < bossMaxHp * .50) spawnCap += 10;
else if (bossHp < bossMaxHp * .75) spawnCap +=  5;
					   if (critHp) spawnCap += 30;
enemies = instance_number(obj_spawnerandenemyparent_parent);
if (enemies >= spawnCap && !start) exit;
if (critHp) {
	var origin = obj_boss_parent;
} else {
	var origin = obj_tank_pilot;
}
var px = origin.x;
var py = origin.y;
var widthCap = 1500; var lengthCap = 1050;
var lowCap = 0; var highCap = 0;
if (!critHp) {
	if (instance_exists(obj_tank_move))
		if (obj_tank_move.speed == 0) lowCap += 64;
	if (instance_exists(obj_tank_move_flame))
		if (obj_tank_move_flame.speed == 0) lowCap += 64;
	if (enemies > 6)  { lowCap += 100; highCap += 50; }
	if (enemies > 12) { lowCap += 100; highCap += 50; }
	if (enemies > 18) { lowCap += 100; highCap += 50; }
	if (enemies > 24) { lowCap += 100; highCap += 50; }
	if (enemies > 30) { lowCap += 100; highCap += 50; }
} else {
	lowCap = 100; widthCap = 600; lengthCap = 600;
}
var edgeL = px - widthCap; var edgeR = px + widthCap;
var edgeU = py - lengthCap; var edgeD = py + lengthCap;
if (edgeL < 600 + 256) edgeL = 600 + 256; if (edgeR > room_width - 600 - 346) edgeR = room_width - 600 - 346 - 2;
if (edgeU < 400 + 256) edgeU = 410 + 256; if (edgeD > room_height - 400 - 346) edgeD = room_height - 400 - 346 - 2;
var flaming = instance_exists(obj_tank_move_flame);

//pick how many enemies to spawn
var _spawnNum = spawnNum;
spawnNum += count;
if (spawnNum > 3) spawnNum -= 3;
count += 1;
if (count > 3) count = 1;

//randomly pick 4 enemies to spawn
var seed = irandom_range(1, 3);
if (start) seed = 1;
if (seed == 1) {
	var enemy1 = obj_enemy_s;
	var enemy2 = obj_enemy_b;
	var enemy3 = obj_enemy_r;
} else if (seed == 2) {
	var enemy1 = obj_enemy_b;
	var enemy2 = obj_enemy_r;
	var enemy3 = obj_enemy_s;
} else if (seed == 3) {
	var enemy1 = obj_enemy_r;
	var enemy2 = obj_enemy_s;
	var enemy3 = obj_enemy_b;
}

//randomly decide where they will spawn
with (obj_tank_pilot) {
	var ddir; var lenx; var leny; var enemy; var lCap;
	//var spawn1; var spawn2; var spawn3; var spawn4;
	
	if (_spawnNum >= 1) {
		enemy = enemy1; lCap = lowCap;
			ddir = random(1) * 360;
			if (flaming && !critHp)
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
}

if (_spawnNum >= 2) {
	var pdis; var pdir;
	with (spawn1) {
		pdis = point_distance(x, y, spawn2.x, spawn2.y);
		if (pdis < 10) {
			pdir = point_direction(x, y, spawn2.x, spawn2.y);
			x += lengthdir_x(5, pdir);
			y += lengthdir_y(5, pdir);
			with (spawn2) {
				pdir += 180;
				x += lengthdir_x(5, pdir);
				y += lengthdir_y(5, pdir);
			}
		}
		if (_spawnNum >= 3) {
			pdis = point_distance(x, y, spawn3.x, spawn3.y);
			if (pdis < 10) {
				pdir = point_direction(x, y, spawn3.x, spawn3.y);
				x += lengthdir_x(5, pdir);
				y += lengthdir_y(5, pdir);
				with (spawn3) {
					pdir += 180;
					x += lengthdir_x(5, pdir);
					y += lengthdir_y(5, pdir);
				}
			}
		}
	}
	if (_spawnNum >= 3) {
		with (spawn2) {
			pdis = point_distance(x, y, spawn3.x, spawn3.y);
			if (pdis < 10) {
				pdir = point_direction(x, y, spawn3.x, spawn3.y);
				x += lengthdir_x(5, pdir);
				y += lengthdir_y(5, pdir);
				with (spawn3) {
					pdir += 180;
					x += lengthdir_x(5, pdir);
					y += lengthdir_y(5, pdir);
				}
			}
		}
	}
}

//spawn these enemies
if (_spawnNum >= 1) spawn1.enemy = enemy1;
if (_spawnNum >= 2) spawn2.enemy = enemy2;
if (_spawnNum >= 3) spawn3.enemy = enemy3;

if (start) exit;
//Less enemies means more enemies need to spawn in quicker
	 if (critHp) timeline_position = 580;
else if (enemies < spawnCap - 12) timeline_position = 550;
else if (enemies < spawnCap - 10) timeline_position = 500;
else if (enemies < spawnCap - 8) timeline_position = 450;
else if (enemies < spawnCap - 6) timeline_position = 400;
else if (enemies < spawnCap - 4) timeline_position = 350;
else if (enemies < spawnCap - 2) timeline_position = 300;
else if (enemies < spawnCap) timeline_position = 250;