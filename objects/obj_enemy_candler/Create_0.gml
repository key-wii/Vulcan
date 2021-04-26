event_inherited();
maxHp = 10;
screenShake = 2;
alarm_set(10, 5);

flame = id;
alarm_set(1, 5);
wheels = instance_create_layer(x, y, "Enemy", obj_candler_move);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
alarm_set(0, 1);
bull_color = $FFFF47;

var rand = random_range(0, 3);
wheels.spd = 6 + rand;