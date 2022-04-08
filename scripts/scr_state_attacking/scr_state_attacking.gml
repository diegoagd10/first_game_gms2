// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_state_attacking() {
	if (attack_sensor == noone && image_index >= 7) {
		attack_sensor = instance_create_layer(x - 32, y, "Instances", obj_player_attacking_sensor);
	}
	sprite_index = spr_bat_man_attacking;
}