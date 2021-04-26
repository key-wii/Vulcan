x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);
/*if (!leave) move_wrap(true, true, 0);
count++;
	 if (count > 100 && count < 115) alarm_set(2, 1);
else if (count > 215 && count < 230) alarm_set(3, 1);
else if (count > 330 && count < 345) alarm_set(3, 1);
else if (count > 445 && count < 460) alarm_set(2, 1);
else alarm_set(0, 1);
if (count > 600) {
	if (ddir < 0) count = 115 + irandom_range(0, 100);
	else count = 0 + irandom_range(0, 100);
}*/
alarm_set(0, 1);