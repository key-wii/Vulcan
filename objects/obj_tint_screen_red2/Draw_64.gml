view_xview = camera_get_view_x(obj_camera);
view_yview = camera_get_view_y(obj_camera);
draw_set_alpha(0.07);
draw_set_color(c_red);
draw_rectangle(view_xview, view_yview, view_xview + obj_camera.cameraWidth - 1,
	view_yview + obj_camera.cameraHeight - 1, 0);
draw_set_alpha(1);
draw_set_color(c_white);