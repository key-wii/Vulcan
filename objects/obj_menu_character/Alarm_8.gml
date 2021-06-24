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
			text2 = dialogues[| currentDialogue][1];
			text3 = dialogues[| currentDialogue][2];
			text4 = dialogues[| currentDialogue][3];
			text5 = dialogues[| currentDialogue][4];
			text = text1 + text2 + text3 + text4 + text5;
			textHeight = string_height(text) + 2;
		
														boxWidth = ceil(string_width(text1) * 2);
			if (string_width(text2) * 2 > boxWidth) boxWidth = ceil(string_width(text2) * 2);
			if (string_width(text3) * 2 > boxWidth) boxWidth = ceil(string_width(text3) * 2);
			if (string_width(text4) * 2 > boxWidth) boxWidth = ceil(string_width(text4) * 2);
			if (string_width(text5) * 2 > boxWidth) boxWidth = ceil(string_width(text5) * 2);
			boxWidth += 7;
		
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