event_inherited();
maxHp = 60;
screenShake = 2;
alarm_set(3, 20);
alarm_set(2, 50);

wheels = instance_create_layer(x, y, "Enemy", obj_big_move);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
wheels.spd = 2.5 + random(.5);
alarm_set(0, 1);
bull_color = $FFFF47;
dead_sprite = spr_enemy_big_dead;

spr_charged = spr_enemy_s_grenader_charged;
grenading = false;
just_shot = false;