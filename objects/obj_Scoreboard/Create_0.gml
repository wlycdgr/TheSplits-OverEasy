/// @description Init

// TODO: implement non-Steam save/load for high score
current_high_score = 0;

points = 0;
target_points = 0;

scr_Splitsfont_Set_DefaultTweaks([0.01, 0.001, 0.05, 0, 0]);
for (var i = 0; i < 10; i++) {
	number_strings[i] = instance_create_layer(0, 0, "Splitsfont", obj_Splitsfont_String);
	scr_Splitsfont_Set_Text(number_strings[i], string(i));
}
scr_Splitsfont_Reset_DefaultTweaks();