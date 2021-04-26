//Destroy self if wheels don't exist
if !instance_exists(wheels) instance_destroy();
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
if (instance_exists(flame))
	if (flame != id) {
		flame.x = x;
		flame.y = y;
	}

if (!desperationUsed) exit;
if (desperationCooldown > 0) desperationCooldown -= 1;
else desperationUsed = false;