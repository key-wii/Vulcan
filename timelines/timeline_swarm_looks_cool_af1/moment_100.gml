var player_exists = instance_exists(obj_tank_pilot)
if (!player_exists) exit;
enemies = instance_number(obj_enemy_parent);
if (enemies >= 16) exit;
var px = obj_tank_pilot.x;
var py = obj_tank_pilot.y;
var flaming = instance_exists(obj_tank_move_flame);
var edgeL = px - 1500;
var edgeR = px + 1500;
var edgeU = py - 1050;
var edgeD = py + 1050;
if (edgeL < 600) edgeL = 600;
if (edgeR > room_width - 600) edgeR = room_width - 600;
if (edgeU < 400) edgeU = 600;
if (edgeD > room_height - 400) edgeD = room_height - 400;
with (obj_tank_pilot) {
	var ddir; var lenx; var leny;
	
	    ddir = random(1) * 360;
	    lenx = irandom_range(-1500, 1500);     leny = irandom_range(-1050, 1050);
	lenx = lengthdir_x(lenx, ddir); leny = lengthdir_y(leny, ddir);
	lenx += px; leny += py;
	if (lenx > edgeR) lenx = edgeR; if (lenx < edgeL) lenx = edgeL;
	if (leny > edgeD) leny = edgeD; if (leny < edgeU) leny = edgeU;
	var spawn1 = instance_create_layer(lenx, leny, "Enemy", obj_enemy_spawn);
	
	    ddir = random(1) * 360;
	    lenx = irandom_range(-1500, 1500);     leny = irandom_range(-1050, 1050);
	lenx = lengthdir_x(lenx, ddir); leny = lengthdir_y(leny, ddir);
	lenx += px; leny += py;
	if (lenx > edgeR) lenx = edgeR; if (lenx < edgeL) lenx = edgeL;
	if (leny > edgeD) leny = edgeD; if (leny < edgeU) leny = edgeU;
	var spawn2 = instance_create_layer(lenx, leny, "Enemy", obj_enemy_spawn);
	
	    ddir = random(1) * 360;
	    lenx = irandom_range(-1500, 1500);     leny = irandom_range(-1050, 1050);
	lenx = lengthdir_x(lenx, ddir); leny = lengthdir_y(leny, ddir);
	lenx += px; leny += py;
	if (lenx > edgeR) lenx = edgeR; if (lenx < edgeL) lenx = edgeL;
	if (leny > edgeD) leny = edgeD; if (leny < edgeU) leny = edgeU;
	var spawn3 = instance_create_layer(lenx, leny, "Enemy", obj_enemy_spawn);
	
	    ddir = random(1) * 360;
	    lenx = irandom_range(-1500, 1500);     leny = irandom_range(-1050, 1050);
	lenx = lengthdir_x(lenx, ddir); leny = lengthdir_y(leny, ddir);
	lenx += px; leny += py;
	if (lenx > edgeR) lenx = edgeR; if (lenx < edgeL) lenx = edgeL;
	if (leny > edgeD) leny = edgeD; if (leny < edgeU) leny = edgeU;
	var spawn4 = instance_create_layer(lenx, leny, "Enemy", obj_enemy_spawn);
}

var seed = irandom_range(0, 10);
if (seed == 1) {
	spawn1.enemy = obj_enemy_s;
	spawn2.enemy = obj_enemy_s;
	if (!instance_exists(obj_enemy_candler_big))
		spawn3.enemy = obj_enemy_candler_big;
	else spawn3.enemy = obj_enemy_candler;
	spawn4.enemy = obj_enemy_s;
} else if (seed == 2) {
	spawn1.enemy = obj_enemy_s;
	spawn2.enemy = obj_enemy_b;
	spawn3.enemy = obj_enemy_b;
	spawn4.enemy = obj_enemy_s;
} else if (seed == 3) {
	spawn1.enemy = obj_enemy_r;
	spawn2.enemy = obj_enemy_s;
	spawn3.enemy = obj_enemy_s;
	spawn4.enemy = obj_enemy_r;
} else if (seed == 4) {
	spawn1.enemy = obj_enemy_s_viper;
	spawn2.enemy = obj_enemy_s_viper;
	spawn3.enemy = obj_enemy_s_viper;
	spawn4.enemy = obj_enemy_s_viper;
} else if (seed == 5) {
	spawn1.enemy = obj_enemy_s_quickshot;
	spawn2.enemy = obj_enemy_candler;
	spawn3.enemy = obj_enemy_candler;
	spawn4.enemy = obj_enemy_s_quickshot;
} else if (seed == 6) {
	spawn1.enemy = obj_enemy_s_armor_big;
	spawn2.enemy = obj_enemy_s_armor_big;
	spawn3.enemy = obj_enemy_s_armor_big;
	spawn4.enemy = obj_enemy_s_armor_big;
} else if (seed == 7) {
	spawn1.enemy = obj_enemy_s_3round;
	spawn2.enemy = obj_enemy_s_3round;
	spawn3.enemy = obj_enemy_s_3round;
	spawn4.enemy = obj_enemy_s_3round;
} else if (seed == 8) {
	spawn1.enemy = obj_enemy_s;
	spawn2.enemy = obj_enemy_s_viper;
	spawn3.enemy = obj_enemy_s;
	spawn4.enemy = obj_enemy_s_viper;
} else if (seed == 9) {
	spawn1.enemy = obj_enemy_s_viper;
	spawn2.enemy = obj_enemy_s;
	spawn3.enemy = obj_enemy_flamer;
	spawn4.enemy = obj_enemy_s;
} else if (seed == 10) {
	spawn1.enemy = obj_enemy_candler;
	spawn2.enemy = obj_enemy_s_viper;
	spawn3.enemy = obj_enemy_candler;
	spawn4.enemy = obj_enemy_s_armor_big;
} else {
	spawn1.enemy = obj_enemy_s_armor_big;
	spawn2.enemy = obj_enemy_s_3round;
	spawn3.enemy = obj_enemy_s_quickshot;
	spawn4.enemy = obj_enemy_s_viper;
}

     if (enemies < 4) timeline_position = 550;
else if (enemies < 6) timeline_position = 500;
else if (enemies < 8) timeline_position = 450;
else if (enemies < 10) timeline_position = 400;
else if (enemies < 12) timeline_position = 350;
else if (enemies < 14) timeline_position = 300;
else if (enemies < 16) timeline_position = 250;