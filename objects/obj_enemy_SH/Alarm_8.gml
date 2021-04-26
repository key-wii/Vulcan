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
	burnt += -1;
	alarm_set(10, 20);
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

/*tank_exists = instance_number(obj_tank_pilot);
if (tank_exists > 0) {
	direction = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
}*/