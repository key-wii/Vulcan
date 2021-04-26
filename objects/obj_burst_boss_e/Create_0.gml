tick = 0;
sprite_set_speed(0, 60, spritespeed_framespersecond)
audio_play_sound(snd_burst, 0, 0);
//Set direction equal to player's moving direction
var wheels_exist = instance_exists(obj_major_big_move);
if (wheels_exist == true) {
	direction = obj_major_big_move.direction
}
alarm_set(0, 1);
image_angle = direction;

owner = id;
image_xscale = 2;
image_yscale = 2;