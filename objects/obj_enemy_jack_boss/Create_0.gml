event_inherited();
maxHp = 2000;
//maxHp = 1;
miniboss = true;
screenShake = 2;
alarm_set(1, 15);
img = 0;

wheels = instance_create_layer(x, y, "Enemy", obj_miniboss_move2);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
wheels.spd = 4;
wheels.radiusIncrease = 10;
alarm_set(0, 1);
dead_sprite = spr_enemy_miniboss_dead;

dir_adjust = 0;
turn = false;
dir_stop = false;
last_dir = direction;

//keep camera on player and boss
obj_camera.target = instance_create_layer(x, y, "UI", obj_camera_miniboss_target);

if (!audio_is_playing(msc_fool)) {
	audio_stop_sound(global.bgm);
	global.bgm = audio_play_sound(msc_fool, 0, true);
}