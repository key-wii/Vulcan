event_inherited();
maxHp = 1500;
if (global.level == 9 && !global.hard) { maxHp = 1000; with (obj_spawner) bosses = 3; }
//maxHp = 1;
miniboss = true;
screenShake = 2;
alarm_set(1, 15);

wheels = instance_create_layer(x, y, "Enemy", obj_miniboss_move2);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
wheels.spd = 7;
wheels.radiusIncrease = sprite_width / 2 - 20;
alarm_set(0, 1);
dead_sprite = spr_enemy_miniboss_dead;

camera = false;