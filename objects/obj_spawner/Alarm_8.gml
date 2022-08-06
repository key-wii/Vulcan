var player_exists = instance_exists(obj_tank_pilot)
if (!player_exists) exit;
var enemies = instance_number(obj_spawnerandenemyparent_parent);
if (enemies >= 80) exit;
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

//randomly pick 4 enemies to spawn
var seed = irandom_range(1, 9);
	 if ((seed == 1 || seed == 6) && instance_number(obj_enemy_killer_s) < 1)
	var enemy = obj_enemy_killer_s;
else if ((seed == 2 || seed == 7) && instance_number(obj_enemy_killer_b) < 1)
	var enemy = obj_enemy_killer_b;
else if ((seed == 3 || seed == 8) && instance_number(obj_enemy_killer_r) < 1)
	var enemy = obj_enemy_killer_r;
else if ((seed == 4) && instance_number(obj_enemy_laser) < 1)
	var enemy = obj_enemy_laser;
else if ((seed == 5) && instance_number(obj_enemy_laser_circle) < 3)
	var enemy = obj_enemy_laser_circle;
else if (global.wave >= 26 && global.wave <= 29) {
		 if ((seed == 1 || seed == 6) && instance_number(obj_enemy_killer_s) < 3)
		var enemy = obj_enemy_killer_s;
	else if ((seed == 2 || seed == 7) && instance_number(obj_enemy_killer_b) < 3)
		var enemy = obj_enemy_killer_b;
	else if ((seed == 3 || seed == 8) && instance_number(obj_enemy_killer_r) < 3)
		var enemy = obj_enemy_killer_r;
	else { alarm_set(8, 1); exit; }
} else exit;

var spawner = obj_enemy_spawn;
//randomly decide where they will spawn
with (obj_tank_pilot) {
	var ddir = random(1) * 360;
	if (flaming)
		if (ddir > -22.5 && ddir < 22.5  ||
			ddir > 67.5 && ddir < 112.5  ||
			ddir > 157.5 && ddir < 202.5 ||
			ddir > 247.5 && ddir < 292.5) ddir += 45;
	if (enemy == obj_enemy_laser || enemy == obj_enemy_laser_circle) lowCap += 300;
	var lenx = irandom_range(lowCap, widthCap);     var leny = irandom_range(lowCap, lengthCap);
		lenx = lengthdir_x(lenx, ddir);				  leny = lengthdir_y(leny, ddir);
		lenx += px;									  leny += py;
	if (lenx > edgeR) lenx = edgeR; if (lenx < edgeL) lenx = edgeL;
	if (leny > edgeD) leny = edgeD; if (leny < edgeU) leny = edgeU;
	var spawn = instance_create_layer(lenx, leny, "Enemy", spawner);
	spawn.enemy = enemy;
}