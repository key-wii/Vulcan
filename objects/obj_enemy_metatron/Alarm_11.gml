if (phase == 9) exit;
if (laserCount < 360 || windup > 0 || laserWait > 0) {
	if (laserCount mod 2 == 0) {
		xxLaser = lengthdir_x(sprite_width / 2, direction);
		yyLaser = lengthdir_y(sprite_width / 2, direction);
		particleMachine = instance_create_layer(x + xxLaser, y + yyLaser, "Enemy_UI", obj_particles_laser_final_e);
		particleMachine.owner = id;
		particleMachine.direction = direction;
		with (particleMachine) {
			part_type_alpha3(PartLaser_e, .2, .2, .2);
			alarm_set(1, 1);
		}
	}
	if (laserWait > 0) laserWait--;
} else {
	if (laserCount mod 2 == 0 && flameCount == 0) {
		xxLaser = lengthdir_x(sprite_width / 2, direction);
		yyLaser = lengthdir_y(sprite_width / 2, direction);
		particleMachine = instance_create_layer(x + xxLaser, y + yyLaser, "Enemy_UI", obj_particles_laser_final_e);
		particleMachine.owner = id;
		particleMachine.direction = direction;
		with (particleMachine) {
			part_type_alpha3(PartLaser_e, .6, .6, .6);
			alarm_set(1, 1);
		}
	}
	if (!flaming) {
		var laser = instance_create_layer(x, y, "Enemy_Bullets_Front", obj_laser_e);
		laser.direction = direction;
		laser.owner = id;
		with (laser) {
			pow = 3;
			speed = 72;
			image_xscale = 5;
			image_yscale = 5;
			alarm_set(5, 10);
		}
	}
}
if (laserCount == 500) {
	maxWindup = 90;
	timeline_index = timeline_finalBoss_Fodder;
	timeline_loop = 0;
	timeline_position = 0;
	timeline_running = true;
	audio_play_sound(snd_shield_create, false, false);
}
if (damage >= 4000) {
	phase = 8;
}
laserCount++;
alarm_set(11, 1);