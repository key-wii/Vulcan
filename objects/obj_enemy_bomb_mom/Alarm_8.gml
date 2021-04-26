//Die if health hits 0
if ((damage + 1) > maxHp) {
	instance_destroy();
} else {
	hitting = false;
}

//Point at player
var player_exists = false;
player_exists = instance_exists(obj_tank_pilot);
if (player_exists) direction = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);

event_inherited();

if (burnt > 0) {
	if (alarm_get(11) > 1 || alarm_get(11) < 1) alarm_set(11, 1);
	burnt += -2;
}
if (burnt < 0) {
	burnt = 0;
	alarm_set(1, 15);
	alarm_set(10, 20);
}

alarm_set(8, 2);