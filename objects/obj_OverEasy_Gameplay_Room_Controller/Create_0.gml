/// @description Init
global.input_tracker = instance_create_layer(0, 0, "Controllers", obj_Input_Tracker);
global.scoreboard = instance_create_layer(0, 0, "Controllers", obj_Scoreboard);

game_over_sliding_ribbon = instance_create_layer(
	window_width, sliding_ribbon_y, "SlidingRibbons", obj_Game_Over_Menu_Sliding_Ribbon
);

paused_sliding_ribbon = instance_create_layer(
	window_width, sliding_ribbon_y, "SlidingRibbons", obj_Paused_Sliding_Ribbon
);

// So we can pause the game if the Steam overlay
// has just been deactivated
steam_overlay_activated_this_step = false;
steam_overlay_activated_last_step = false;

// GAME SPECIFIC LOGIC
player = instance_create_layer(whatever, whatever, "Controllers", obj_OverEasy_Player);
playpan = instance_create_layer(room_center_x, room_center_y, "Playpan", obj_OverEasy_Playpan);

counter = 0;