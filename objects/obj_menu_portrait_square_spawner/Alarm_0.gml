xxx += 25;
if (xxx < 150) alpha -= .15;
else alpha -= .05;
if ((xxx > 200) || (yy1 + yyy > 200 && xxx > 150)) {
	xxx = 0;
	if (last && yyy mod 100 == 0) yyy = 500;
	else if (last) yyy = 550;
	else yyy = irandom_range(yrange1, yrange2) * 50;
	alpha = 1;
}

alarm_set(0, 4);