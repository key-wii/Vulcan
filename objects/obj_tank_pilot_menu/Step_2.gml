if (!flaming && !flame_end && !grenading && shoot_rotate == 0) {
	var ex, ey;
	ex = mouse_x;
	ey = mouse_y;
	direction = point_direction(x, y, ex, ey);
}
if (grenading == true) {
	if (flame_dir > 0) direction += 30;
	if (flame_dir < 0) direction -= 30;
}
if (shoot_rotate > 0) {
	var rot = 18;
	if (flame_dir > 0) direction += rot;
	if (flame_dir < 0) direction -= rot;
	shoot_rotate -= 1;
}
image_angle = direction;
if (image_angle mod 2 == 1) image_angle += 1;

var shrink;
with (controller) shrink = alarm_get(2)
if (shrink > 0 && shrink < 3) shrink = -25;
image_xscale = 1 - shrink / 300;
image_yscale = 1 - shrink / 300;

if (grenadeCharge > grenadeFullCharge && !flaming) {
	//sprite_index = spPlayerTank_grenade;
	image_speed = 2;
}
if (grenadeCharge >= grenadeFullCharge - 1 && !flaming) {
	if (!instance_exists(particleMachine))
		particleMachine = instance_create_layer(x, y, "Enemy_Bullets", obj_particles_charged);
	if (instance_exists(particleMachine))
		if (particleMachine.emitting == false)
			with (particleMachine) alarm_set(1, 1);
}
if (devilSwingCharge > devilSwingFullCharge &&
	flaming && devil_trigger >= 200) {
		//sprite_index = spPlayerTankFl_charged;
		image_speed = 2;
}
if (devilSwingCharge >= devilSwingFullCharge - 1 &&
	flaming && devil_trigger >= 199) {
		if (!instance_exists(particleMachine))
			particleMachine = instance_create_layer(x, y, "Enemy_Bullets", obj_particles_charged);
		if (instance_exists(particleMachine))
			if (particleMachine.emitting == false)
				with (particleMachine) alarm_set(1, 1);
}

clicked_ui = false;