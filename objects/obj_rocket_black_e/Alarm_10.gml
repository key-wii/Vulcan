var player_exists = false;
player_exists = instance_exists(obj_tank_pilot);
if(!player_exists) exit;

var xx = obj_tank_pilot.x;
var yy = obj_tank_pilot.y;
var ddir = point_direction(x, y, xx, yy);
if (direction > ddir + 1 || direction < ddir - 1 && point_distance(x, y, xx, yy) > 100) {
	with (particleMachine) {
		particleCount = 0;
		alarm_set(1, 1);
	}
	speed = finalSpeed;
	x += lengthdir_x(5, direction);
	y += lengthdir_y(5, direction);
	target = instance_nearest(x, y, obj_tank_pilot);
	
	direction += rotation;
	if (direction > ddir - abs(rotation) && direction < ddir + abs(rotation)) direction = ddir;
	image_angle = direction;
	
	if (!dontChange) changeRot = true;
	alarm_set(10, 10);
} else {
	with (particleMachine) instance_destroy();
	particleMachine = instance_create_layer(x, y, "Player", obj_particles_rocket_e);
	particleMachine.owner = id;
	if (changeRot) {
		rotation *= -1;
		changeRot = false;
	}
	alarm_set(10, 10);
}