if (!instance_exists(wheels)) exit;
//Wheels slowdown if hit
if (hitting == true) {
	wheels.hitting = true;
} else {
	wheels.hitting = false;
}
//Jump to wheels position
x = wheels.x + x_adjust;
y = wheels.y + y_adjust;

if (wheels.rushing) sprite_index = rush_sprite;
else sprite_index = default_sprite;

alarm_set(0, 1);