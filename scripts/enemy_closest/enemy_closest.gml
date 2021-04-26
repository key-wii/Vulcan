///instance_closest(x, y, obj)
function enemy_closest(argument0, argument1, argument2) {
	//
	//----------------------------------------
	//
	// Returns the instance id of the closest
	// instance of enemy: obj that is not
	// a miniboss.
	// Returns noone if no instance is found.
	//
	//----------------------------------------

	var xx, yy, obj, c_obj, c_dis, dis;

	xx = argument0;
	yy = argument1;
	obj = argument2;
	c_obj = noone;
	c_dis = 999999;
	dis = 0;

	with (obj) {
	    if (miniboss == false) {
	        dis = point_distance(x, y, xx, yy);
	        if (dis < c_dis) {
	            c_dis = dis;
	            c_obj = id;
	        }
	    }
	}

	return c_obj;


}
