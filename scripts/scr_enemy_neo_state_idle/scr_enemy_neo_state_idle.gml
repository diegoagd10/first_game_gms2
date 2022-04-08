// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_neo_state_idle(){
	var distance = distance_to_object(obj_player);
	if (distance >= 150) {
		var dir = point_direction(x, y, obj_player.x, obj_player.y);
		x = x + lengthdir_x(2, dir);
		y = y + lengthdir_y(2, dir);
		dir_x = sign(lengthdir_x(2, dir));
		image_xscale = dir_x;
		sprite_index = spr_enemy_neo_running;
		return;
	}
	sprite_index = spr_enemy_neo_idle;
	if (alarm[0] <= 0) {
		alarm[0] = room_speed * 2;
	}
}