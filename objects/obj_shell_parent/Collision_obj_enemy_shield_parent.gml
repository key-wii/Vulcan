if (direction > other.direction + 180 && direction < other.direction - 180) exit;
var explosion = instance_create_layer(x + 0, y + 0, "Explosions", obj_explosion_small_e);
explosion.direction = direction;
explosion.speed = 4;
instance_destroy();
exit;