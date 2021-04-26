event_inherited();
maxHp = 1600;
if (global.level == 9 && !global.hard) { maxHp = 1100; with (obj_spawner) bosses = 3; }
//maxHp = 1;
miniboss = true;
screenShake = 2;
alarm_set(1, 15);

wheels = instance_create_layer(x, y, "Enemy", obj_miniboss_move2);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
wheels.spd = 5;
wheels.radiusIncrease = sprite_width - 40;
alarm_set(0, 1);
dead_sprite = spr_enemy_miniboss_dead;

camera = true;
//keep camera on player and boss
obj_camera.target = instance_create_layer(x, y, "UI", obj_camera_miniboss_target);