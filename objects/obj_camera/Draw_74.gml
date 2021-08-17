//Prevents glitch of black bars getting miscolored due to being drawn over 
draw_set_color(c_black);
draw_rectangle(-200, -1, -1, display_get_gui_height() + 2, false);
draw_rectangle(display_get_gui_width(), -1, display_get_gui_width() + 400, display_get_gui_height() + 1, false);
draw_set_color(c_white);