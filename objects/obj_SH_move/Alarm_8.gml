var player_exists = instance_exists(obj_tank_pilot);
if (!player_exists || broken_shield) exit;
var len = owner.sprite_width + owner.shield.sprite_width + obj_tank_pilot.sprite_width - 20;
if (obj_tank_pilot.x > room_width - 560 - 256 - len || obj_tank_pilot.y > room_height - 360 - 256 - len ||
	obj_tank_pilot.x < 480 + 256 + len || obj_tank_pilot.y < 280 + 256 + len) {
		if (x < 480 + 256 + len) x += spd;
		if (x > room_width - 560 - 256 - len) x -= spd;
		if (y < 280 + 256 + len) y += spd;
		if (y > room_height - 360 - 256 - len) y -= spd;
}