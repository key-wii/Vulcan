xx += 15 * ddir;
yy += random_range(-3, 3);

if (!inverse && up) {
	yy -= 15;
	yy -= yadjust;
	yadjust += 1;
}
else if (!inverse) {
	yy += 18;
	yadjust -= 1;
}
if (!inverse && yy < -98) up = false;
if (inverse && up) {
	yy += 15;
	yy += yadjust;
	yadjust -= 1;
}
else if (inverse) {
	yy -= 18;
	yadjust += 1;
}
if (inverse && yy < 98) up = false;

alarm_set(1, 3);