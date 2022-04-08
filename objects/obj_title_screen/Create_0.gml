/// @description Insert description here
// You can write your code in this editor
selected_option = 0;
menu_texts = ["New Game", "Credits", "Exit"];
menu_positions = [250, 300, 350];

if(file_exists("save_data.sav")) {
	menu_texts[0] = "Continue";
}

draw_menu = function () {
	for(var idx = 0; idx < array_length_1d(menu_texts); idx++) {
		var selected_color = c_white;
		var is_selected = idx == selected_option;
		if (is_selected) {
			selected_color = c_yellow;
		}
		var option_text = menu_texts[idx];
		var option_position = menu_positions[idx];
		draw_text_ext_transformed_color(display_get_gui_width() / 2, option_position, option_text, 0, 500, 3, 3, 0, selected_color, selected_color, selected_color, selected_color, 1);
	}
}

menu_open_game_action = function() {
	room_goto_next();
}

menu_open_credits_action = function() {
	instance_create_depth(0, 0, -9999, obj_credits);
}

menu_exit_action = function() {
	game_end();
}

menu_actions = [menu_open_game_action, menu_open_credits_action, menu_exit_action];
