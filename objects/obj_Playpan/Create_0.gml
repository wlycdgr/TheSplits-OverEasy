/// @description Insert description here
// You can write your code in this editor
radius_decrement_period = 60;

radius = 250;
left_x = x - radius;
top_y = y - radius;
right_x = x + radius;
bottom_y = y + radius;

dot_spacing = 12;

for (var i = left_x; i < right_x; i += dot_spacing){
	for (var j = top_y; j < bottom_y; j += dot_spacing){
		point_alphas[i, j] = 0.2;
		point_in_pan[i, j] = point_distance(x, y, i, j) < radius;
	}
}