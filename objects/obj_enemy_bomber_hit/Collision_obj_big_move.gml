if (spinning && other.object_index == obj_bomber_move) exit;
if (global.flameKills > 0) {
	var controller_exists = instance_exists(controller);
	if (controller_exists)
		with (controller) {
			alarm_set(2, alarm_get(2) + 30);
			if (alarm_get(2) > 79) alarm_set(2, 79);
		}
	var boss_controller_exists = instance_exists(obj_boss1_controller);
	if (boss_controller_exists)
		with (obj_boss1_controller) {
			alarm_set(2, alarm_get(2) + 30);
			if (alarm_get(2) > 79) alarm_set(2, 79);
		}
}

with(other) {
	owner.burnt += 10;
	owner.x_adjust = lengthdir_x(8, point_direction(other.x, other.y, x, y));
	owner.y_adjust = lengthdir_y(8, point_direction(other.x, other.y, x, y));
}
instance_change(obj_explosion_grenade, true);
image_xscale = 1;
image_yscale = 1;
speed = 5;