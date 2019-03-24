/// @description Incr frames, handle reaching of score thresholds
if (gs_playing == global.game.state) {
	if (target_points > points) {
		points += (target_points - points) / 10;
	}
	
	target_points += 0.0001 * obj_OverEasy_Playpan.point_alphas_total;
	
	if (points > current_high_score){
		current_high_score = points;
		highscore_add("Bananas Foster", points);
	}
}
