event_inherited();
image_speed = 20;
particleMachine = instance_create_layer(x, y, "Player", obj_particles_rocket);
particleMachine.owner = id;
particleMachine.grenade = true;

lethal = false;
alarm_set(10, 22);