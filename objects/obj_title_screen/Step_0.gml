/// @description Insert description here
// You can write your code in this editor
scr_get_input();
var dir = down_tap - up_tap;
var is_first_option = selected_option == 0;
if (is_first_option) {
	selected_option = array_length_1d(menu_texts);
}
selected_option = (selected_option + dir) % array_length_1d(menu_texts);
if (pause) {
	menu_actions[selected_option]();
}
