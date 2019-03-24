/// @description Insert description here
if (obj_OverEasy_Gameplay_Room_Controller.state != gs_playing) exit;

point_alphas_total = 0;

for (var i = left_x; i < right_x; i += dot_spacing){
	for (var j = top_y; j < bottom_y; j += dot_spacing){
		if (!point_in_pan[i, j]) continue;
		
		if (point_distance(obj_OverEasy_InnerCircle.x, obj_OverEasy_InnerCircle.y, i, j) < obj_OverEasy_InnerCircle.radius){
			point_alphas[i, j] += 0.02 + ((1 / (obj_OverEasy_OuterCircle.radius / radius)) * 0.1);
		}
		
		point_alphas[i, j] = max(0, point_alphas[i, j] - 0.01);
		
		point_alphas_total += point_alphas[i, j];
	}
}