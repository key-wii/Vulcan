instance_destroy(flame);
instance_destroy(wheels);
expl = instance_create_layer(x, y, "Enemy", obj_explosion_emitter_miniboss2);
expl.direction = direction;
expl.splitMore = 3;

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


if (global.level == 9) {
	with (obj_spawner) {
		alarm_set(6, 1);
		global.boss_just_killed = true;
		alarm_set(5, 180);
	}
	with (obj_enemy_fly_move_parent) leave = true;
} else {
	global.boss_just_killed = false;
	with (obj_spawner) {
		timeline_index = timelineSpkd_beatBoss;
		timeline_loop = false;
		timeline_position = 0;
		timeline_running = true;
		alarm_set(4, 360);
	}
	var heart = instance_create_layer(x, y, "Enemy", obj_heart);
	heart.upgrade = 5;
}

//Subtracted by 9 * image_xscale because of empty pixels to the left of sprite
var ddir = direction + 180;
var xx = lengthdir_x((sprite_width), ddir);
var yy = lengthdir_y((sprite_width), ddir);
var bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_b_;
bull.image_xscale = 2;
bull.image_yscale = 2;
with (bull) alarm_set(0, 500);

	ddir = direction + 195;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_g_;
bull.image_xscale = 2;
bull.image_yscale = 2;
with (bull) alarm_set(0, 500);

	ddir = direction - 195;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_b_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);

	ddir = direction + 210;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_g_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);

	ddir = direction - 210;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_b_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);

	ddir = direction + 225;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_g_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);

	ddir = direction - 225;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_b_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);

	ddir = direction + 240;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_g_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);

	ddir = direction - 240;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_b_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);

	ddir = direction + 255;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_g_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);

	ddir = direction - 255;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_b_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);

	ddir = direction + 270;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_g_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);

	ddir = direction - 270;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_b_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);

	ddir = direction + 285;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_g_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);

	ddir = direction - 285;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_b_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);

	ddir = direction + 300;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_g_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);

	ddir = direction - 300;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_b_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);

	ddir = direction + 315;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_g_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);

	ddir = direction - 315;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_b_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);

	ddir = direction + 330;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_g_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);

	ddir = direction - 330;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_b_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);

	ddir = direction + 345;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_g_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);

	ddir = direction - 345;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_rocket_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_b_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);

	ddir = direction;
	xx = lengthdir_x((sprite_width), ddir);
	yy = lengthdir_y((sprite_width), ddir);
	bull = instance_create_layer(x + xx, y + yy, "Enemy_Bullets", obj_bouncer_e);
bull.direction = ddir;
bull.image_angle = bull.direction;
bull.speed = 10;
bull.sprite_index = spr_bull_g_;
bull.image_xscale = 2;
bull.image_yscale = image_yscale + .75;
with (bull) alarm_set(0, 500);