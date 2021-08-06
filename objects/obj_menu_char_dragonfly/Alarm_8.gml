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
			//var bWidth = sprite_get_width(spBox);
			draw_set_font(-1);
												boxWidth = ceil(string_width(text1));
			if (string_width(text2) > boxWidth) boxWidth = ceil(string_width(text2));
			if (string_width(text3) > boxWidth) boxWidth = ceil(string_width(text3));
			if (string_width(text4) > boxWidth) boxWidth = ceil(string_width(text4));
			if (string_width(text5) > boxWidth) boxWidth = ceil(string_width(text5));
			boxWidth *= 2.075;
			/*if (boxWidth > bWidth) {
				boxWidth = bWidth;
				boxWidth *= 1.025;
			}*/
			if (boxWidth < 400) boxWidth = 400;
		
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