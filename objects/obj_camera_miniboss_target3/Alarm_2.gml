var normalSize = false;
with (obj_camera) {
	if (cameraWidth > 1350) cameraWidth -= 2;
	if (cameraHeight > 900) cameraHeight -= 2;
	if (cameraWidth < 1350) cameraWidth = 1350;
	if (cameraHeight < 900) cameraHeight = 900;
	alarm_set(11, 1);
	if (cameraWidth == 1350 && cameraHeight == 900) normalSize = true;
}
if (normalSize) instance_destroy();
alarm_set(2, 1);