event_inherited();
image_speed = 15;
particleMachine = instance_create_layer(x, y, "Player", obj_particles_bouncer);
particleMachine.owner = id;
particleMachine.grenade = true;

stuck = 0;