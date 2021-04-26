event_inherited();
maxHp = 10;
screenShake = 2;
opacity = .01;
alarm_set(3, 2);

wheels = instance_create_layer(x, y, "Enemy", obj_tutorial_dummy_move);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
alarm_set(0, 1);