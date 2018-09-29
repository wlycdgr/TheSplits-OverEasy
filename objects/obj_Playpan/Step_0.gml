/// @description Insert description here
if (obj_Gameplay_Room_Controller.state != gs_playing) exit;

for (var i = left_x; i < right_x; i += dot_spacing){
	for (var j = top_y; j < bottom_y; j += dot_spacing){
		if (point_distance(obj_InnerCircle.x, obj_InnerCircle.y, i, j) < obj_InnerCircle.radius){
			point_alphas[i, j] += 0.02 + ((1 / (obj_OuterCircle.radius / radius)) * 0.1);
		}
		
		point_alphas[i, j] -= 0.01;
	}
}