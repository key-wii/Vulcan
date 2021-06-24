draw_self();
image_angle -= 8;
if (disappear) {
	image_xscale -= .1;
	image_yscale -= .1;
	if (image_xscale <= 0) instance_destroy();
}