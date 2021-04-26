event_inherited();

pow = 3;
owner = obj_thisobjectneverexists;
ddir = 1;
dirChange = 40;
alarm_set(5, 1);  //destroy self if owner doesn't exist
alarm_set(2, 15); //direction rounds out
alarm_set(6, 24); //direction round lessens
alarm_set(0, 28); //destroy self