if (!instance_exists(obj_tank_pilot)) exit;
//spawn mom bomber at corner furthest from the player
var xxx = 1152; var yyy = 1152;
var dis1 = point_distance(obj_tank_pilot.x, obj_tank_pilot.y, xx + 1152, yy - 1152);
var dis2 = point_distance(obj_tank_pilot.x, obj_tank_pilot.y, xx - 1152, yy + 1152);
var dis3 = point_distance(obj_tank_pilot.x, obj_tank_pilot.y, xx + 1152, yy + 1152);
var dis4 = point_distance(obj_tank_pilot.x, obj_tank_pilot.y, xx - 1152, yy - 1152);
				dis = dis1;
if (dis < dis2) dis = dis2;
if (dis < dis3) dis = dis3;
if (dis < dis4) dis = dis4;
if (dis == dis2 || dis == dis4) xxx *= -1;
if (dis == dis1 || dis == dis3) yyy *= -1;
var spawn = instance_create_layer(xx + xxx, yy + yyy, "Enemy", obj_enemy_spawn_fast);
if (!instance_exists(obj_enemy_bomb_mom_largeradius)) spawn.enemy = obj_enemy_bomb_mom_largeradius;
else if (!instance_exists(obj_enemy_mage_big_circle) && instance_number(obj_enemy_parent) < 10) spawn.enemy = obj_enemy_mage_big_circle;
else instance_destroy(spawn);