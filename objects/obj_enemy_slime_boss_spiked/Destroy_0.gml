//Subtracted by 9 * image_xscale because of empty pixels to the left of sprite
var xx = lengthdir_x((sprite_width) - (18 * image_xscale), direction + 180);
var yy = lengthdir_y((sprite_width) - (18 * image_xscale), direction + 180);
var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_e);
bull.direction = direction + 180;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_b_;
bull.image_xscale = image_xscale + .75;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);
	xx = lengthdir_x((sprite_width) - (4 * image_xscale), direction + 210);
	yy = lengthdir_y((sprite_width) - (4 * image_xscale), direction + 210);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_e);
bull.direction = direction + 210;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_b_;
bull.image_xscale = image_xscale + .75;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);
	xx = lengthdir_x((sprite_width) - (4 * image_xscale), direction - 210);
	yy = lengthdir_y((sprite_width) - (4 * image_xscale), direction - 210);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_e);
bull.direction = direction - 210;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_b_;
bull.image_xscale = image_xscale + .75;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);
	xx = lengthdir_x((sprite_width) - (6 * image_xscale), direction + 240);
	yy = lengthdir_y((sprite_width) - (6 * image_xscale), direction + 240);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_e);
bull.direction = direction + 240;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_b_;
bull.image_xscale = image_xscale + .75;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);
	xx = lengthdir_x((sprite_width) - (6 * image_xscale), direction - 240);
	yy = lengthdir_y((sprite_width) - (6 * image_xscale), direction - 240);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_e);
bull.direction = direction - 240;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_b_;
bull.image_xscale = image_xscale + .75;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);
	xx = lengthdir_x((sprite_width) - (5 * image_xscale), direction);
	yy = lengthdir_y((sprite_width) - (5 * image_xscale), direction);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_e);
bull.direction = direction;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_g_;
bull.image_xscale = image_xscale + .75;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);


with (particleMachine) owner = id;
instance_destroy(wheels);
if (childrenLeft == 0 && damage >= maxHp) {
	global.kills++;
	expl = instance_create_layer(x, y, "Enemy", obj_explosion_large);
}
else audio_play_sound(snd_not_dead, 0, 0);

var corpse = instance_create_layer(x, y, "Floor", obj_enemy_corpse);
corpse.sprite_index = dead_sprite;
corpse.direction = direction;
corpse.image_angle = corpse.direction;
instance_destroy(blink);

if (childrenLeft == 0) {
	if (instance_number(obj_enemy_slime_boss_spiked) == 1) {
	if (global.level == 9) {
		with (obj_spawner) alarm_set(6, 1);
		ds_list_add(global.minibossesBeat, 4);
	} else with (obj_spawner) {
			timeline_index = timelineSpkd_wave_wait2;
			timeline_loop = false;
			timeline_position = 0;
			timeline_running = true;
		}
	}
	if (hitting == true && !just_exploded) {
		var controller_exists = instance_exists(controller);
		if (controller_exists) with (controller) kills++;
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