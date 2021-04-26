event_inherited();

image_xscale = 2;
image_yscale = 2;
image_speed = 0;
image_index = 0;
particleMachine = instance_create_layer(x, y, "Explosions", obj_particles_heal_e);
particleMachine.owner = id;
alarm_set(1, 1);

hit = false;