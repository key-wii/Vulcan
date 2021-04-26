 event_inherited();
owner = id;
hp = 10;
alarm_set(1, 1);
alarm_set(0, 1);
enum move {
	LEFT,
	RIGHT
}
distanceToPlayer = 0
var player_exists = false;
player_exists = instance_exists(obj_tank_pilot);
if(player_exists) distanceToPlayer = distance_to_object(obj_tank_pilot);
adjust_dir = random_range(-60, 60);
if (random_range(-1, 1) >= 0) {
	move = move.LEFT;
} else {
	move = move.RIGHT;
}