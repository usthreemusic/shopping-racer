move_speed = phy_speed;
	
if(keyboard_check(ord("A")))//turn left
{
    physics_apply_torque(-turn_force);
    
}

if(keyboard_check(ord("D"))) //turn right
{
    physics_apply_torque(turn_force);
}

if (keyboard_check(ord("W")))// accelerate in forwards dir
{
	var	fx = lengthdir_x(155, -phy_rotation) * move_accel;
	var fy = lengthdir_y(155, -phy_rotation) * move_accel;

	
	if move_speed < move_speed_max // apply upper limit to speed of movement (accel will stop once it is reached)
	{
		physics_apply_force(x, y, fx, fy);
	}
}
//Drift trail mechanics
if (move_speed > 4)
{//get direction of movement in x and y direction
	move_x = phy_speed_x;
	move_y = phy_speed_y;
	dir_facing = phy_rotation;
	move_angle = point_direction(x, y, move_x, move_y)
	var diff_angle = angle_difference(dir_facing, move_angle);
	var turn_angle = abs(diff_angle);
	if turn_angle > drift_angle and keyboard_check(vk_shift) //handbrake function which also triggers tyre trails
	{
		drift_check = true;
		phy_linear_damping = 1;
		alarm[1] = 1;
	} 
	if drift_check = true // create tyre trail instances
	{
		instance_create_layer(x,y,"Instances",obj_tyre_trail);
		alarm[0] = 1;// sets drift_check back to false after elapsed time so that tyre trails stop
	}
}
	
