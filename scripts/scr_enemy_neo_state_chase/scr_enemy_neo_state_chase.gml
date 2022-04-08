// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_neo_state_chase(){
	sprite_index = spr_enemy_neo_running;
	var distance = distance_to_object(obj_player);
	if (distance > 270) {
		image_index = 0;
		state = scr_enemy_neo_state_idle;
	}
}