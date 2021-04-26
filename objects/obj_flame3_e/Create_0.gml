image_angle = direction;
owner = id;
image_xscale = 1;
image_yscale = 1;
if (global.level == 9) pow = 8;
else pow = 10;

alarm_set(0, 10);
alarm_set(1, 1);
layer = layer_get_id("Enemy_UI");

start = true;
alarm_set(10, 20);
particleMachine = id;