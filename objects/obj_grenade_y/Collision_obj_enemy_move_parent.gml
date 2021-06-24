if (other.object_index == obj_menu_char_move) {
	with (other.owner) {
		spin = 372;
		charCount = 0;
		sprite_index = dead_sprite;
		alarm_set(9, 10);
	}
	speed = 1;
	last_object = object_index;
	instance_change(obj_explosion_grenade, true);
	image_speed = .6;
	exit;
}
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
	if (instance_exists(owner)) {
		owner.burnt += 10;
		owner.x_adjust = lengthdir_x(8, point_direction(other.x, other.y, x, y));
		owner.y_adjust = lengthdir_y(8, point_direction(other.x, other.y, x, y));
	}
}
last_object = object_index;
instance_change(obj_explosion_grenade, true);
image_speed = .6;
speed = 1;