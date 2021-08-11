event_inherited();
maxHp = 10;
screenShake = 2;
alarm_set(10, 5);

alarm_set(2, 1);
count = 0;
wheels = instance_create_layer(x, y, "Enemy", obj_s_move_circle);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
alarm_set(0, 1);
bull_color = $FFFF47;
dead_sprite = spr_enemy_c_dead;