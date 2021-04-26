//lethal = true;
instance_destroy(particleMachine);
particleMachine = instance_create_layer(x, y, "Player", obj_particles_bouncer);
particleMachine.owner = id;
particleMachine.grenade = true;