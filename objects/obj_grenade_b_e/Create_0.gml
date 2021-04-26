alarm_set(0, 500);
alarm_set(11, 4);
pow = 10;
piercing = true;
grenade = true;
black = false;

image_speed = 20;
startSpeed = 21;
midSpeed = 17;
finalSpeed = 14;
particleMachine = instance_create_layer(x, y, "Player", obj_particles_rocket);
particleMachine.owner = id;
particleMachine.grenade = true;
if (instance_exists(obj_tank_pilot))
	aimAt = obj_tank_pilot;
else aimAt = obj_thisobjectneverexists;

lethal = false;
alarm_set(10, 18);