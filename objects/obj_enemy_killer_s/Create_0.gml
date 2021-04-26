event_inherited();
maxHp = 10;
screenShake = 2;
alarm_set(10, 5);

wheels = instance_create_layer(x, y, "Enemy", obj_killer_move);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
alarm_set(0, 1);
bull_color = $FFFF47;

killer = true;
alarm_set(3, 20);
alpha = 1;
teleCol = c_yellow;
dodges = 2;