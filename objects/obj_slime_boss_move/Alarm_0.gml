//Approaches player
if (!instance_exists(obj_tank_pilot)) exit;
mp_potential_step_object(obj_tank_pilot.x + x_adjust, obj_tank_pilot.y + y_adjust, spd/* + speedBoost*/, obj_wallandenemymoveparent_parent);

alarm_set(0, 1);