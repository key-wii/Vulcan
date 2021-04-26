hitCount = 0;
sprite_index = ssprite;

var xi = lengthdir_x(30, direction + 180);
var yi = lengthdir_y(30, direction + 180);
var xxx = lengthdir_x(900, direction + 35);
var yyy = lengthdir_y(900, direction + 35);
var enemy = collision_line(x + xi, yi, x + xxx, y + yyy, owner, true, true);
if (enemy == noone) {
	xxx = lengthdir_x(900, direction - 35);
	yyy = lengthdir_y(900, direction - 35);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, owner, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(900, direction + 25);
	yyy = lengthdir_y(900, direction + 25);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, owner, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(900, direction - 25);
	yyy = lengthdir_y(900, direction - 25);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, owner, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(900, direction + 15);
	yyy = lengthdir_y(900, direction + 15);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, owner, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(900, direction - 15);
	yyy = lengthdir_y(900, direction - 15);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, owner, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(900, direction + 0);
	yyy = lengthdir_y(900, direction + 0);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, owner, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(700, direction + 0);
	yyy = lengthdir_y(700, direction + 0);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, obj_enemy_parent, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(700, direction + 15);
	yyy = lengthdir_y(700, direction + 15);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, obj_enemy_parent, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(700, direction - 15);
	yyy = lengthdir_y(700, direction - 15);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, obj_enemy_parent, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(700, direction + 25);
	yyy = lengthdir_y(700, direction + 25);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, obj_enemy_parent, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(700, direction - 25);
	yyy = lengthdir_y(700, direction - 25);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, obj_enemy_parent, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(700, direction + 35);
	yyy = lengthdir_y(700, direction + 35);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, obj_enemy_parent, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(700, direction - 35);
	yyy = lengthdir_y(700, direction - 35);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, obj_enemy_parent, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(700, direction + 45);
	yyy = lengthdir_y(700, direction + 45);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, obj_enemy_parent, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(700, direction - 45);
	yyy = lengthdir_y(700, direction - 45);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, obj_enemy_parent, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(700, direction + 55);
	yyy = lengthdir_y(700, direction + 55);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, obj_enemy_parent, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(700, direction - 55);
	yyy = lengthdir_y(700, direction - 55);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, obj_enemy_parent, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(700, direction + 65);
	yyy = lengthdir_y(700, direction + 65);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, obj_enemy_parent, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(700, direction - 65);
	yyy = lengthdir_y(700, direction - 65);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, obj_enemy_parent, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(700, direction + 75);
	yyy = lengthdir_y(700, direction + 75);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, obj_enemy_parent, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(700, direction - 75);
	yyy = lengthdir_y(700, direction - 75);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, obj_enemy_parent, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(700, direction + 85);
	yyy = lengthdir_y(700, direction + 85);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, obj_enemy_parent, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(700, direction - 85);
	yyy = lengthdir_y(700, direction - 85);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, obj_enemy_parent, true, true);
}
/*if (enemy == noone) {
	xxx = lengthdir_x(700, direction + 95);
	yyy = lengthdir_y(700, direction + 95);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, obj_enemy_parent, true, true);
}
if (enemy == noone) {
	xxx = lengthdir_x(700, direction - 95);
	yyy = lengthdir_y(700, direction - 95);
	enemy = collision_line(x + xi, y + yi, x + xxx, y + yyy, obj_enemy_parent, true, true);
}*/
if (enemy != noone) {
	direction = point_direction(x, y, enemy.x, enemy.y);
	image_angle = direction;
}