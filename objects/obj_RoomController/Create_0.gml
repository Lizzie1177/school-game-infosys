/// @description Insert description here
// You can write your code in this editor
roomId = [roomFloor,roomNumber];

if (ds_grid_get(GameManager.clearGrid, roomId[0], roomId[1]) = 1)
{
	show_debug_message("ROOM CLEARED")
}
else
{
	instance_create_layer(x,y,"Enemies", obj_MeleeEnemy);
}