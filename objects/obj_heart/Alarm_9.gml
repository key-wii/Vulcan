/*var next = false;
if (instance_exists(obj_tank_pilot)) with (obj_tank_pilot) {
	cut_g -= .05;
	cut_b -= .05;
	if (cut_g == .4) next = true;
} if (next) alarm_set(8, 30);
else alarm_set(9, 1);*/
image_xscale += .25;
image_yscale += .25;
if (image_xscale >= 30) alarm_set(8, 1);
else alarm_set(9, 1)