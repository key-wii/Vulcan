count++;
var player_exists = instance_exists(obj_tank_pilot);
if (player_exists) {
	if ((100 - obj_tank_pilot.damage) > life) alarm_set(1, 1);
}
alarm_set(0, 1);