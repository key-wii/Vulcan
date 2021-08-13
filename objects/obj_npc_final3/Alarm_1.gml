//Set hovering to true and draw text when near object
if (instance_exists(obj_tank_pilot)) {
	if (distance_to_object(obj_tank_pilot) < 450) {
		hovering = true;
		if (talkWidth < 1 && spin <= 0) talkWidth += .1;
		alarm_set(1, 1);
		exit;
	} else hovering = false;
	if (obj_tank_pilot.shoot_rotate > 0 || obj_tank_pilot.grenading ||
		obj_tank_pilot.flaming) {
			alarm_set(1, 1);
			exit;
	}
}
if (!hovering && talkWidth > 0) {
	talkWidth -= .1;
	if (talkWidth <= 0) charCount = 0;
}

alarm_set(1, 1);






/*
//Set hovering to true and draw text when
//	1. near object,
//	2. mouse hovering near this object (moreso if rocket is equipped),
//	3a. line of fire is directed close near object
//	3b. line of fire is directed directly behind object
if (instance_exists(obj_tank_pilot_menu)) {
	if (distance_to_object(obj_tank_pilot_menu) < 300) {
		hovering = true;
		if (talkWidth < 1 && spin <= 0) talkWidth += .1;
		alarm_set(1, 1);
		exit;
	}
	if (obj_tank_pilot_menu.shoot_rotate > 0 || obj_tank_pilot_menu.grenading ||
		obj_tank_pilot_menu.flaming) {
			alarm_set(1, 1);
			exit;
	}
	var xx = obj_tank_pilot_menu.x;
	var yy = obj_tank_pilot_menu.y;
	var ddir = point_direction(x, y, xx, yy);
		
	var ddir3 = obj_tank_pilot_menu.direction;
	var len3x = lengthdir_x(800, ddir3);
	var len3y = lengthdir_y(800, ddir3);
	
	if (obj_tank_pilot_menu.weapon == 2) {
		var height = sprite_height;
		var len1x = lengthdir_x(height, ddir + 90);
		var len1y = lengthdir_y(height, ddir + 90);
		var len2x = lengthdir_x(height, ddir - 90);
		var len2y = lengthdir_y(height, ddir - 90);
		
		if (point_in_triangle(mouse_x, mouse_y, xx, yy, x + len1x, y + len1y, x + len2x, y + len2y) ||
			(mouse_x > x - sprite_width && mouse_x < x + sprite_width &&
			mouse_y > y - sprite_height && mouse_y < y + sprite_height) ||
			collision_line(xx, yy, xx + len3x, yy + len3y, id, false, false)) {
				hovering = true;
				if (talkWidth < 1) talkWidth += .1;
		} else hovering = false;
	} else {
		var height = sprite_height / 1.5;
		var len1x = lengthdir_x(height, ddir + 90);
		var len1y = lengthdir_y(height, ddir + 90);
		var len2x = lengthdir_x(height, ddir - 90);
		var len2y = lengthdir_y(height, ddir - 90);
		
		if (point_in_triangle(mouse_x, mouse_y, xx, yy, x + len1x, y + len1y, x + len2x, y + len2y) ||
			(mouse_x > x - sprite_width / 1.5 && mouse_x < x + sprite_width / 1.5 &&
			mouse_y > y - sprite_height / 1.5 && mouse_y < y + sprite_height / 1.5) ||
			collision_line(xx, yy, xx + len3x, yy + len3y, id, false, false)) {
				hovering = true;
				if (talkWidth < 1) talkWidth += .1;
		} else hovering = false;
	}
}
if (!hovering && talkWidth > 0) {
	charCount = 0;
	talkWidth -= .1;
}

alarm_set(1, 1);