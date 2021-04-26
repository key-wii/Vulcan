if (!instance_exists(obj_tank_pilot)) exit;
if (instance_number(obj_enemy_parent) > 10) {
	timeline_position = 1500;
	exit;
}

var xxxx = 0; var yyyy = 0;
var dis1 = point_distance(obj_tank_pilot.x, obj_tank_pilot.y, xx - 1080, yy + 1080);
var dis2 = point_distance(obj_tank_pilot.x, obj_tank_pilot.y, xx + 1080, yy - 1080);
var dis3 = point_distance(obj_tank_pilot.x, obj_tank_pilot.y, xx + 1080, yy + 1080);
var dis4 = point_distance(obj_tank_pilot.x, obj_tank_pilot.y, xx - 1080, yy - 1080);
				dis = dis1;
if (dis < dis2) dis = dis2;
if (dis < dis3) dis = dis3;
if (dis < dis4) dis = dis4;
if (dis == dis1) { xxxx -= 1080; yyyy += 1080; }
if (dis == dis2) { xxxx += 1080; yyyy -= 1080; }
if (dis == dis3) { xxxx += 1080; yyyy += 1080; }
if (dis == dis4) { xxxx -= 1080; yyyy -= 1080; }
if (instance_number(obj_enemy_slime_dizzy) < 2) {
	var spawn1 = instance_create_layer(xx + xxxx, yy + yyyy, "Enemy", obj_enemy_spawn);
	spawn1.enemy = obj_enemy_slime_dizzy;
} else timeline_position = 1000;

xxxx = 0; yyyy = 0;
if (dis == dis1) { xxxx += 1080; yyyy -= 1080; }
if (dis == dis2) { xxxx -= 1080; yyyy += 1080; }
if (dis == dis3) { xxxx -= 1080; yyyy -= 1080; }
if (dis == dis4) { xxxx += 1080; yyyy += 1080; }
if (instance_number(obj_enemy_slime_dizzy) < 1) {
	var spawn2 = instance_create_layer(xx + xxxx, yy + yyyy, "Enemy", obj_enemy_spawn);
	spawn2.enemy = obj_enemy_slime_dizzy;
} else timeline_position = 1000;