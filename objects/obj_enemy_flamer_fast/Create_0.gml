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

wheels.spd = 12;
spinSpd = -12;
if (irandom_range(-1, 1) > 0) spinSpd *= -1;

//Point at player
var player_exists = false;
player_exists = instance_exists(obj_tank_pilot);
if (player_exists) direction = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);