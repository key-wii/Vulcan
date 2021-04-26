if (!debug) exit;
//DEBUG: take damage
var pow = 10;
var negaDmg = damage - 100 - flameHeals;
damage += pow;
//if (negaDmg < 100) damage += pow;
negaDmg = damage - 100 - flameHeals;
//if (negaDmg > 100.01) damage -= negaDmg - 100;wwww