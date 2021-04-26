if (!instance_exists(owner)) exit;
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