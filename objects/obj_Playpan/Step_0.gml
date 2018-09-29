/// @description Insert description here
if (obj_Gameplay_Room_Controller.state != gs_playing) exit;

for (var i = left_x; i < right_x; i += dot_spacing){
	for (var j = top_y; j < bottom_y; j += dot_spacing){
		if (point_distance(obj_OuterCircle.x, obj_OuterCircle.y, i, j) < obj_OuterCircle.radius){
			point_alphas[i, j] += 0.05;
		}
		point_alphas[i, j] -= 0.02;

	}
}
//radius -= 0.01