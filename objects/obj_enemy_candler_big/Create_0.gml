event_inherited();
maxHp = 60;
screenShake = 2;
alarm_set(10, 5);

flame = id;
alarm_set(1, 5);
wheels = instance_create_layer(x, y, "Enemy", obj_candler_big_move);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
alarm_set(0, 1);
alarm_set(7, 1);
bull_color = $FFFF47;
dead_sprite = spr_enemy_big_dead;

var player_exists = instance_exists(obj_tank_pilot);
if (player_exists) {
	xx = obj_tank_pilot.x;
	yy = obj_tank_pilot.y;
}

prev_dir = direction;