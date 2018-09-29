/// @description Insert description here
// You can write your code in this editor
radius_decrement_period = 60;

radius = 250;
left_x = x - radius;
top_y = y - radius;
right_x = x + radius;
bottom_y = y + radius;

for (var i = left_x; i < right_x; i += 4){
	for (var j = top_y; j < bottom_y; j += 4){
		point_alphas[i, j] = 0.2;
		point_in_pan[i, j] = point_distance(x, y, i, j) < radius;
	}
}