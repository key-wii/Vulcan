if (count == 0) exit;
if (dirCheck) {
	if (diradjust > -10) diradjust--;
	else dirCheck = false;
} else {
	if (diradjust < 10) diradjust++;
	else dirCheck = true;
}