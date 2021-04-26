xxx += 25;
alpha -= .15;
if (xxx > 150) {
	xxx = 0;
	if (last && yyy mod 100 == 0) yyy = 500;
	else if (last) yyy = 550;
	else yyy = irandom_range(yrange1, yrange2) * 50;
	alpha = 1;
}

alarm_set(0, 4);