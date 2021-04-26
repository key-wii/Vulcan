	 if (direction ==   0) y -= spd * 2;
else if (direction == 180) y += spd * 2;
else if (direction ==  90) x += spd * 2;
else if (direction == 270) x -= spd * 2;
if (!leave) move_wrap(true, true, 0);
count++;
if (count > 100 && count < 115 ||
	count > 445 && count < 460) alarm_set(2, 1);
else alarm_set(0, 1);