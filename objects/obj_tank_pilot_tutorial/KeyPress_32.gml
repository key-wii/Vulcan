with (controller) exitTextBox = noone;
instance_destroy(obj_exit_text);

//pause
with (controller) {
	visible = false;
	alarm_set(6, 1);
}