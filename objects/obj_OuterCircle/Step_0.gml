/// @description Insert description here

if (obj_Gameplay_Room_Controller.state != gs_playing) exit;

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
	mag_point * 5
);


radius -= 0.1;
radius += mag_point;