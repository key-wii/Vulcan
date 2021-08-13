if(burnt > 0) {
	image_blend = $FF00A1FF & $ffffff;
	image_alpha = ($FF00A1FF >> 24) / $ff;
}
if(burnt < 1) {
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;
}
if(burnt > 0) {
	burnt += -1;
	alarm_set(10, 20);
}
if (hit_count > 0) {
	hit_count--;
}
if (x != prev_x || y != prev_y) {
	if (image_xscale < image_maxscale + .1 && stretch == true) {
		image_xscale += .02;
	} else if (stretch == true) {
		stretch = false;
	}
	if (image_xscale > image_maxscale - .1 && stretch == false) {
		image_xscale -= .02;
	} else if (stretch == false) {
		stretch = true;
	}
} else {
	if (image_xscale < image_maxscale) image_xscale += .01;
	if (image_xscale > image_maxscale) image_xscale -= .01;
}


if (spin > 0) {
	if (spin > 360) {
		alarm_set(5, 10);
		if (!switchWait) {
			currentDialogue++;
			if (currentDialogue >= ds_list_size(dialogues)) currentDialogue = 0;
			text1 = dialogues[| currentDialogue][0];
			text = text1;
			textHeight = string_height(text) + 2;
			//var bWidth = sprite_get_width(spBox);
			draw_set_font(-1);
			boxWidth = ceil(string_width(text1));
			boxWidth *= 2.12;
			/*if (boxWidth > bWidth) {
				boxWidth = bWidth;
				boxWidth *= 1.025;
			}*/
			//if (boxWidth < 400) boxWidth = 400;
		
			switchWait = true;
		}
	}
	if (spin >= 228) var spinSpd = 24;
	else if (spin >= 24) var spinSpd = 12;
	else var spinSpd = 6;
	direction += spinSpd;
	spin -= spinSpd;
	if (spin < 0) spin = 0;
	if (spin == 0 && burnt > 5) burnt = 5;
	if (talkWidth > 0) talkWidth -= .1;
} else {
	//Point at player
	var player_exists = false;
	player_exists = instance_exists(obj_tank_pilot);
	if (player_exists) direction = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);
}

alarm_set(8, 1);