friction = 0.5;
damage = 0;
can_shoot = 0;
ammunition = 0;
shield = 25;
shielding = false;
can_move = true;
windup_flame = 0;
fix = 0;
burst = 0;
weapon = 0;
burnt = 0;
go = true;
player_distance = 0;
too_close = false;
radius = 200.1;
hitting = false;
touching_enemy = false;
touching_enemy_boost = false;
moveOverride = false;
touchingTick = 0;
touchCount = 0;
speedCheckTick = 0;
radiusIncrease = 0;
distanceToPlayer = 0;
damage = 0;
screenShake = 2;
hp = 10;
hurtful = true;
topSpeed = 8;
miniboss = false;
grenadeAlreadyHit = id;
grenadeAlreadyHitIndex = 99999;
speedBoost = 0;
too_fast = false;
SH = false;
alarm_set(7, 1);
alarm_set(4, 1);
alarm_set(6, 300);

//List all objects to collide with
c_obj[0] = obj_enemy_move_parent;
c_obj[1] = obj_tank_move;
c_obj[2] = obj_tank_move_flame;
c_obj[3] = obj_wall1;