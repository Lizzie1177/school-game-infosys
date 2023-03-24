/// @description Insert description here
// You can write your code in this editor
roomId = [roomFloor,roomNumber];

if (ds_grid_get(GameManager.clearGrid, roomId[0], roomId[1]) != 0)
{
	instance_destroy(par_Enemy);
}
