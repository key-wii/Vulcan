if (direction != ddir || speed < 1 ||
	prev_x == x || prev_y == y) rushing = false;
else rushing = true;

//self destruct when drill is touches enemy/player/wall
//circle collisions for player/enemy have a radius of 12
//circle collisions for walls have a radius of 20
//should be changed accordingly if sprite changes
if (owner.hitting) exit;
var player_exists = instance_exists(obj_tank_pilot);
if(!player_exists) exit;
var xxx = x + lengthdir_x(20, owner.image_angle);
var yyy = y + lengthdir_y(20, owner.image_angle);
var radius = collision_circle(xxx, yyy, 12, obj_bomber_move, false, true);
if (radius == noone)
	radius = collision_circle(xxx, yyy, 12, obj_tank_pilot, false, true);
if (radius == noone)
	radius = collision_circle(xxx, yyy, 20, obj_wall1, false, true);
if (radius != noone) {
	var expl = instance_create_layer(x, y, "Explosions", obj_explosion_grenade_e);
	expl.image_xscale = 1;
	expl.image_yscale = 1;
	expl.speed = 5;
	expl.direction = direction;
	if (instance_exists(owner))
		with (owner) 
			instance_destroy();
}

alarm_set(7, 1);

/*
var nearWall = instance_nearest(x, y, obj_wall1);
if (point_distance(x, y, nearWall.x, nearWall.y) < 35) {
	var expl = instance_create_layer(x, y, "Explosions", obj_explosion_grenade_e);
	expl.image_xscale = 1;
	expl.image_yscale = 1;
	expl.speed = 5;
	expl.direction = direction;
	if (instance_exists(owner))
		with (owner) 
			instance_destroy();
}*/

/*
//Horizontal Collision
for (var i = 0; i < array_length_1d(c_obj[i]); i++)
{
    if (place_meeting(x+hsp,y,c_obj[i]))
    {
        while (!place_meeting(x+sign(hsp),y,c_obj[i]))
        {
            x += sign(hsp);
        }
        hsp = 0;
        break;
    }
}
//Vertical Collision
for (var i = 0; i < array_length_1d(c_obj[i]); i++)
{
    if (place_meeting(x,y+vsp,c_obj[i]))
    {
        while (!place_meeting(x,y+sign(vsp),c_obj[i]))
        {
            y += sign(vsp);
        }
        vsp = 0;
        break;
    }
}

touching_enemy = place_meeting(x, y, obj_enemy_move_parent);
if (touching_enemy == false && touching_enemy_boost == true) {
	//speed = normalspeed;
	touching_enemy_boost = false;
	alarm_set(9, 3)
	alarm_set(10, 2);
}
alarm_set(7, 1);