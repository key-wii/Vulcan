var bull = instance_create_layer(x, y, "Enemy_Bullets", obj_rocket_e_fps_efficient);
bull.direction = direction;
bull.image_angle = direction;
bull.speed = 2;
bull.finalSpeed = 3;
with (bull) alarm_set(0, 900);
alarm_set(2, 10);