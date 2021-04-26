//Destroy self if wheels don't exist
if (!instance_exists(wheels)) {
	wheels = instance_create_layer(x, y, "Enemy", obj_metatron_move);
	wheels.sprite_index = sprite_index;
	wheels.screenShake = screenShake;
	wheels.owner = id;
	wheels.hp = maxHp;
	wheels.damage = damage;
	if (phase == 9) wheels.spd = 3;
}
//Wheels slowdown if hit
if (hitting == true) {
	wheels.hitting = true;
} else {
	wheels.hitting = false;
}
//Jump to wheels position
x = wheels.x + x_adjust;
y = wheels.y + y_adjust;
//Flame jump to self's position
if (instance_exists(flame)) {
	if (flame != id) {
		flame.x = x;
		flame.y = y;
	}
}