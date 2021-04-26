event_inherited();
startSpeed = 7;
finalSpeed = 12;
count = 0;
alarm_set(0, 300);
alarm_set(3, 1);
alarm_set(10, 42);
pow = 10;
black = true;

image_speed = 0;
particleMachine = instance_create_layer(x, y, "Player", obj_particles_rocket_e);
particleMachine.owner = id;

rotation = 22.5;
changeRot = false;
dontChange = true;
alarm_set(6, (360 / rotation));