//Enemy backs away when player gets too close
var player_exists = instance_exists(obj_tank_pilot);
if(player_exists) {
	//If they aren't burnt, they won't back away as soon
	if (burnt = 0) radius = 30.1 + (radiusIncrease * 2);
	if (burnt > 0) radius = 100.1 + (radiusIncrease * 2);
	if (distance_to_object(obj_tank_pilot) < radius) {
		player_distance = 1;
		go = false;
	} if (distance_to_object(obj_tank_pilot) < radius - 10) {
		player_distance = 2;
	} if (distance_to_object(obj_tank_pilot) < radius - 25) {
		player_distance = 3;
	} if (distance_to_object(obj_tank_pilot) < radius - 29) {
		player_distance = 4;
	} if (distance_to_object(obj_tank_pilot) > 200) {
		go = true;
		player_distance = 0;
	}
}
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