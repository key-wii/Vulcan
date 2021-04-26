event_inherited();
maxHp = 10;
screenShake = 2;
alarm_set(10, 5);

direction = irandom_range(2, 3) * 90;
wheels = instance_create_layer(x, y, "Enemy_Above", obj_bbbird_move);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
wheels.direction = direction;
alarm_set(0, 1);
bull_color = $FFFF47;

outside_room = false;
image_xscale = 4;
image_yscale = 4;
image_maxscale = 4;

shadow = instance_create_layer(x, y, "Player_Bullets", obj_enemy_shadow);
shadow.owner = id;