with (particleMachine) {
	particleCount = 0;
	alarm_set(1, 1);
}

var target_exists = false;
target_exists = instance_exists(aimAt);
if(target_exists) {
	move_towards_point(target.x, target.y, finalSpeed);
	image_angle = direction;
} else {
	alarm_set(10, 20);
	with (particleMachine) instance_destroy();
	particleMachine = instance_create_layer(x, y, "Player", obj_particles_rocket_e);
	particleMachine.owner = id;
}