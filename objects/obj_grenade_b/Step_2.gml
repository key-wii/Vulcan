if (!lethal) exit;
var explosion = instance_create_layer(x + 0, y + 0, "Walls", obj_explosion_small);
explosion.direction = direction;
//explosion.speed = 2;