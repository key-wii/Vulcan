if(burnt > 0) {
	image_blend = $FF00A1FF & $ffffff;
	image_alpha = ($FF00A1FF >> 24) / $ff;
}
if(burnt < 1) {
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;
}
if(burnt > 0) {
	burnt += -1;
	alarm_set(10, 20);
}
if (hit_count > 0) {
	hit_count--;
}
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