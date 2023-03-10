/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(obj_Enemy))
{
	roomCleared = true;
}
else 
{
	roomCleared = false;
	ds_grid_set(GameManager.clearGrid,roomId[0],roomId[1],1);
}

if (roomCleared)
{
	if (nDoor != noone) nDoor.locked = false;
	if (sDoor != noone) sDoor.locked = false;
	if (eDoor != noone) eDoor.locked = false;
	if (wDoor != noone) wDoor.locked = false;
}

