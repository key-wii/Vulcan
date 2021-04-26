image_alpha -= .05;
if (image_alpha <= 0) instance_destroy();
alarm_set(1, 1);