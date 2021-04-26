alarm_set(11, 8);
speed = 14;

wasInView = false;
image_speed = 20;
explode = false;

image_xscale = 2;
image_yscale = 2.5;
alarm_set(5, 30);
alarm_set(1, 1);
shadowScale = 1;
alarm_set(2, 25);

particleMachine = instance_create_layer(x, y, "Player", obj_particles_bouncer);
particleMachine.owner = id;