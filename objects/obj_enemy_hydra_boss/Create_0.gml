event_inherited();
maxHp = 1300;
//maxHp = 300;
miniboss = true;
screenShake = 2;
hydra = true;
alarm_set(10, 5);

wheels = instance_create_layer(x, y, "Enemy", obj_miniboss_hydra_move);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
wheels.direction = direction;
alarm_set(0, 1);
bull_color = $FFFF47;
dead_sprite = spr_enemy_miniboss_dead;

camera = true;