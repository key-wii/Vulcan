global.kills++;
var corpse = instance_create_layer(x, y, "Floor", obj_enemy_corpse);
corpse.sprite_index = dead_sprite;
corpse.direction = direction;
corpse.image_angle = corpse.direction;
instance_destroy(blink);
if (hitting == true) {
	with (controller) kills++;
	global.flameKills += 1;
	global.flameWaveKills += 1;
	//End current wave if combo is big enough
	if (global.flameWaveKills == global.waveEndCombo)
		with (obj_spawner) {
			global.flameWaveKills = 0;
			alarm_set(1, 1);
			alarm_set(9, 1);
			alarm_set(10, 100);
		}
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