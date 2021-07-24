/*var next = false;
if (instance_exists(obj_tank_pilot)) with (obj_tank_pilot) {
	cut_g += .05;
	cut_b += .05;
	if (cut_g == 1) next = true;
} if (next) alarm_set(5, 30);
else alarm_set(8, 1);*/
image_xscale += 1;
image_yscale += 1;
image_alpha -= .1;
if (image_alpha == 0) alarm_set(5, 1);
else alarm_set(8, 1);