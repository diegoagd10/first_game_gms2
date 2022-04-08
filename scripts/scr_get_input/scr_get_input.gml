// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_input(){
	// Keyboard Input
	right = keyboard_check(ord("D")) || gamepad_button_check(0, gp_padr);
	left = keyboard_check(ord("A")) || gamepad_button_check(0, gp_padl);
	up = keyboard_check(ord("W")) || gamepad_button_check(0, gp_padu);
	down = keyboard_check(ord("S")) || gamepad_button_check(0, gp_padd);
	attack = keyboard_check(ord("J")) || gamepad_button_check(0, gp_face3);
	
	up_tap = keyboard_check_released(ord("W")) || gamepad_button_check_pressed(0, gp_padu);
	down_tap = keyboard_check_released(ord("S")) || gamepad_button_check_pressed(0, gp_padd);
	pause = keyboard_check_released(vk_escape) || gamepad_button_check_pressed(0, gp_start);
}
