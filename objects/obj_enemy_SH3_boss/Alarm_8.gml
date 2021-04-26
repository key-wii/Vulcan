//Die if health hits 0
if ((damage + 1) > maxHp) {
	instance_destroy();
} else {
	hitting = false;
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
if(burnt > 0) {
	burnt += -2;
	if (burnt <= 0) {
		shield.rot_spd = rot_spd;
		if (shield != id) with (shield) {
			rot_dir *= -1;
			direction += rot_spd * 2 * rot_dir;
		}
	}
}
if (hit_count > 0) hit_count--;
if (x != prev_x || y != prev_y) {
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
}

//Point at player
var player_exists = false;
player_exists = instance_exists(obj_tank_pilot);
if (player_exists) direction = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);

if (burnt > 0) {
	image_blend = $FF00A1FF & $ffffff;
	image_alpha = ($FF00A1FF >> 24) / $ff;
}
if (burnt < 1) {
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;
}

if (burnt < 0) {
	burnt = 0;
}
if (hit_count > 0) {
	hit_count--;
}

/*var dmg = damage;
var hp = maxHp;
if (dmg > hp / 2) rot_spd = 16;
else if (dmg > hp / 4) rot_spd = 14;
else if (dmg > hp / 8) rot_spd = 12;
else if (dmg > hp / 16) rot_spd = 10;
if (burnt > 0) shield.rot_spd = rot_spd / 2;*/

alarm_set(8, 1);