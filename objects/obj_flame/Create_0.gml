hyper = false;
var player_exists = instance_exists(obj_tank_pilot);
if(player_exists) {
	direction = obj_tank_pilot.direction
	image_angle = direction;
	if (obj_tank_pilot.bull_hit_count > 45 ||
		obj_tank_pilot.flame_dir > 1.3 ||
		obj_tank_pilot.flame_dir < -1.3) hyper = true;
}
xx = lengthdir_x(140, direction);
yy = lengthdir_y(140, direction);
//var particle = instance_create_layer(x + xx, y + yy, "Flame", obj_flame_particle)
if (hyper == false) {
	particleMachine = instance_create_layer(x + xx, y + yy, "Player", obj_particles_flame);
	with (particleMachine) {
		owner = id;
		alarm_set(1, 1);
	}
	//with (particle) alarm_set(0, 12);
} else {
	particleMachine = instance_create_layer(x + xx, y + yy, "Player", obj_particles_flameHyper);
	with (particleMachine) {
		owner = id;
		alarm_set(1, 1);
	}
	//with (particle) alarm_set(0, 18);
}
alarm_set(0, 1);

hit_shield = noone;