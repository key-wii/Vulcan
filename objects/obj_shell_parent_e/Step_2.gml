/*if (rectangle_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom,
	camera_get_view_x(0), camera_get_view_y(0),
	camera_get_view_x(0) + camera_get_view_width(0), camera_get_view_y(0) + camera_get_view_height(0))) {
		visible = true;
		wasInView = true;
} else {
	visible = false;
	if (wasInView) instance_destroy();
}