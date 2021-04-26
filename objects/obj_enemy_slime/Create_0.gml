event_inherited();
maxHp = 60;
screenShake = 2;

wheels = instance_create_layer(x, y, "Enemy", obj_slime_move);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
wheels.ddir = direction;
alarm_set(0, 1);
bull_color = $FFFF47;
dead_sprite = spr_enemy_big_dead;

slime = true;
childrenLeft = 2;
just_exploded = false;
image_xscale = 1.25;
image_yscale = 1.25;
image_maxscale = image_xscale;
alarm_set(1, 1);

particleMachine = instance_create_layer(x, y, "Enemy_UI", obj_particles_slime_trail);
particleMachine.owner = id;
particleMachine.direction = direction + 180;
particleMachine.first = true;