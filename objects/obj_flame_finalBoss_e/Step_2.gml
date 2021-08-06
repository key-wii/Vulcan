if (instance_exists(owner)) {
	direction = owner.direction;
} else instance_destroy();
image_angle = direction;

/*var xx1 = lengthdir_x(230, direction);
var yy1 = lengthdir_y(230, direction);
particleMachine = instance_create_layer(x + xx1, y + yy1, "Flame", obj_particles_flame_big2_e);
particleMachine.owner = id;
with (particleMachine) {
	xx = xx1;
	yy = yy1;
	part_type_direction(PartFlame_e, direction, direction, 0, 1);
	alarm_set(1, 1);
}*/

var xx3 = lengthdir_x(460, direction);
var yy3 = lengthdir_y(460, direction);
particleMachine3 = instance_create_layer(x + xx3, y + yy3, "Flame", obj_particles_flame_big2_e);
particleMachine3.owner = id;
with (particleMachine3) {
	xx = xx3;
	yy = yy3;
	part_type_direction(PartFlame_e, direction, direction, 0, 1);
	alarm_set(1, 1);
}

xx2 = lengthdir_x(640, direction);
yy2 = lengthdir_y(640, direction);
particleMachine2 = instance_create_layer(x + xx2, y + yy2, "Flame", obj_particles_flame_final_e);
particleMachine2.owner = id;
with (particleMachine2) {
	part_type_direction(PartFlame_e, direction, direction, 0, 1);
	alarm_set(1, 1);
}