image_alpha -= .001;
if (image_alpha < .001) instance_destroy();
alarm_set(1, 1);