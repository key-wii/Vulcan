//"inherit" below from obj_parent_tank
friction = 0.5;
damage = 0;
can_shoot = 0;
rainbow = -1;
ammunition = 0;
shield = 25;
can_move = true;
windup_flame = 0;
flaming = false;
burst = 0;
weapon = 0;
weapon_wait = 0;
moving = false;
shielding = false;
shield_broken = false;
flame_sound = 1;
prevVspeed = 0;
prevHspeed = 0;
shoot_speed = 1;
healing = false;
healAmount = 0;
healed = 0;
collision_count = 0;
just_moved = false;
alarm_reset = true;
touching_wall = false;
too_many_keys = false;
opposing_keys = false;
windupMax = 10;
flame_timer = 0;
flame_end = false;
flame_end_count = 0;
max_trigger = 600;
devil_trigger = max_trigger;
charges = 6;
devil_refill = (max_trigger / 100) * .375;
uncharged_press = false;
bull_hit_count = 0;
bull_hit_wait = 0;
y_gun_reload = -25;
g_gun_reload = -40;
b_gun_reload = -55;
shoot_rotate = 0;
just_shot = true;
combo = false;
flameHeals = 0;
grenadeCharge = 0;
grenadeFullCharge = 90;
grenading = false;
devilSwingCharge = 0;
devilSwingFullCharge = 90;
preDevilSwing = false;
devilSwinging = false;
chargedSound = false;
slowDevilSwing = false;
dizzyUnlocked = false;
dizzy_shoot = 0;
dizzy_reload = -55;
dragonUnlocked = false;
dragon_shoot = 0;
dragon_reload = -60;
shieldUnlocked = false;
spikesUnlocked = false;
lastSpikes = 10;
chargeUnlocked = true;
cutscene = false;

debug = false;
debug_lock = 2;
timer = 0;
lives = 10;
hp_x = 0;
charge_x = 0;
livesDrawn = 0;
chargesDrawn = 0;
hp_draw_adjust = 0;
used_charge = false;
image_speed = .08;
x_adjust = 0;
y_adjust = 0;
flame_dir = 1;

flaming_while_pausing = false;

ini_open("saveData.ini");
weapon = ini_read_real("Options", "last weapon", 0);
ini_close();

/*if (weapon == 0) sprite_index = spPlayerTankY;
if (weapon == 1) sprite_index = spPlayerTankG;
if (weapon == 2) sprite_index = spPlayerTankB;*/

var wheels_exist = instance_exists(obj_tank_move);
if(!wheels_exist) {
	var wheels = instance_create_layer(x, y, "Player", obj_tank_move);
	wheels.topSpeed += 3;
}
particleMachine = instance_create_layer(x, y, "Enemy_Bullets", obj_particles_charged);
with (particleMachine) owner = id;

direction = 270;

global.flameKills = 0;

alarm_set(7, 1);
alarm_set(11, 3);