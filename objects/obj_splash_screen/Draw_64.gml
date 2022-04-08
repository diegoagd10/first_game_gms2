/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_bat_man_attacking, 6, (display_get_width() / 2) - 250, (display_get_height() / 2) - 50, 4, 4, 0, c_white, 1);
draw_text_ext_transformed_color((display_get_width() / 2) - 100, (display_get_height() / 2) - 50, "AZOTE", 0, 100, 8, 8, 0, c_red, c_red, c_red, c_red, 1);
draw_text_ext_transformed_color((display_get_width() / 2), (display_get_height() / 2) + 70, "studios", 0, 100, 4, 4, 0, c_white, c_white, c_white, c_white, 1);

if (fade_out) {
	draw_set_alpha(current_alpha);
	draw_rectangle_color(0, 0, display_get_gui_width(), display_get_gui_height(), c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
	current_alpha += 0.05;
	if (current_alpha >= 1) {
		room_goto_next();
	}
}
