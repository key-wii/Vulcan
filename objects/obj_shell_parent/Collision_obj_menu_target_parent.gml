if (global.moving) exit;
with (other) if (alarm_get(0) < 1 && !alreadyHit) alarm_set(10, 1);
var expl = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_large);
expl.direction = direction;
expl.speed = 4;
instance_destroy();