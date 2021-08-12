var controller_exists = instance_exists(controller);
if (controller_exists && !controller.visible) exit;
var thickness = 4;
for (i = 0; i <= cameraHeight; i += thickness * displayScale)
	draw_sprite_stretched(scanline, 0, 0, i + floor(scanY), cameraWidth, thickness * displayScale);
scanY += .1;
if (scanY >= 5) scanY = 0;
//for (i = 0; i <= 800; i += 4) draw_sprite(scanline, 0, view_xview, view_yview + i);