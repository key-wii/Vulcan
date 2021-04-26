event_inherited();
maxHp = 60;
screenShake = 2;
alarm_set(10, 5);

wheels = instance_create_layer(x, y, "Enemy", obj_big_move);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
alarm_set(0, 1);
bull_color = $FFFF47;
dead_sprite = spr_enemy_big_dead;