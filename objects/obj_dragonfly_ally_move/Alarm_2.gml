x += lengthdir_x(spd * 2, direction + 90);
y += lengthdir_y(spd * 2, direction + 90);
if (!leave) move_wrap(true, true, 0);
count++;
if (count > 100 && count < 115 ||
	count > 445 && count < 460) alarm_set(2, 1);
else alarm_set(0, 1);