/// @description Insert description here
// You can write your code in this editor
scr_get_input();
if (selected_option == 0) {
	if (up_tap || down_tap) {
		selected_option = 1;
	}
	if (pause) {
		instance_destroy();
	}
} else if (selected_option == 1) {
	if (up_tap || down_tap) {
		selected_option = 0;
	}
	if (pause) {
		game_restart();
	}
}
