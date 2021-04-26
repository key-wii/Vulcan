//Die if health hits 0
if ((damage + 1) > maxHp) {
	instance_destroy();
} else {
	hitting = false;
}

var player_exists = instance_exists(obj_tank_pilot);
if (flaming) {
	//Spin
	if (windup == 0) {
		flameCount = 0;
		flame = instance_create_layer(x, y, "Enemy", obj_flame_finalBoss_e);
		flame.owner = id;
		shot_rot = 0;
	}
	if (windup >= 0) {
		direction -= spinSpd * windup / maxWindup;
		windup -= 1;
	} else {
		flameCount++;
		direction += spinSpd;
		audio_play_sound(snd_flame, 0, 0);
	}
} else if (phase == 5) {
	if (windup > 0) {
		direction -= spinSpd * windup / maxWindup;
		windup -= 1;
	} else {
			 if (damage > 2500) { phase = 6; alarm_set(7, 0); alarm_set(10, 10); }
		else if (damage > 2200) rSpd = 3;
		else if (damage > 2000) rSpd = 2.666;
		else if (damage > 1800) rSpd = 2.333;
		else if (damage > 1600) rSpd = 2;
		else if (damage > 1400) rSpd = 1.666;
		else if (damage > 1200) rSpd = 1.333;
		else rSpd = 1;
		if (burnt > 0) {
				 if (burnt > 80) direction += 4 * rSpd;
			else if (burnt > 50) direction += 3 * rSpd;
			else if (burnt > 40) direction += 2 * rSpd;
			else if (burnt > 20) direction += 3 * rSpd;
			else				 direction += 4 * rSpd;
		}  else					 direction += rSpd;
	}
} else if (shot_rot > 0) {
	var rot = clamp(shot_rot / 12, 10, 30);
	direction += rot;
	shot_rot -= rot;
} else if (phase == 3 && burnt <= 0 && alarm_get(2) <= 0) {
	direction -= spinSpd;
} else if (phase == 6) {
	//Point at player (slow)
	if (player_exists) {
		var dir_old = direction;
		if (flash2) var ro_spd = 0;
		else var ro_spd = .9;
		var ddir = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
			 if (direction - ddir > 150 || direction - ddir < -150) ro_spd = 2.5;
		else if (direction - ddir > 120 || direction - ddir < -120) ro_spd = 2;
		else if (direction - ddir > 90 || direction - ddir < -90)	ro_spd = 1.5;
		else if (direction - ddir > 60 || direction - ddir < -60)	ro_spd = 1.25;
		else if (direction - ddir > 30 || direction - ddir < -30)	ro_spd = 1;
		
		move_towards_point(obj_tank_pilot.x, obj_tank_pilot.y, 0);
		var a_dif = angle_difference(direction, dir_old);
		direction = dir_old;
		direction += median(-ro_spd, a_dif, ro_spd);
	}
} else if (phase == 7 || phase == 8) {
	direction += 1;
} else if (phase == 9) {
	//Point at player-ish
	if (player_exists) direction = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y) + dirAdj;
} else if (flame == id && shield == id) {
	//Point at player
	if (player_exists) direction = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
}

if (damage >= 1000 && phase <= 4 && !flaming && flameBullUR && flameBullUL && flameBullDL && flameBullDR) {
	phase = 5;
	flameCount = 0;
	windup = maxWindup;
	alarm_set(7, maxWindup);
	alarm_set(5, 0);
	if (global.checkpoint == 5) global.checkpoint = 6;
}
if ((phase == 3 || phase == 4) && !flaming && burnt > 0 && alarm_get(2) <= 0) alarm_set(2, 20);
else if (!flaming && burnt > 70 && alarm_get(2) <= 0) {
	if (phase == 8) alarm_set(2, 50);
	if (phase == 9) alarm_set(2, 100);
}
else if ((phase == 4) && !flaming) {
	if (burnt <= 0 && player_exists && alarm_get(5) <= 0) {
		var ddis = point_distance(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
			if (ddis >= sprite_width / 2 + 550) alarm_set(5, 70);
		else if (ddis < sprite_width / 2 + 550) alarm_set(5, 60);
		else if (ddis < sprite_width / 2 + 500) alarm_set(5, 50);
		else if (ddis < sprite_width / 2 + 475) alarm_set(5, 45);
		else if (ddis < sprite_width / 2 + 450) alarm_set(5, 40);
		else if (ddis < sprite_width / 2 + 425) alarm_set(5, 35);
		else if (ddis < sprite_width / 2 + 400) alarm_set(5, 30);
		else if (ddis < sprite_width / 2 + 375) alarm_set(5, 25);
		else if (ddis < sprite_width / 2 + 350) alarm_set(5, 20);
		else if (ddis < sprite_width / 2 + 325) alarm_set(5, 15);
		else if (ddis < sprite_width / 2 + 300) alarm_set(5, 10);
		else if (ddis < sprite_width / 2 + 275) alarm_set(5, 5);
		else if (ddis < sprite_width / 2 + 250) alarm_set(5, 2);
	}
}
else if (phase == 8) {
	if (instance_number(obj_enemy_parent <= 3) && timeline_position < 8500) {
		if (timeline_position mod 50 == 0 && timeline_position mod 100 != 0) timeline_position += 49;
		else if (timeline_position mod 10 == 0 && timeline_position mod 100 != 0) timeline_position += 9;
	}
	if (damage > 8000 && timeline_position < 8499) timeline_position = 8499;
	else if (damage >= 9000) phase = 9;
}
else if (phase == 9) {
	if (timeline_index != timeline_finalBoss_Fodder || timeline_position < 8501) {
		timeline_index = timeline_finalBoss_Fodder;
		timeline_loop = 0;
		timeline_position = 8501;
		timeline_running = true;
	}
	if (wheels.spd == 0) {
		wheels.spd = 14;
		with (wheels) {
			alarm_set(0, 1);
			alarm_set(7, 1);
		}
	}
	if (global.checkpoint != 7) global.checkpoint = 7;
	if (dirUp) {
		if (dirAdj < 60) dirAdj += 1;
		else dirUp = false;
	} else {
		if (dirAdj > -60) dirAdj -= 1;
		else dirUp = true;
	}
}

if (phase >= 3) {
	if (flameCount >= 315) {
		flameCount = 0;
		if (windup >= 0) windup = 0;
		flaming = false;
		spinSpd = -12;
		if (phase == 8) { laserWait = 70; alarm_set(11, 1); }
		else alarm_set(5, 70);
	} else if (flameCount >= 310) {
		if (flame != id) instance_destroy(flame);
		flame = id;
	} else if (flameCount >= 300) {
		spinSpd = -1;
	} else if (flameCount >= 280) {
		spinSpd = -10;
	} else if (flameCount >= 260) {
		spinSpd = -11;
	}
}

if (flash2 && flashCount mod 8 < 4) var flash = true;
else if (flash1 && flashCount mod 40 < 20) var flash = true;
else var flash = false;
if (burnt > 0 && !flash) {
	image_blend = $FF00A1FF & $ffffff;
	image_alpha = ($FF00A1FF >> 24) / $ff;
} else if (flash) {
	image_blend = $FF0000FF & $ffffff;
	image_alpha = ($FF0000FF >> 24) / $ff;
} else {
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;
}
if (flash1 || flash2) flashCount++;

if (burnt > 0) {
	burnt += -2.5;
}
if (burnt < 0) {
	burnt = 0;
}
if (hit_count > 0) {
	hit_count--;
}

/*if (x != prev_x || y != prev_y) {
	if (image_xscale < image_maxscale + .1 && stretch == true) {
		image_xscale += .02;
	} else if (stretch == true) {
		stretch = false;
	}
	if (image_xscale > image_maxscale - .1 && stretch == false) {
		image_xscale -= .02;
	} else if (stretch == false) {
		stretch = true;
	}
} else {
	if (image_xscale < image_maxscale) image_xscale += .01;
	if (image_xscale > image_maxscale) image_xscale -= .01;
}*/

alarm_set(8, 1);