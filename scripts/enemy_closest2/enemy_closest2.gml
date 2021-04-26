///instance_closest(x, y, obj)
function enemy_closest2(argument0, argument1, argument2, argument3, argument4) {
	//
	//----------------------------------------
	//
	// Returns the instance id of the closest
	// instance of enemy: obj that is not
	// a miniboss.
	// Returns noone if no instance is found.
	//
	//----------------------------------------

	var xx, yy, obj, ignoreThis1, ignoreThis2, c_obj, c_dis, dis;

	xx = argument0;
	yy = argument1;
	obj = argument2;
	ignoreThis1 = argument3;
	ignoreThis2 = argument4;
	c_obj = noone;
	c_dis = 999999;
	dis = 0;

	with (obj) {
	    if (obj != ignoreThis1 && obj != ignoreThis2) {
	        dis = point_distance(x, y, xx, yy);
	        if (dis < c_dis) {
	            c_dis = dis;
	            c_obj = id;
	        }
	    }
	}

	return c_obj;


}
