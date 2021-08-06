instance_destroy(wheels);
expl = instance_create_layer(x, y, "Enemy", obj_explosion_emitter_miniboss3);
expl.direction = direction + 180;

global.midbossBeaten = true;
global.boss_just_killed = true;
with (obj_spawner) alarm_set(3, 600);

with (obj_music_controller) alarm_set(4, 50);

event_inherited();