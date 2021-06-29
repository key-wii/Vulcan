if (area == 9) exit;
if (pause > 0) { pause--; exit; }
if (up)
	yyy++;
else
	yyy--;
if (yyy >= maxWiggle) { up = false; pause = 30; }
if (yyy <= 0) { up = true; pause = 30; }