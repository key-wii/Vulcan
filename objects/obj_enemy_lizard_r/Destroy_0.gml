owner.headsLeft--;
owner.killx[abs(2 - owner.headsLeft)] = x;
owner.killy[abs(2 - owner.headsLeft)] = y;
instance_destroy(wheels);

var corpse = instance_create_layer(x, y, "Floor", obj_enemy_corpse);
corpse.sprite_index = dead_sprite;
corpse.direction = direction;
corpse.image_angle = corpse.direction;
instance_destroy(blink);
if (hitting == true) {
	owner.flameKill[index] = true;
} else {
	owner.flameKill[index] = false;
}
var player_exists = instance_exists(obj_tank_pilot);
	if (player_exists)
		if (obj_tank_pilot.devilSwinging) {
			room_speed = 40;
			with (controller) alarm_set(5, 4);
			with (corpse)
				alarm_set(3, 7);
		} else if (chainKill) {
			room_speed = 50;
			with (controller) alarm_set(5, 4);
			with (corpse)
				alarm_set(3, 8);
		}
else obj_camera.cameraShake = screenShake;

if (!global.flameKills > 0) exit;
if (hitting == true) {
	if (instance_exists(controller))
	with (controller) {
		alarm_set(2, alarm_get(2) + 50);
		if (alarm_get(2) > 79) alarm_set(2, 79);
	}
if (instance_exists(obj_boss1_controller))
	with (obj_boss1_controller) {
		alarm_set(2, alarm_get(2) + 50);
		if (alarm_get(2) > 79) alarm_set(2, 79);
	}
} else {
	if (instance_exists(controller))
	with (controller) {
		alarm_set(2, alarm_get(2) + 25);
		if (alarm_get(2) > 79) alarm_set(2, 79);
	}
if (instance_exists(obj_boss1_controller))
	with (obj_boss1_controller) {
		alarm_set(2, alarm_get(2) + 25);
		if (alarm_get(2) > 79) alarm_set(2, 79);
	}
}