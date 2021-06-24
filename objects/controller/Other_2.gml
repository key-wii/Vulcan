global.currentRoom = room; //setting room to come back to after unpausing
global.unpausing = false;
global.just_won = false;
global.boss_just_killed = false;
global.mute = false;
global.PauseScreenShot = sprite_create_from_surface(application_surface, 0, 0, 0, 0, false, false, 0, 0);
//sprite_delete(global.PauseScreenShot);
window_set_cursor(cr_none);
depth = -1;
global.max_trigger = 200;
global.hard = false;

global.moving = false; //flagged as true when moving from menu to another room
global.flameSpeedBoost = 0; //speed boost from getting 10+ flame kills
global.checkpoint = 0;
global.halfCheckpoint = 0;
global.level = 0;
global.waveEndCombo = 0;
global.flameWaveKills = 0;

global.kills = 0;
global.time = 0;
global.damageTaken = 0;

global.finalSpawnList = ds_list_create();
ds_list_add(global.finalSpawnList, 1, 2, 3, 4, 5, 6, 7, 8);
ds_list_shuffle(global.finalSpawnList);
global.wave = 1;
global.waveCount = 1;
global.finalMinibossesList = ds_list_create();
ds_list_add(global.finalMinibossesList, 1, 2, 3, 4);
ds_list_shuffle(global.finalMinibossesList);
global.finalBossesList = ds_list_create();
ds_list_add(global.finalBossesList, 1, 2, 3, 4);
ds_list_shuffle(global.finalBossesList);
while (global.finalMinibossesList[| 1] == global.finalBossesList[| 1] &&
	   global.finalMinibossesList[| 2] == global.finalBossesList[| 2] &&
	   global.finalMinibossesList[| 3] == global.finalBossesList[| 3] &&
	   global.finalMinibossesList[| 4] == global.finalBossesList[| 4]) {
			ds_list_shuffle(global.finalBossesList);
}

global.death = true;
//global.mute = false;
global.mute = true;

sprite_prefetch(spr_menu_preview_f);
sprite_prefetch(spr_menu_preview_y);
sprite_prefetch(spr_menu_preview_g);
sprite_prefetch(spr_menu_preview_b);

//Set some particles
global.P_System = part_system_create();

global.PartBouncer = part_type_create();
part_type_shape(global.PartBouncer, pt_shape_disk);
part_type_size(global.PartBouncer, .015, .015, .006, .2);
part_type_color1(global.PartBouncer, c_lime);
part_type_alpha1(global.PartBouncer, .15);
part_type_blend(global.PartBouncer, true);
part_type_life(global.PartBouncer, 7, 7);
global.PartRocket = part_type_create();
part_type_shape(global.PartRocket, pt_shape_disk);
part_type_size(global.PartRocket, .017, .017, .006, .2);
part_type_color1(global.PartRocket, c_blue);
part_type_alpha1(global.PartRocket, .15);
part_type_blend(global.PartRocket, true);
part_type_life(global.PartRocket, 7, 7);
global.PartBouncerG = part_type_create();
part_type_shape(global.PartBouncerG, pt_shape_disk);
part_type_size(global.PartBouncerG, .08, .08, -.001, .2);
part_type_color1(global.PartBouncerG, c_lime);
part_type_alpha1(global.PartBouncerG, .15);
part_type_blend(global.PartBouncerG, true);
part_type_life(global.PartBouncerG, 7, 7);
global.PartRocketG = part_type_create();
part_type_shape(global.PartRocketG, pt_shape_disk);
part_type_size(global.PartRocketG, .005, .044, .025, .2);
part_type_color1(global.PartRocketG, c_blue);
part_type_alpha1(global.PartRocketG, .15);
part_type_blend(global.PartRocketG, true);
part_type_life(global.PartRocketG, 7, 7);

global.PartBouncer_e = part_type_create();
part_type_shape(global.PartBouncer_e, pt_shape_disk);
part_type_size(global.PartBouncer_e, .014, .014, .006, .2);
part_type_color1(global.PartBouncer_e, c_lime);
part_type_alpha1(global.PartBouncer_e, .08);
part_type_blend(global.PartBouncer_e, true);
part_type_life(global.PartBouncer_e, 7, 7);
global.PartRocket_e = part_type_create();
part_type_shape(global.PartRocket_e, pt_shape_disk);
part_type_size(global.PartRocket_e, .016, .016, .006, .2);
part_type_color1(global.PartRocket_e, c_blue);
part_type_alpha1(global.PartRocket_e, .08);
part_type_blend(global.PartRocket_e, true);
part_type_life(global.PartRocket_e, 7, 7);

global.PartFlame = part_type_create();
part_type_direction(global.PartFlame, 0, 360, .5, 1);
part_type_speed(global.PartFlame, .03, .05, .001, .005);
part_type_shape(global.PartFlame, pt_shape_smoke);
part_type_size(global.PartFlame, 1.3, 1.4, -.4, .5);
part_type_color1(global.PartFlame, c_orange);
part_type_alpha1(global.PartFlame, .08);
part_type_blend(global.PartFlame, true);
part_type_life(global.PartFlame, 3, 3);
global.PartFlameHyper = part_type_create();
part_type_direction(global.PartFlameHyper, 0, 360, .5, 1);
part_type_speed(global.PartFlameHyper, .09, .11, .01, .01);
part_type_shape(global.PartFlameHyper, pt_shape_smoke);
part_type_size(global.PartFlameHyper, 2.1, 2.2, -.4, .5);
part_type_color1(global.PartFlameHyper, c_orange);
part_type_alpha1(global.PartFlameHyper, .08);
part_type_blend(global.PartFlameHyper, true);
part_type_life(global.PartFlameHyper, 4, 4);

global.PartCharged = part_type_create();
part_type_direction(global.PartCharged, 0, 360, 5, 2);
part_type_speed(global.PartCharged, 10, 11, .05, .01);
part_type_shape(global.PartCharged, pt_shape_ring);
part_type_size(global.PartCharged, 1, 1.1, -.2, .5);
part_type_color1(global.PartCharged, c_red);
part_type_alpha1(global.PartCharged, .1);
part_type_blend(global.PartCharged, true);
part_type_life(global.PartCharged, 4, 4);

global.PartHeal = part_type_create();
part_type_direction(global.PartHeal, 0, 360, 10, 3);
part_type_speed(global.PartHeal, 3.5, 4, .05, .01);
part_type_sprite(global.PartHeal, spr_heal_particles, true, true, false);
part_type_size(global.PartHeal, 1, 1, .02, .02);
part_type_color1(global.PartHeal, c_green);
part_type_alpha3(global.PartHeal, 1, .9, .3);
part_type_blend(global.PartHeal, true);
part_type_life(global.PartHeal, 25, 25);

global.PartFinal = part_type_create();
part_type_direction(global.PartFinal, 0, 360, 10, 3);
part_type_speed(global.PartFinal, 3.5, 4, .05, .01);
part_type_shape(global.PartFinal, pt_shape_ring);
part_type_size(global.PartFinal, .35, .4, .02, .02);
part_type_alpha3(global.PartFinal, .7, .6, .1);
part_type_blend(global.PartFinal, true);
part_type_life(global.PartFinal, 25, 25);

global.PartTele = part_type_create();
part_type_direction(global.PartTele, 0, 360, 10, 3);
part_type_speed(global.PartTele, 3.5, 4, .05, .01);
part_type_shape(global.PartTele, pt_shape_pixel);
part_type_size(global.PartTele, 2, 5, .02, .02);
part_type_alpha3(global.PartTele, .7, .6, .3);
part_type_blend(global.PartTele, true);
part_type_life(global.PartTele, 25, 25);