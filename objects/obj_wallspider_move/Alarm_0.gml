	 if (direction ==   0) x += spd;
else if (direction == 180) x -= spd;
else if (direction ==  90) y -= spd;
else if (direction == 270) y += spd;
move_wrap(true, true, 0);
alarm_set(0, 1);