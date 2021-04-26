var laser = instance_create_layer(x, y, "Enemy_Bullets_Front", obj_laser_e);
laser.direction = direction;
laser.speed = 18;
laser.owner = id;

xx = lengthdir_x(65, direction);
yy = lengthdir_y(65, direction);
particleMachine = instance_create_layer(x + xx, y + yy, "Enemy_UI", obj_particles_laser_e);
particleMachine.owner = id;
particleMachine.direction = direction;
with (particleMachine) {
	part_type_alpha3(PartLaser_e, .2, .2, .2);
	alarm_set(1, 1);
}
alarm_set(1, 3);