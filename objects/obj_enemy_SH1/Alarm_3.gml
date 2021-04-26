if (!instance_exists(obj_tank_pilot) || shield == id || !instance_exists(wheels)) exit;
with (wheels) x += 99999;
var nearSH = instance_nearest(x, y, obj_SH_move);
with (wheels) x -= 99999;
if (!instance_exists(nearSH.owner)) exit;
if (nearSH == wheels) {
	alarm_set(3, 20);
	exit;
}
nearSH = nearSH.owner;
var dis1 = point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
var dis2 = point_distance(nearSH.x, nearSH.y, obj_tank_pilot.x, obj_tank_pilot.y);
if (nearSH.shield != nearSH.id && (dis1 < dis2 || nearSH.object_index != obj_enemy_SH1) && !nearSH.flash1 && point_distance(x, y, nearSH.x, nearSH.y) < 1500) {
	flash1 = true;
	wheels.spd += 1;
	alarm_set(4, 160);
} else alarm_set(3, 2);