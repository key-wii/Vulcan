if (burnt > 0) {
	draw_set_colour($FF0090FF & $ffffff);
	var l1884FE1A_0 = ($FF0090FF >> 24);
	draw_set_alpha(l1884FE1A_0 / $ff);
}
draw_self();
image_angle = direction;

var mhp = hp - damage;
var hpBracket = (hp / 8);
	 if (mhp <= hpBracket * 1) image_index = 3;
else if (mhp <= hpBracket * 3) image_index = 2;
else if (mhp <= hpBracket * 6) image_index = 1;
else if (mhp > hpBracket * 6) image_index = 0;