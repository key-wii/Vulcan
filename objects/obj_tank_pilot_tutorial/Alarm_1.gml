//Crisp shooting so player doesn't have to be frame perfect when spamming shoot button
if(can_shoot = 0) {
	shoot_rotate = 20;
	just_shot = true;
	if(weapon = 0) {
		/*if(rainbow = 4) {
			var bull = instance_create_layer(self.x + 0, self.y + 0, "Player_Bullets", noone);
			bull.direction = direction;
			bull.image_angle = direction;
			//bull.speed = ;
			//can_shoot = ;
			ammunition += -1;
			exit;
		}*/
		audio_play_sound(snd_shoot1, 0, 0);
		if (global.flameKills > 0)
			with (controller) alarm_set(2, alarm_get(2) + 20);
		var bull = instance_create_layer(self.x + 0, self.y + 0, "Player_Bullets", obj_shell);
		bull.direction = direction;
		bull.image_angle = direction;
		bull.orig_speed = 29;
		can_shoot = y_gun_reload * shoot_speed;
		x_adjust = lengthdir_x(3, direction + 180);
		y_adjust = lengthdir_y(3, direction + 180);
		exit;
	}
	if(weapon == 1 && unlock > 1) {
		/*if(rainbow = 1) {
			var bull = instance_create_layer(self.x + 0, self.y + 0, "Player_Bullets", noone);
			bull.direction = direction;
			bull.image_angle = direction;
			bull.speed = ;
			can_shoot = -5;
			ammunition += -1;
			exit;
		}*/
		audio_play_sound(snd_shoot2, 0, 0);
		if (global.flameKills > 0)
			with (controller) alarm_set(2, alarm_get(2) + 50);
		var bull = instance_create_layer(self.x + 0, self.y + 0, "Player_Bullets", obj_bouncer);
		bull.direction = direction;
		bull.image_angle = direction;
		bull.orig_speed = 16;
		can_shoot = g_gun_reload * shoot_speed;
		x_adjust = lengthdir_x(8, direction + 180);
		y_adjust = lengthdir_y(8, direction + 180);
		exit;
	}
	if(weapon == 2 && unlock > 2) {
		/*if(rainbow = 0) {
			var bull = instance_create_layer(self.x + 0, self.y + 0, "Player_Bullets", noone);
			can_shoot = -5.5;
			ammunition += -1;
			exit;
		}*/
		audio_play_sound(snd_shoot3, 0, 0);
		if (global.flameKills > 0)
			with (controller) alarm_set(2, alarm_get(2) + 75);
		var bull = instance_create_layer(self.x + 0, self.y + 0, "Player_Bullets", obj_rocket);
		bull.direction = direction;
		bull.image_angle = direction;
		bull.orig_speed = 10;
		can_shoot = b_gun_reload * shoot_speed;
		x_adjust = lengthdir_x(15, direction + 180);
		y_adjust = lengthdir_y(15, direction + 180);
		exit;
	}
}