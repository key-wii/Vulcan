//alarm_set(0, 200);
alarm_set(11, 1);
alarm_set(1, 1);
pow = 10;
orig_speed = 12;
piercing = true;
grenade = true;
black = true;

wasInView = false;

image_xscale = 4;
image_yscale = 4;
rot_spd = 20;
flame = instance_create_layer(x, y, "Enemy_Bullets_Front", obj_flame_bull_e);
flame.owner = id;
flame.rot_spd = rot_spd;
alarm_set(2, 20);
corner = false;

hit = false;