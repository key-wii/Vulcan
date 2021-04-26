event_inherited();
maxHp = 60;
screenShake = 2;
hydra = true;
alarm_set(10, 5);

//wheels = instance_create_layer(x, y, "Enemy", obj_s_move_circle);
wheels = instance_create_layer(x, y, "Enemy", obj_hydra_move);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
wheels.direction = direction;
alarm_set(0, 1);
bull_color = $FFFF47;
dead_sprite = spr_enemy_big_dead;