event_inherited();
maxHp = 800;
if (global.level == 9 && !global.hard) maxHp = 500;
//maxHp = 1;
miniboss = true;
screenShake = 2;
alarm_set(1, 15);
alarm_set(2, 600);
diradjust = 0;
dirCheck = false;
//shoot_wait = false;

wheels = instance_create_layer(x, y, "Enemy", obj_miniboss_move2);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
wheels.sprite_index = sprite_index;
wheels.spd = 0;
backSkip = false;
alarm_set(0, 1);
dead_sprite = spr_enemy_miniboss_dead;

camera = false;