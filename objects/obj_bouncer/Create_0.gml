event_inherited();
maxSpeed = 30;
maxComboSpeed = 80;
image_speed = 20;
particleMachine = instance_create_layer(x, y, "Player", obj_particles_bouncer);
particleMachine.owner = id;

lethal = true;
prev_x = 0;
prev_y = 0;