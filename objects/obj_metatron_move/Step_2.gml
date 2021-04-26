event_inherited();
var player_exists = instance_exists(obj_tank_pilot);
if (!player_exists || broken_shield) exit;
var len = owner.sprite_width + owner.shield.sprite_width + obj_tank_pilot.sprite_width - 20;
if (room == room0) {
	if (x < 360 + 256 + len) {
		x += spd;
		if (alarm_get(8) < 1) alarm_set(8, 1);
	}
	if (y < 160 + 256 + len) {
		y += spd;
		if (alarm_get(8) < 1) alarm_set(8, 1);
	}
	if (x > room_width - 440 - 256 - len) {
		x -= spd;
		if (alarm_get(8) < 1) alarm_set(8, 1);
	}
	if (y > room_height - 250 - 256 - len) {
		y -= spd;
		if (alarm_get(8) < 1) alarm_set(8, 1);
	}
}