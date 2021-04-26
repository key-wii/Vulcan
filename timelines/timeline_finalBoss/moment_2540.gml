finalBoss = instance_create_layer(xx, yy, "Enemy", obj_enemy_metatron);

if (instance_exists(obj_tank_move)) var pMove = obj_tank_move;
else if (instance_exists(obj_tank_move_flame))  var pMove = obj_tank_move_flame;
else exit;
//pMove.x = xx;
//pMove.y = yy + (finalBoss.sprite_width / 2) + 384;
pMove.x = xx + lenX;
pMove.y = yy + lenY;
with (pMove) can_move = false;

if (global.checkpoint < 6 && instance_exists(obj_tank_pilot)) obj_tank_pilot.damage = 90;