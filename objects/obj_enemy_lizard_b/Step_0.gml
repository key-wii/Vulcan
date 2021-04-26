direction -= 4 * owner.rotDir;

var rotatedX = cos(direction) * (x - other.x) - sin(direction) * (y - other.y) + other.x;
var rotatedY = sin(direction) * (x - other.x) + cos(direction) * (y - other.y) + other.y;

x = rotatedX;
y = rotatedY;