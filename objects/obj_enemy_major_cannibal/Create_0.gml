event_inherited();
maxHp = 650;
//maxHp = 1;
screenShake = 2;
alarm_set(10, 5);
miniboss = true;
critHp = maxHp * .30;
desperationUsed = false;
desperationCooldown = 0;

flame = id;
alarm_set(1, 5);
wheels = instance_create_layer(x, y, "Enemy", obj_major_big_move);
wheels.screenShake = screenShake;
wheels.owner = id;
wheels.hp = maxHp;
//alarm_set(0, 1);
bull_color = $FFFF47;

wheels.spd = 3;
spinSpd = -12;
topSpinSpd = 42;
swung = false;
//alarm_set(2, 25);
//if (irandom_range(-1, 1) > 0) spinSpd *= -1;

dead_sprite = spPlayerTank_white;
flaming = false;
windup = 0;
maxWindup = 40;
gunning = false;
enemySighted = false;
enemyInSight = obj_thisobjectneverexists;
just_shot = false;
just_shot_grenade = false;
grenading = false;
charging = false;

gun = yellow;
gunLuck = 0;

combo = false;
flameKills = 0;
flameHeals = 0;
healAmount = 0;
healed = 0;
healing = false;

/*damage = 640;
wheels.damage = damage;*/

//Point at player
var player_exists = false;
player_exists = instance_exists(obj_tank_pilot);
if (player_exists) direction = point_direction(x, y, obj_tank_pilot.x, obj_tank_pilot.y);

//keep camera on player and boss
obj_camera.target = instance_create_layer(x, y, "UI", obj_camera_midpoint_target);