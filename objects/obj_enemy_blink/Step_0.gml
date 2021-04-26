if (dragonfly) {
	with (owner) blink.x_adjust = lengthdir_x(blink.sw * .2, direction);
	with (owner) blink.y_adjust = lengthdir_y(blink.sw * .2, direction);
} else {
	with (owner) blink.x_adjust = lengthdir_x(blink.sw * .6, direction);
	with (owner) blink.y_adjust = lengthdir_y(blink.sw * .6, direction);
}
x = owner.x + x_adjust;
y = owner.y + y_adjust;
if (forever) exit;
image_alpha -= .2;