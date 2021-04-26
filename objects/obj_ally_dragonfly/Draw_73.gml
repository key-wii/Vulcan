image_alpha = alph * fade;
if (image_alpha <= .05) instance_destroy();
if (burnt > 0) {
	draw_set_colour($FF0090FF & $ffffff);
	var l1884FE1A_0 = ($FF0090FF >> 24);
	draw_set_alpha(l1884FE1A_0 / $ff);
}
draw_self();
fade -= .01;