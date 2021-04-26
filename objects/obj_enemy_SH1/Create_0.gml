event_inherited();
maxHp = 10;
screenShake = 2;
alarm_set(10, 5);

shield = id;
wheels = instance_create_layer(x, y, "Enemy", obj_SH_move);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
wheels.spd = 2;
alarm_set(0, 1);
bull_color = $FFFF47;

var rand = random_range(0, 1);
wheels.spd = 3.5 + rand;
wheels.SH = true;

alarm_set(1, 1);
alarm_set(3, 40);