shielding = false;
if (weapon == 0) {
	audio_play_sound(snd_shoot_grenade, 0, 0);
	var bull = instance_create_layer(self.x + 0, self.y + 0, "Player_Bullets", obj_grenade_y);
	bull.direction = direction;
	bull.image_angle = direction;
	bull.orig_speed = 9;
}
if (weapon == 1) {
	audio_play_sound(snd_shoot_grenade, 0, 0);
	var bull = instance_create_layer(self.x + 0, self.y + 0, "Player_Bullets", obj_grenade_g);
	bull.direction = direction;
	bull.image_angle = direction;
	bull.orig_speed = 21;
}
if (weapon == 2) {
	audio_play_sound(snd_shoot_grenade, 0, 0);
	var bull = instance_create_layer(self.x + 0, self.y + 0, "Player_Bullets", obj_grenade_b);
	bull.direction = direction;
	bull.image_angle = direction;
	bull.orig_speed = 8;
}
x_adjust = lengthdir_x(20, direction + 180);
y_adjust = lengthdir_y(20, direction + 180);
can_shoot = -300;
grenading = false;
alarm_set(7, 2);