image_speed = .7;
image_index = 0;
image_xscale = 2;
image_yscale = 2;
image_alpha = .4;
chain = false;

alreadyHit = 0;
pow = 10;
counter = false;

if (variable_instance_exists(id, "last_object")) {
	if (last_object == obj_grenade_g2) {
		if (speed < 10 && speed >= 0) speed = 10; 
		if (speed > -10 && speed < 0) speed = -10; 
	}
}

alarm_set(0, 1);