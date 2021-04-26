event_inherited();
maxHp = 5000;
screenShake = 2;
alarm_set(1, 10);
sound_count = 0;

wheels = instance_create_layer(x, y, "Enemy", obj_tutorial_killer_move);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
alarm_set(0, 1);