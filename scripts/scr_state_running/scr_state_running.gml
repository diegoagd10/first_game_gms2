// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_state_running(){
	if (attack) {
		image_index = 0;
		state = scr_state_attacking;
		return;
	}
	if (right) {
		x += spd;
		h_dir = 1;
	}
	if (left) {
		x -= spd;
		h_dir = -1;
	}
	if (up) {
		y -= spd;
	}
	if (down) {
		y += spd;
	}
	image_xscale = h_dir;
	sprite_index = spr_bat_man_running;
	if (!right && !left && !up && !down) {
		state = scr_state_idle;
	}
}