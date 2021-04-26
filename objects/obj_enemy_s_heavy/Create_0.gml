event_inherited();
maxHp = 20;
screenShake = 2;
alarm_set(10, 5);

wheels = instance_create_layer(x, y, "Enemy", obj_s_move);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
alarm_set(0, 1);
bull_color = $FFFF47;