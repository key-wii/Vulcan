if (makeMore == 0) exit;
expl = instance_create_layer(x, y, "Enemy", obj_explosion_emitter_final);
expl.makeMore = makeMore - 1;
if (makeMore mod 2 == 0) expl.ddir = ddir * -1;
if (makeMore == 1) expl.inverse = true;
if (makeMore == 4) expl.inverse = true;
if (makeMore == 5) expl.inverse = true;
if (makeMore == 8) expl.inverse = true;