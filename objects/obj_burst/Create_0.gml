tick = 0;
sprite_set_speed(0, 60, spritespeed_framespersecond)
audio_play_sound(snd_burst, 0, 0);
//Set direction equal to player's moving direction
var flame_wheels_exist = instance_exists(obj_tank_move_flame);
if (flame_wheels_exist == true) {
	direction = obj_tank_move_flame.direction
}
var wheels_exist = instance_exists(obj_tank_move);
if (wheels_exist == true) {
	direction = obj_tank_move.direction
}
alarm_set(0, 1);
image_angle = direction;