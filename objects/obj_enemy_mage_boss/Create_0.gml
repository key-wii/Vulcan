event_inherited();
maxHp = 600;
if (global.level == 9 && !global.hard) { 
	maxHp = 450;
	with (obj_enemy_fly_move_parent) leave = true;
	with (obj_spawner) bosses = 2;
}
miniboss = true;
flameWeak = true;
screenShake = 2;
alarm_set(1, 15);

wheels = instance_create_layer(x, y, "Enemy", obj_miniboss_move2);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
wheels.spd = 1;
wheels.backBoost = -5;
backSkip = false;
alarm_set(0, 1);
dead_sprite = spr_enemy_miniboss_dead;

//keep camera on player and boss
obj_camera.target = instance_create_layer(x, y, "UI", obj_camera_miniboss_target);