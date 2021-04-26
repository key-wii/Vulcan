if (!debug) exit;
//DEBUG: heal damage
combo = true;
global.flameKills += 1;
flameHeals += 10;
var hp = 100 - damage;
if (hp + flameHeals > 100) flameHeals = 100 - hp;
with (controller) alarm_set(2, 209);