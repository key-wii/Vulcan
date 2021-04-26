x += lengthdir_x(spd * 2, direction - 90);
y += lengthdir_y(spd * 2, direction - 90);
if (!leave) move_wrap(true, true, 0);
count++;
if (count > 215 && count < 230 ||
	count > 330 && count < 345) alarm_set(3, 1);
else alarm_set(0, 1);