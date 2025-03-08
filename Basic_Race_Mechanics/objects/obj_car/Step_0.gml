if(keyboard_check(ord("A")))
{
	phy_rotation -= 5
}

if(keyboard_check(ord("D")))
{
	phy_rotation += 5
}

if (keyboard_check(ord("W")))
{
var	fx = lengthdir_x(155, -phy_rotation) * accel;
var fy = lengthdir_y(155, -phy_rotation) * accel;
physics_apply_force(x, y, fx, fy)
}

