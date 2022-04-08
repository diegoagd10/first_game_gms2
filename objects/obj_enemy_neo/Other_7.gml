/// @description Insert description here
// You can write your code in this editor
if (state == scr_enemy_neo_state_attacking) {
	var bullet = instance_create_layer(x + lengthdir_x(15, dir_x), y, "Instances", obj_enemy_neo_bullet);
	bullet.dir = point_direction(x, y, obj_player.x, obj_player.y);
	state = scr_enemy_neo_state_idle;
}
