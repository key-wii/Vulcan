event_inherited();
orig_speed = 10;
maxSpeed = orig_speed * 4.5;
count = 0;
hit = false;
hit_target = false;
extended = false;
pow = 10;
piercing = true;
black = true;

image_speed = 0;
particleMachine = instance_create_layer(x, y, "Enemy_Bullets", obj_particles_bouncer_e);
particleMachine.owner = id;
alarm_set(0, 0);
alarm_set(10, 0);