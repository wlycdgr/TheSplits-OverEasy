/// @description On restart
var ribbon = game_over_sliding_ribbon;
if (state == gs_paused) {
	ribbon = paused_sliding_ribbon;
}
with (ribbon) { event_user(2); } // on begin sliding out

state = gs_restarting;