draw_sprite_stretched(spr_fade_1p_strip24, i, view_xview, view_yview,
	obj_camera.cameraWidth + 2, obj_camera.cameraHeight + 2);
/*draw_sprite_ext_skew(sprite_index, i, view_xview, view_yview,
	(obj_camera.cameraWidth + 2) / sprite_width, (obj_camera.cameraHeight + 2) / sprite_height,
	0, 1, 0, 0, 1, 1);*/


/*draw_sprite_stretched(c_sprite, i, view_xview, view_yview,
	obj_camera.cameraWidth + 2, obj_camera.cameraHeight + 2);*/
if (cutscene) draw_sprite_ext(c_sprite, 0, view_xview, view_yview, 1, 1, 0, c_white, alpha);