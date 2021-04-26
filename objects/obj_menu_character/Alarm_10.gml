if (global.moving || (level == -1 && area_complete1)) exit;
if (level != 0) obj_camera.target = id;
alarm_set(0, 4);