/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);

draw_circle(x, y, radius, true);

for (var i = left_x; i < right_x; i+= dot_spacing){
	for (var j = top_y; j < bottom_y; j+=dot_spacing){
		if (point_in_pan[i, j]){
			draw_set_alpha(point_alphas[i, j]);
			draw_point(i, j);
		}
	}
}

draw_set_alpha(0.8);