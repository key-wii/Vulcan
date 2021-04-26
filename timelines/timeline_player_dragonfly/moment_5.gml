var bull = instance_create_layer(x, y, "Player_Bullets", obj_ally_dragonfly);
bull.direction = direction;
bull.image_angle = direction;
if (weapon == 0) bull.bullet = obj_shell_above;
if (weapon == 1) bull.bullet = obj_bouncer_above;
if (weapon == 2) bull.bullet = obj_rocket_above;
dragon_shoot = dragon_reload * shoot_speed;
audio_play_sound(snd_dragonfly_ally, false, false);