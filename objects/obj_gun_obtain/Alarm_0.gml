alarm_set(0, 2);
image_xscale -= .05;
if (image_xscale < -2) image_xscale -= .6;
if (image_yscale == 0 && reverse == false) {
	image_yscale += .05;
	reverse = true
} else if (image_yscale > 0 && reverse == false) image_yscale -= .05;
else if (reverse == true && image_yscale < 1) image_yscale += .05;
else if (reverse == true && image_yscale >= 1) image_yscale += .03;