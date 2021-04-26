event_inherited();
startSpeed = 7;
finalSpeed = 12;
count = 0;
alarm_set(0, 240);
alarm_set(3, 1);
alarm_set(9, 21);
alarm_set(10, 42);
pow = 10;
if (instance_exists(obj_tank_pilot))
	aimAt = obj_tank_pilot;
else aimAt = id;

image_speed = 0;
particleMachine = instance_create_layer(x, y, "Player", obj_particles_rocket_e);
particleMachine.owner = id;

miniboss = false;