event_inherited();
maxHp = 650;
if (global.level == 9 && !global.hard) maxHp = 450;
//maxHp = 1;
miniboss = true;
screenShake = 2;
hydra = true;
alarm_set(10, 5);

wheels = instance_create_layer(x, y, "Enemy", obj_miniboss_hydra_move);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
wheels.direction = direction;
alarm_set(0, 1);
bull_color = $FFFF47;
dead_sprite = spr_enemy_boss_dead;

camera = true;
start = false;
alarm_set(2, 180);