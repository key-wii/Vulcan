xx = lengthdir_x(65, direction);
yy = lengthdir_y(65, direction);
/*var particle = instance_create_layer(x + xx, y + yy, "Flame", obj_flame_particle)
with (particle) alarm_set(0, 12);*/
particleMachine = instance_create_layer(x + xx, y + yy, "Enemy_UI", obj_particles_laser_e);
particleMachine.owner = id;
particleMachine.direction = direction;
with (particleMachine) {
	part_type_alpha3(PartLaser_e, .05, .05, .05);
	alarm_set(1, 1);
}
count++;
if (count < 70) alarm_set(2, 1);
else alarm_set(1, 1);