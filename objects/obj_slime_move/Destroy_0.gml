if (!instance_exists(obj_tank_pilot)) exit;

var spawnDir = dAdjust;
var ddis = point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
if (ddis > spawnRadius)
	var ddir = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
else var ddir = point_direction(obj_tank_pilot.x, obj_tank_pilot.y, x, y);
var xx1 = lengthdir_x(spawnRadius, ddir + spawnDir);
var yy1 = lengthdir_y(spawnRadius, ddir + spawnDir);
var xx2 = lengthdir_x(spawnRadius, ddir - spawnDir);
var yy2 = lengthdir_y(spawnRadius, ddir - spawnDir);

var edgeL = 850; var edgeR = room_width - 950;
var edgeU = 700; var edgeD = room_height - 760;
xx1 += x; xx2 += x; yy1 += y; yy2 += y;
if (xx1 > edgeR) xx1 = edgeR; if (xx1 < edgeL) xx1 = edgeL;
if (yy1 > edgeD) yy1 = edgeD; if (yy1 < edgeU) yy1 = edgeU;
if (xx2 > edgeR) xx2 = edgeR; if (xx2 < edgeL) xx2 = edgeL;
if (yy2 > edgeD) yy2 = edgeD; if (yy2 < edgeU) yy2 = edgeU;

if (instance_exists(owner))
	with (owner) {
		if (childrenLeft == 0) exit;
		
		var slime1 = instance_create_layer(xx1, yy1, "Enemy", object_index);
		slime1.direction = direction;
		slime1.image_angle = direction;
		slime1.childrenLeft = childrenLeft - 1;
		with (slime1) {
			image_xscale -= .25 * (2 - childrenLeft);
			image_yscale -= .25 * (2 - childrenLeft);
			wheels.image_xscale = image_xscale;
			wheels.image_yscale = image_yscale;
			image_maxscale = image_xscale;
			if (childrenLeft == 1) maxHp = 10;
			else maxHp = 2;
			wheels.hp = maxHp;
			wheels.spd += 1 * (2 - childrenLeft);
			wheels.x_adjust = lengthdir_x(32, ddir + spawnDir);
			wheels.y_adjust = lengthdir_y(32, ddir + spawnDir);
		}
		var slime2 = instance_create_layer(xx2, yy2, "Enemy", object_index);
		slime2.direction = direction;
		slime1.image_angle = direction;
		slime2.childrenLeft = childrenLeft - 1;
		with (slime2) {
			image_xscale -= .25 * (2 - childrenLeft);
			image_yscale -= .25 * (2 - childrenLeft);
			wheels.image_xscale = image_xscale;
			wheels.image_yscale = image_yscale;
			image_maxscale = image_xscale;
			if (childrenLeft == 1) maxHp = 10;
			else maxHp = 2;
			wheels.hp = maxHp;
			wheels.spd += 1 * (2 - childrenLeft);
			wheels.x_adjust = lengthdir_x(32, ddir - spawnDir);
			wheels.y_adjust = lengthdir_y(32, ddir - spawnDir);
		}
		instance_destroy();
	}