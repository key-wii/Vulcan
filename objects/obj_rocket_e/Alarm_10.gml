with (particleMachine) {
	particleCount = 0;
	alarm_set(1, 1);
}

var player_exists = false;
player_exists = instance_exists(obj_tank_pilot);
if(player_exists) {
	target = instance_nearest(x, y, obj_tank_pilot);
	move_towards_point(target.x, target.y, finalSpeed);
	image_angle = direction;
} else {
	alarm_set(10, 20);
	with (particleMachine) instance_destroy();
	particleMachine = instance_create_layer(x, y, "Player", obj_particles_rocket_e);
	particleMachine.owner = id;
}