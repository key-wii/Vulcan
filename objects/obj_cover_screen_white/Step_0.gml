if (visible && whiteness == .05 && fade == true) {
	fade = false;
	visible = false;
}
if (visible && whiteness < 1 && fade == false) {
	whiteness += .05;
	instance_destroy(obj_enemy_parent);
}
if (visible && whiteness > .05 && fade == true) whiteness -= .05;