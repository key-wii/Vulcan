//if (global.moving) exit;
if (instance_exists(obj_fade_screen))
	if (obj_fade_screen.visible) exit;
with (controller) exitTextBox = noone;
instance_destroy(obj_exit_text);

//pause
with (controller) {
	visible = false;
	alarm_set(7, 1);
}