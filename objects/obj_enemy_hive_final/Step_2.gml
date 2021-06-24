if (!instance_exists(owner)) {
	if (image_alpha > .1) image_alpha -= .01;
	if (image_alpha > .5) image_speed += .04;
	else if (image_speed > 0) image_speed -= .025 + random_range(0, .01);
	exit;
}
	   if (left) {
	var xx = lengthdir_x(370, owner.direction + 90);
	var yy = lengthdir_y(370, owner.direction + 90);
} else if (right) {
	var xx = lengthdir_x(370, owner.direction + 270);
	var yy = lengthdir_y(370, owner.direction + 270);
}
x = owner.x + xx;
y = owner.y + yy;
if (instance_exists(spawner)) {
	spawner.x = x;
	spawner.y = y;
}