/// @description Insert description here

if (obj_Gameplay_Room_Controller.state != gs_playing){
	speed = 0;
	exit;
}

// radius change change
radius_change_increase_counter += 1;
if (radius_change_increase_counter > radius_change_increase_period){
	radius_change_increase_counter = 0;
	
	radius_change = min(
		radius_max_change, 
		radius_change + radius_change_increase_step
	);
}


// movement
xv = gamepad_axis_value(0, gp_axislh);
yv = gamepad_axis_value(0, gp_axislv);

if (xv == 0){
	xv = 0.01;
}

angle = point_direction(0, 0, xv, yv);
mag_point = point_distance(0, 0, xv, yv);

if (mag_point > 1){
	mag_point = 1;
}

move_towards_point(
	x + xv*100,
	y + yv*100,
	mag_point * wly_speed
);


// radius adjustment
radius -= radius_change;
radius += mag_point;