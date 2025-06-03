

if(keyboard_check(ord("A")))
{
    physics_apply_torque(-turn_force);
    
}

if(keyboard_check(ord("D")))
{
    physics_apply_torque(turn_force);
}

if (keyboard_check(ord("W")))
{
var	fx = lengthdir_x(155, -phy_rotation) * accel;
var fy = lengthdir_y(155, -phy_rotation) * accel;
physics_apply_force(x, y, fx, fy)
}