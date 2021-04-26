//Subtracted by 9 * image_xscale because of empty pixels to the left of sprite
var xx = lengthdir_x((sprite_width) - (9 * image_xscale), direction + 180);
var yy = lengthdir_y((sprite_width) - (9 * image_xscale), direction + 180);
var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_e);
bull.direction = direction + 180;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_g_;
with (bull) alarm_set(0, 500);

with (particleMachine) owner = id;
instance_destroy(wheels);
if (childrenLeft == 0 && damage >= maxHp)
	expl = instance_create_layer(x, y, "Enemy", obj_explosion_large);
else audio_play_sound(snd_not_dead, 0, 0);

var corpse = instance_create_layer(x, y, "Floor", obj_enemy_corpse);
corpse.sprite_index = dead_sprite;
corpse.direction = direction;
corpse.image_angle = corpse.direction;
instance_destroy(blink);

if (childrenLeft == 0) {
	if (hitting == true) {
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
} else {
	if (global.flameKills > 0) {
		var controller_exists = instance_exists(controller);
		if (controller_exists)
			with (controller) {
				alarm_set(2, alarm_get(2) + 40);
				if (alarm_get(2) > 79) alarm_set(2, 79);
			}
		var boss_controller_exists = instance_exists(obj_boss1_controller);
		if (boss_controller_exists)
			with (obj_boss1_controller) {
				alarm_set(2, alarm_get(2) + 40);
				if (alarm_get(2) > 79) alarm_set(2, 79);
			}
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