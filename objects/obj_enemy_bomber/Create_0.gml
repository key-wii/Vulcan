event_inherited();
maxHp = 10;
screenShake = 2;
alarm_set(10, 5);
owner = id;

flame = id;
wheels = instance_create_layer(x, y, "Bombers", obj_bomber_move);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
wheels.ddir = direction;
alarm_set(0, 1);
bull_color = $FFFF47;

pow = 10;
ppow = 30;
var rand = irandom_range(0, 1);
wheels.spd = 9 + rand;

hitCount = 0;

dddir = 0;
flamed = false;
rush_sprite = spr_enemy_bomber_rush;