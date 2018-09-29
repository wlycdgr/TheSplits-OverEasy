/// @description Set input flags
// You can write your code in this editor
is_exit_pressed = keyboard_check_pressed(vk_escape);

is_pause_pressed = keyboard_check_pressed(vk_space);
var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;){
	if (!gamepad_is_connected(i)) continue;
	
	if (
		gamepad_button_check_pressed(i, gp_select) ||
		gamepad_button_check_pressed(i, gp_start) 
	){
		is_pause_pressed = true;
	}
}